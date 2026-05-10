#version 320 es
precision highp float;
layout(location = 0) in vec2 v_texCoord;
layout(location = 0) out vec4 fragColor;
uniform float u_time;
uniform sampler2D u_texture;

void main() {
    vec4 pass0Color = texture(u_texture, v_texCoord);
    fragColor = vec4(1.0, 0.0, 0.0, 0.5);
}