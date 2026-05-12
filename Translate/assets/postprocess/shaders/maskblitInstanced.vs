#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

layout (std140) uniform mvps {
    mat4 u_model[8];
    mat4 u_view[8];
    mat4 u_projection[8];
};
out vec2 uv;
void main() {
    vec4 pt = u_model[gl_InstanceID] * a_position;
    uv = (pt.xy + 1.0) * 0.5;
    gl_Position = pt;
}