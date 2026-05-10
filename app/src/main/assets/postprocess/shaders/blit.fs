#version 320 es
precision highp float;

layout(location = 0) out vec4 fragColor;
uniform sampler2D u_srcTex;
uniform vec2 u_resolution;

in vec2 uv;

void main() {
    fragColor = texture(u_srcTex, uv);

}