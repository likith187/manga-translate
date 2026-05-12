#version 320 es
precision highp float;
in vec2 uv;
out vec4 outColor;
uniform sampler2D s_color_m;
uniform sampler2D s_blur_m;
uniform float u_alpha_m;

void main()
{
    vec4 color = texture(s_color_m, uv);
    vec4 blur = texture(s_blur_m, uv);
    outColor = mix(blur,color,color.a);
    outColor *= u_alpha_m;

    // outColor = vec4(u_alpha_m);

}