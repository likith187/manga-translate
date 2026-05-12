#version 320 es 
precision highp float;
layout (location = 0) in vec2 v_position;
layout (location = 1) in float v_life;

uniform vec2 u_surface;
uniform float u_size;
uniform float u_count;

out vec2 alphaLife;

void main() {
   vec2 pos = v_position/u_surface *2.0 - 1.0;
   gl_Position = vec4(pos.x, - pos.y, 0.0, 1.0);
   // gl_PointSize = u_size*u_surface.x;

   gl_PointSize = u_size;

   // alphaLife = v_life;
}