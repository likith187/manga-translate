#version 320 es
precision highp float;
layout (location = 0) in vec2 v_Pos;
out vec2 uv;
void main()
{
    uv = (v_Pos + 1.0) * 0.5;
    gl_Position = vec4(v_Pos, 0.0, 1.0);
}