in vec2 uv;
out vec4 outColor;
uniform sampler2D s_mask;
uniform float u_alpha;
uniform float u_maskAlpha;
void main()
{
    outColor = vec4(0.36, 0.61, 1.0, u_maskAlpha);
    outColor.rgb *= u_maskAlpha;
    float mask = texture(s_mask, uv).a;
    outColor.a *= (mask * u_alpha);
}