#version 320 es
precision highp float;
in vec2 uv;
out vec4 outColor;
uniform sampler2D s_color_t;

void main()
{
    outColor = texture(s_color_t, uv);
    // outColor = vec4(uv.x,uv.y,0.0,1.0);
}