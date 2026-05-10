package n1;

import com.airbnb.lottie.i0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class r implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m1.h f14025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14026d;

    public r(String str, int i10, m1.h hVar, boolean z10) {
        this.f14023a = str;
        this.f14024b = i10;
        this.f14025c = hVar;
        this.f14026d = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.r(i0Var, bVar, this);
    }

    public String b() {
        return this.f14023a;
    }

    public m1.h c() {
        return this.f14025c;
    }

    public boolean d() {
        return this.f14026d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f14023a + ", index=" + this.f14024b + AbstractJsonLexerKt.END_OBJ;
    }
}
