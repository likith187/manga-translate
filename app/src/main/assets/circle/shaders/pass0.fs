#version 320 es
precision highp float;
layout(location = 0) out vec4 fragColor;
uniform vec2 u_resolution;
uniform float u_time;
uniform sampler2D iChannel0;

uniform float rect_margin;
uniform float rect_padding;
uniform float rect_base_scale;
uniform float rect_padding_alpha;
uniform vec2 rect_corner;
uniform vec2 rect_size;
uniform vec2 rect_center;
uniform float rect_progress;
uniform vec4 rect_padding_zoom_in;
uniform vec4 rect_margin_zoom_out;
uniform float rect_zoom_in_speed;
uniform float rect_zoom_out_speed;

uniform vec4 color_speed;
uniform vec4 color_shake_speed;
uniform float color_scale;
uniform float color_alpha;
uniform vec2 color_shake_displacement;

uniform int selected;
uniform float u_surfScreenRatio;
uniform float fadeInOutProgress;
uniform float fadeInOutMargin;

mat2 rotate2d(float angle) {
    return mat2(cos(angle), -sin(angle),
                sin(angle), cos(angle));
}
float cubicBezier(float t, vec2 b, vec2 c) {
    vec2 a = vec2(0.0), d = vec2(1.0);
    vec2 e = mix(a, b, t);
    vec2 f = mix(b, c, t);
    vec2 g = mix(c, d, t);

    vec2 h = mix(e, f, t);
    vec2 i = mix(f, g, t);

    vec2 r = mix(h, i, t);
    return r.y;
}
vec4 getColor() {

    vec3 my_color1 = vec3(0.06, 0.75, 0.97);
    vec3 my_color2 = vec3(0.29, 0.52, 1.00);
    vec3 my_color3 = vec3(0.76, 0.36, 1.00);
    vec3 my_color4 = vec3(1.00, 0.76, 0.10);

    float time = u_time * 1.0;

    vec2 picSize = vec2(300.0);

    vec2 s = u_resolution.xy / picSize;

    float picScale =  max(s.x, s.y);

    picSize *= picScale * color_scale;

    vec2 uv = (gl_FragCoord.xy - (vec2(0.5) * u_resolution.xy  - picSize * 0.5)) / picSize;
    if (any(greaterThan(uv, vec2(1.0))) || any(lessThan(uv, vec2(0.0)))) {
        return vec4(0.0);
    } else {
        vec2 center_r = vec2(0.5,0.5) + color_shake_displacement * sin(color_shake_speed.r *time);
        vec2 rotated_uv_r = rotate2d(color_speed.r * time) * (uv - center_r) + center_r;
        float r = texture(iChannel0, rotated_uv_r).r;
        vec4 layer1 = vec4(my_color1, r);

        vec2 center_g = vec2(0.5,0.5) + color_shake_displacement * sin(color_shake_speed.g * time);
        vec2 rotated_uv_g = rotate2d(color_speed.g * time) * (uv - center_g) + center_g;
        float g = texture(iChannel0, rotated_uv_g).g;
        vec4 layer2 = vec4(my_color2, g);

        vec2 center_b = vec2(0.5,0.5) + color_shake_displacement * sin(color_shake_speed.b * time);
        vec2 rotated_uv_b = rotate2d(color_speed.b * time) * (uv - center_b) + center_b;
        float b = texture(iChannel0, rotated_uv_b).b;
        vec4 layer3 = vec4(my_color3, b);

        vec2 center_a = vec2(0.5,0.5) + color_shake_displacement * sin(color_shake_speed.a * time);
        vec2 rotated_uv_a = rotate2d(3.14 + color_speed.a * time) * (uv - center_a) + center_a;
        float a = texture(iChannel0, rotated_uv_a).r;
        vec4 layer4 = vec4(my_color4, a);

        vec3 col = mix(layer1.rgb, layer2.rgb, layer2.a);
        col = mix(col, layer3.rgb, layer3.a);
        col = mix(col, layer4.rgb, layer4.a);

        return vec4(col, 1.0);
    }
}

float sdRect(vec2 p, vec2 b, float r) {
    vec2 d = abs(p) - b + vec2(r);
    return min(max(d.x, d.y), 0.0) + length(max(d, 0.0)) - r;
}

float linestep(float x, float y, float a) {
    if(a < x) return 0.0;
    if(a > y) return 1.0;
    return a / (y - x);
}

void main() {
    vec2 rect_size = rect_size * u_surfScreenRatio;
    vec2 rect_corner = rect_corner * u_surfScreenRatio;

    vec4 fg = getColor();
    if(selected == 1) {
        float progress = clamp(rect_progress, 0.0, 1.0);
        vec2 uv = (gl_FragCoord.xy / u_resolution.xy);
        vec2 centerPos = gl_FragCoord.xy - rect_center * u_resolution.xy;
        float rp = clamp(progress * rect_zoom_in_speed, 0.0, 1.0);
        rp = cubicBezier(rp, rect_padding_zoom_in.xy, rect_padding_zoom_in.zw);
        vec2 currentRect = rect_size * (1.0 - rect_base_scale) * rp + rect_size * rect_base_scale;
        float fRect = sdRect(centerPos, currentRect * 0.5, mix(rect_corner.y, rect_corner.x, rp));

        float mp = clamp(progress * rect_zoom_out_speed, 0.0, 1.0);
        mp = cubicBezier(mp, rect_margin_zoom_out.xy, rect_margin_zoom_out.zw);
        float m = mix(u_resolution.y * 2.0, rect_margin, mp);
        float p = mix(rect_size.y * 2.0, rect_padding, progress);
        float v = 1.0 - linestep(0.0, m, fRect);
        v = cubicBezier(v, vec2(1,-0.01),vec2(1,0));
        v *= smoothstep(-0.01, 0.0, fRect);
        fragColor = vec4(fg.rgb, v * fg.a * mix(color_alpha, rect_padding_alpha, progress) * fadeInOutProgress);
    } else {
        vec2 uv = gl_FragCoord.xy / u_resolution.xy;
        float mask = smoothstep(fadeInOutProgress * fadeInOutMargin, fadeInOutProgress, uv.y);
        fragColor = vec4(fg.rgb, color_alpha * mask * fadeInOutProgress);
    }
    fragColor.rgb *= fragColor.a;
    //fragColor = vec4(0.0, 1.0, 0.0, 1.0);
}