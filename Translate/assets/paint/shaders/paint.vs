#version 320 es 
precision highp float;
layout (location = 0) in vec2 v_position;
layout (location = 1) in float v_life;
uniform vec2 u_surface;
uniform vec2 u_screenSize; //check
uniform vec4 u_transform; 
uniform vec3 u_colorVector; //onloop x: cos, y: sin, z: progress; onstroke: 1.0, 0.0, 0.0
uniform vec2 u_center;
uniform vec2 u_scale;
uniform float u_size;
uniform float u_count;
out vec2 colorTrans; // onstroke 固定值 1.0 0.0 0.0 //onloop x: 生命周期
out vec2 alpha;
out float life;
float getPointSizeScale(int index) {
   return 0.5 + 0.5 * float(index)/u_count;
}
void main() {
    vec2 t_position = (1.0f - u_transform.z) * v_position + u_transform.z * (v_position * u_transform.w + u_transform.xy);
    vec2 t_center = (1.0f - u_transform.z) * u_center + u_transform.z * (u_center * u_transform.w + u_transform.xy);
    vec2 move = (t_position - t_center) / u_screenSize;
    vec2 dir = vec2(move.x, -move.y);
    move *= u_scale.x;
    colorTrans.x = u_colorVector.z; // onloop  progress
    colorTrans.y = (dot(normalize(vec3(dir, 0.0f)).xy, u_colorVector.xy) + 1.0f) * 0.5f;
    vec2 position = t_center / u_screenSize + move;
    position.y = 1.0f - position.y;
    position = position * 2.0f - 1.0f;
    alpha = vec2(u_scale.y, 0.90 + 0.10 * min(1.0, v_life * 2.0)); //v_life 点生命周期，越靠近触点的越接近1
    life = v_life;
    gl_Position = vec4(position,0.0f, 1.0);
    float surfaceW = min(u_surface.x, u_surface.y);
    gl_PointSize = u_size * u_scale.x * surfaceW;
    if(u_transform.z < 1.0) {
       gl_PointSize *= (1.0 - v_life + v_life * getPointSizeScale(gl_InstanceID));
    }
    
}