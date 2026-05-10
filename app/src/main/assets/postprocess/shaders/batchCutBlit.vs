#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

layout (std140) uniform mvps {
    mat4 u_model[8];
    mat4 u_view[8];
    mat4 u_projection[8];
};

layout (std140) uniform batchCutBlitProps {
    vec4 region[8]; // left, bottom, right, top
};

out vec2 uv;

vec2 transformFromViewToRegion(vec2 pt, vec2 scale, vec2 translate)
{
    return vec2(pt.x * scale.x + translate.x, pt.y * scale.y + translate.y);
}

void main() {
    vec2 scale = vec2(region[gl_InstanceID].zw - region[gl_InstanceID].xy);
    vec2 translate = region[gl_InstanceID].xy;
    uv = transformFromViewToRegion(a_texCoord, scale, translate);
    gl_Position = u_model[gl_InstanceID] * a_position;
}