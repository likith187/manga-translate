#version 320 es
precision highp float;

layout(location = 0) out vec4 fragColor;

uniform sampler2D u_mainTex;
in vec2 uv;
void main() {
    fragColor = vec4(1.0, 1.0, 1.0, 1.0);
    //fragColor = texture(u_mainTex, uv);
}