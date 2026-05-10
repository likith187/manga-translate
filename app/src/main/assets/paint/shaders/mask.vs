layout (location = 0) in vec2 v_Pos;
out vec2 uv;
void main()
{
    uv = (v_Pos + 1.0) * 0.5;
    uv.y = 1.0 - uv.y;
    gl_Position = vec4(v_Pos, 0.0, 1.0);
}