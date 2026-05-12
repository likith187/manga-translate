#version 320 es
precision highp float;
layout(location = 0) in vec4 a_position;
layout(location = 1) in vec2 a_texCoord;

layout (std140) uniform mvps {
    mat4 u_model[8];
    mat4 u_view[8];
    mat4 u_projection[8];
};

layout (std140) uniform batchCutLayerProps {
    vec4 region[8]; // left, bottom, right, top
};
//uniform vec2 u_resolution; // 目标RT 分辨率

out vec2 uv;

vec2 transformFromViewToRegion(vec2 pt, vec2 scale, vec2 translate)
{
    return vec2(pt.x * scale.x + translate.x, pt.y * scale.y + translate.y);
}

void main() {
    vec4 pt = u_model[gl_InstanceID] * a_position;
    uv = (pt.xy + 1.0) / 2.0; // 获取采样坐标
    vec2 regionSize = vec2(region[gl_InstanceID].zw - region[gl_InstanceID].xy);
    vec2 scale = regionSize;
    vec2 translate = region[gl_InstanceID].xy;
    vec2 viewPt = (a_position.xy + 1.0) / 2.0;
    viewPt = transformFromViewToRegion(viewPt, scale, translate);
    viewPt = viewPt * 2.0 - 1.0;
    gl_Position = vec4(viewPt, 0.0, 1.0); // 对原始坐标进行坐标映射，映射到大纹理分块
}