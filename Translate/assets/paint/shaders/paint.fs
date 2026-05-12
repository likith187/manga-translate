#version 320 es
precision highp float;
layout(location = 0) out vec4 outColor;
uniform vec3 u_colorA;
uniform vec3 u_colorB;
uniform vec3 u_startColor;
uniform vec3 u_endColor;
in vec2 colorTrans; // x progress 0-1 ; y angle-related
in vec2 alpha; // x: 1.0  y: 1.0 - 0.65 (随生命周期)
in float life;
void main() {
    vec4 color = vec4(u_startColor * life + u_endColor * (1.0f - life), alpha.y);
    color = vec4(color.xyz * (1.0 - colorTrans.x) + colorTrans.x * u_colorA, alpha.y);
    if(distance(gl_PointCoord, vec2(0.5, 0.5))>0.5) {
        discard;
    }
    else {
        color.rgb *= color.a;
        outColor = color;
    }
}
