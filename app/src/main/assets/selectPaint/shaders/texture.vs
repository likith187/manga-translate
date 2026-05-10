#version 320 es
precision highp float;
layout (location = 0) in vec2 v_pos;
layout (location = 1) in vec2 v_uv;

uniform vec2 u_scale_t;
uniform vec2 u_trans_t;
uniform float u_contoll_t;
out vec2 uv;

void main()
{
    uv = v_uv;
    vec2 pos =  v_pos*u_scale_t*u_contoll_t + u_trans_t;
    gl_Position = vec4(pos, 0.0, 1.0);

}