#version 300 es
precision highp float;

uniform sampler2D u_srcTex;
uniform vec2 u_blurRadio;
uniform vec2 u_resolution;

in vec2 v_texCoord;
out vec4 outColor;

void main() {
    vec2 texelSize = u_blurRadio / u_resolution;
    vec4 sum = vec4(0.0);

    // 3x3 高斯核
    float kernel[9] = float[](
        1.0 / 16.0, 2.0 / 16.0, 1.0 / 16.0,
        2.0 / 16.0, 4.0 / 16.0, 2.0 / 16.0,
        1.0 / 16.0, 2.0 / 16.0, 1.0 / 16.0
    );

    int index = 0;
    for (int x = -1; x <= 1; x++) {
        for (int y = -1; y <= 1; y++) {
            vec2 offset = vec2(float(x), float(y)) * texelSize;
            sum += texture(u_srcTex, v_texCoord + offset) * kernel[index];
            index++;
        }
    }

    outColor = sum;
}