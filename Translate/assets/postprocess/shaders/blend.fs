#version 320 es
precision highp float;

layout(location = 0) out vec4 fragColor;
uniform sampler2D u_srcTex;
uniform sampler2D u_srcTex1;
uniform float blendFactor;
uniform vec4 gradientMaskX;
uniform vec4 gradientMaskY;
in vec2 uv;

float calculateAxisStrength(float coord, float c0, float c1, float c2, float c3) {
    // 分段计算强度（使用smoothstep平滑过渡）
    float strength = 0.0;

    // 区域1：c0到c1，强度从0到1
    float rampUp = smoothstep(c0, c1, coord);
    strength += rampUp * step(c0, coord) * (1.0 - step(c1, coord));

    // 区域2：c1到c2，强度保持1
    strength += step(c1, coord) * (1.0 - step(c2, coord));

    // 区域3：c2到c3，强度从1到0
    float rampDown = 1.0 - smoothstep(c2, c3, coord);
    strength += rampDown * step(c2, coord) * (1.0 - step(c3, coord));

    return strength;
}

void main() {
    vec2 v_uv = uv;
    // 计算X/Y轴强度
    float xStrength = calculateAxisStrength(v_uv.x, gradientMaskX.x, gradientMaskX.y, gradientMaskX.z, gradientMaskX.w);
    float yStrength = calculateAxisStrength(v_uv.y, gradientMaskY.x, gradientMaskY.y, gradientMaskY.z, gradientMaskY.w);
    float mask = xStrength * yStrength;
    vec4 src = texture(u_srcTex, v_uv);
    vec4 src1 = texture(u_srcTex1, v_uv);
    fragColor = mix(src, src1, blendFactor * mask);
}