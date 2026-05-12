#version 320 es
precision highp float;
layout(location = 0) out vec4 outColor;

uniform vec4 u_color;
uniform float u_alpha;

in vec2 alphaLife; 

void main() {
    if(distance(gl_PointCoord, vec2(0.5, 0.5))>0.5) {
        discard;
    }
    outColor = u_color;
    outColor.rgb *= outColor.a;
}
