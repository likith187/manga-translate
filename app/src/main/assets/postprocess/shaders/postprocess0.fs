#version 320 es
precision highp float;
layout(location = 0) out vec4 fragColor;
uniform float u_time;

void main() {
    fragColor = vec4(abs(cos(u_time * 0.5)), 0.0, 0.0, 0.5);
}