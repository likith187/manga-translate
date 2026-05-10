package q1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    private static List a(com.airbnb.lottie.parser.moshi.c cVar, float f10, com.airbnb.lottie.j jVar, n0 n0Var) {
        return u.a(cVar, jVar, f10, n0Var, false);
    }

    private static List b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, n0 n0Var) {
        return u.a(cVar, jVar, 1.0f, n0Var, false);
    }

    static m1.a c(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.a(b(cVar, jVar, g.INSTANCE));
    }

    static m1.j d(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.j(a(cVar, r1.j.e(), jVar, i.INSTANCE));
    }

    public static m1.b e(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return f(cVar, jVar, true);
    }

    public static m1.b f(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, boolean z10) {
        return new m1.b(a(cVar, z10 ? r1.j.e() : 1.0f, jVar, l.INSTANCE));
    }

    static m1.c g(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, int i10) {
        return new m1.c(b(cVar, jVar, new o(i10)));
    }

    static m1.d h(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.d(b(cVar, jVar, r.INSTANCE));
    }

    static m1.f i(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.f(u.a(cVar, jVar, r1.j.e(), b0.INSTANCE, true));
    }

    static m1.g j(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.g(b(cVar, jVar, g0.INSTANCE));
    }

    static m1.h k(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        return new m1.h(a(cVar, r1.j.e(), jVar, h0.INSTANCE));
    }
}
