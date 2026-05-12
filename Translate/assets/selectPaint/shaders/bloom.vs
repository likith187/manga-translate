#version 320 es
precision highp float;
layout (location = 0) in vec2 v_pos;

uniform vec2 u_scale_b;
uniform vec2 u_trans_b;

out vec2 uv;
void main()
{
    // uv = v_uv;
    vec2 pos =  v_pos*u_scale_b + u_trans_b;
    uv = (pos+1.0)*0.5;
    gl_Position = vec4(pos, 0.0, 1.0);
}