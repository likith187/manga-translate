package k6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    private static List a(com.oplus.anim.parser.moshi.c cVar, float f10, com.oplus.anim.a aVar, n0 n0Var) {
        return v.a(cVar, aVar, f10, n0Var, false);
    }

    private static List b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, n0 n0Var) {
        return v.a(cVar, aVar, 1.0f, n0Var, false);
    }

    static g6.a c(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.a(b(cVar, aVar, g.INSTANCE));
    }

    static g6.j d(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.j(a(cVar, l6.h.e(), aVar, i.INSTANCE));
    }

    public static g6.b e(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return f(cVar, aVar, true);
    }

    public static g6.b f(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, boolean z10) {
        return new g6.b(a(cVar, z10 ? l6.h.e() : 1.0f, aVar, m.INSTANCE));
    }

    static g6.c g(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, int i10) {
        return new g6.c(b(cVar, aVar, new p(i10)));
    }

    static g6.d h(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.d(b(cVar, aVar, s.INSTANCE));
    }

    static g6.f i(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.f(v.a(cVar, aVar, l6.h.e(), b0.INSTANCE, true));
    }

    static g6.g j(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.g(b(cVar, aVar, g0.INSTANCE));
    }

    static g6.h k(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        return new g6.h(a(cVar, l6.h.e(), aVar, h0.INSTANCE));
    }
}
