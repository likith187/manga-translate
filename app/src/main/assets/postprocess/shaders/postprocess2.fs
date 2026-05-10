#version 320 es
precision highp float;
layout(location = 0) in vec2 v_texCoord;
layout(location = 0) out vec4 fragColor;
uniform float u_time;

void main() {
    fragColor = vec4(1.0, 0.0, 0.0, 1.0);
}