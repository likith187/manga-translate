#version 320 es
precision highp float;
layout(location = 0) in vec2 v_texCoord;
layout(location = 0) out vec4 fragColor;
uniform float u_time;
uniform vec2 u_vec2Test;
uniform sampler2D u_texture;
uniform sampler2D u_texTest;

void main() {
    vec4 pass0Color = texture(u_texture, v_texCoord);
    vec4 texColor = texture(u_texTest, v_texCoord);
    //fragColor = mix(pass0Color, vec4(0.0, 1.0, 0.0, 1.0), 0.5);
    fragColor = vec4(texColor.rgb, 0.5);
}