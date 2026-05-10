package n1;

import com.airbnb.lottie.i0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class l implements c {

    /* JADX INFO: renamed from: a */
    private final String f13999a;

    /* JADX INFO: renamed from: b */
    private final m1.m f14000b;

    /* JADX INFO: renamed from: c */
    private final m1.m f14001c;

    /* JADX INFO: renamed from: d */
    private final m1.b f14002d;

    /* JADX INFO: renamed from: e */
    private final boolean f14003e;

    public l(String str, m1.m mVar, m1.m mVar2, m1.b bVar, boolean z10) {
        this.f13999a = str;
        this.f14000b = mVar;
        this.f14001c = mVar2;
        this.f14002d = bVar;
        this.f14003e = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.o(i0Var, bVar, this);
    }

    public m1.b b() {
        return this.f14002d;
    }

    public String c() {
        return this.f13999a;
    }

    public m1.m d() {
        return this.f14000b;
    }

    public m1.m e() {
        return this.f14001c;
    }

    public boolean f() {
        return this.f14003e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f14000b + ", size=" + this.f14001c + AbstractJsonLexerKt.END_OBJ;
    }
}
