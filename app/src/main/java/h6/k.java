package h6;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class k implements c {

    /* JADX INFO: renamed from: a */
    private final String f12296a;

    /* JADX INFO: renamed from: b */
    private final g6.m f12297b;

    /* JADX INFO: renamed from: c */
    private final g6.m f12298c;

    /* JADX INFO: renamed from: d */
    private final g6.b f12299d;

    /* JADX INFO: renamed from: e */
    private final boolean f12300e;

    public k(String str, g6.m mVar, g6.m mVar2, g6.b bVar, boolean z10) {
        this.f12296a = str;
        this.f12297b = mVar;
        this.f12298c = mVar2;
        this.f12299d = bVar;
        this.f12300e = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.o(oVar, bVar, this);
    }

    public g6.b b() {
        return this.f12299d;
    }

    public String c() {
        return this.f12296a;
    }

    public g6.m d() {
        return this.f12297b;
    }

    public g6.m e() {
        return this.f12298c;
    }

    public boolean f() {
        return this.f12300e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f12297b + ", size=" + this.f12298c + AbstractJsonLexerKt.END_OBJ;
    }
}
