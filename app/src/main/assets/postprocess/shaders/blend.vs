#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

out vec2 uv;
void main() {
    uv = a_texCoord;
    gl_Position =  a_position;
}