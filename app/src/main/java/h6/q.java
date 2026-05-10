package h6;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class q implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g6.h f12322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f12323d;

    public q(String str, int i10, g6.h hVar, boolean z10) {
        this.f12320a = str;
        this.f12321b = i10;
        this.f12322c = hVar;
        this.f12323d = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.r(oVar, bVar, this);
    }

    public String b() {
        return this.f12320a;
    }

    public g6.h c() {
        return this.f12322c;
    }

    public boolean d() {
        return this.f12323d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f12320a + ", index=" + this.f12321b + AbstractJsonLexerKt.END_OBJ;
    }
}
