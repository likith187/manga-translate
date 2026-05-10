#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

uniform mat4 u_model;
uniform mat4 u_view;
uniform mat4 u_projection;

out vec2 uv;
void main() {
    vec4 pt = u_model * a_position;
    uv = (pt.xy + 1.0) / 2.0;
    gl_Position = a_position;
}