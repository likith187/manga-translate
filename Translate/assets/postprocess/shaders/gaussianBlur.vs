#version 300 es
precision highp float;

layout(location=0) in vec4 a_position;
layout(location=1) in vec2 a_texCoord;
uniform mat4 u_model;
out vec2 v_texCoord;

void main() {
    gl_Position = u_model * a_position;
    v_texCoord = a_texCoord;
}