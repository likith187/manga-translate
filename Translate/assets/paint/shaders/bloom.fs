#version 320 es
precision highp float;
in vec2 uv;
out vec4 outColor;
uniform sampler2D s_src;
uniform bool u_horizontal;
float weight[5] = float[] (0.227027, 0.1945946, 0.1216216, 0.054054, 0.016216);
void main()
{
    vec2 tex_offset = 3.0 / vec2(textureSize(s_src, 0));
    float alpha = texture(s_src, uv).a * weight[0];
    if(u_horizontal)
    {
        float left = 0.0f;
        float right = 0.0f;
        for(int i = 4; i > 0; --i)
        {
            right = texture(s_src, uv + vec2(tex_offset.x * float(i), 0.0)).a;
            left = texture(s_src, uv - vec2(tex_offset.x * float(i), 0.0)).a;
            if (left > 0.0 || right > 0.0)
            {
                alpha += (left + right) * weight[i];
            } else {
                break;
            }
        }
    }
    else
    {
        float top = 0.0f;
        float bottom = 0.0f;
        for(int i = 4; i > 0; --i)
        {
            top = texture(s_src, uv + vec2(0.0, tex_offset.y * float(i))).a;
            bottom = texture(s_src, uv - vec2(0.0, tex_offset.y * float(i))).a;
            if (top > 0.0 || bottom > 0.0)
            {
                alpha += (top + bottom) * weight[i];
            } else {
                break;
            }
        }
    }
    outColor = vec4(alpha);
}