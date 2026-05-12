#version 320 es
precision highp float;

uniform sampler2D s_src;
uniform int uBlurRadius;  // 最大模糊半径
uniform vec2 uBlurOffset;   // 采样步长 
uniform vec2 u_resolution;

in vec2 uv;
out vec4 outColor;

const float PI = 3.1415926;

float uBlurGetWeight(int i, int radius) {
    float sigma = float(radius) / 3.0;
    float value = (1.0 / sqrt(2.0 * PI * sigma * sigma)) * exp(float(-i * i) / (2.0 * sigma * sigma + 0.00000001));
    return clamp(value, 0.0, 1.0);
}

void main()
{

    vec4 baseColor =  texture(s_src, uv);
    int radius = uBlurRadius;
    if(radius <= 1) {
        outColor = baseColor;
        return;
    }

    vec4 finalColor = vec4(0.0);
    vec2 offset = vec2(0.0);
    float totalWeight = 0.0;

    // 中心像素
    float weight = uBlurGetWeight(0, radius);
    finalColor += baseColor * weight;
    totalWeight += weight;

    // 模糊采样
    for(int i = 1; i <= uBlurRadius; ++i) {
     
        weight = uBlurGetWeight(i, radius);
        offset = uBlurOffset * float(i) / u_resolution;

        finalColor += texture(s_src, uv - offset) * weight;
        finalColor += texture(s_src, uv + offset) * weight;
        totalWeight += 2.0 * weight;
    }

    outColor = finalColor;
    return;
}