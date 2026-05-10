package y9;

import x9.g;
import x9.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c */
    private static final a f16574c;

    /* JADX INFO: renamed from: a */
    public final g f16575a;

    /* JADX INFO: renamed from: b */
    public final h f16576b;

    static {
        f16574c = b.c() ? b.b() : null;
    }

    public a(g gVar, h hVar) {
        this.f16575a = gVar;
        this.f16576b = hVar;
    }

    public static boolean a() {
        return f16574c != null;
    }

    public static a b() {
        return f16574c;
    }
}
