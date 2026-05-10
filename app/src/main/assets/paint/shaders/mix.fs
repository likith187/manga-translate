#version 320 es
precision highp float;
in vec2 uv;
out vec4 outColor;
uniform sampler2D s_color;
uniform sampler2D s_blur;
uniform float u_alpha;
void main()
{
    vec4 srcColor = texture(s_color, uv);
    if(srcColor.a > 0.0)
    {
        outColor = srcColor;
    } else
    {
        outColor = texture(s_blur, uv);
    }
}