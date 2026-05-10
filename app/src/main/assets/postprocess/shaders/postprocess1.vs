#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

layout(location = 0) out vec2 v_texCoord;

uniform mat4 u_model;
uniform mat4 u_view;
uniform mat4 u_projection;
void main() {
    v_texCoord = a_texCoord;
    gl_Position = u_model * a_position;
}