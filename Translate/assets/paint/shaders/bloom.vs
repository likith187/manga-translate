#version 320 es
precision highp float;
layout (location = 0) in vec2 v_pos;
layout (location = 1) in vec2 v_uv;
out vec2 uv;
void main()
{
    uv = v_uv;
    gl_Position = vec4(v_pos, 0.0, 1.0);
}