package n1;

import android.graphics.Path;
import com.airbnb.lottie.i0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class p implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f14014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f14015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m1.a f14017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m1.d f14018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14019f;

    public p(String str, boolean z10, Path.FillType fillType, m1.a aVar, m1.d dVar, boolean z11) {
        this.f14016c = str;
        this.f14014a = z10;
        this.f14015b = fillType;
        this.f14017d = aVar;
        this.f14018e = dVar;
        this.f14019f = z11;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.g(i0Var, bVar, this);
    }

    public m1.a b() {
        return this.f14017d;
    }

    public Path.FillType c() {
        return this.f14015b;
    }

    public String d() {
        return this.f14016c;
    }

    public m1.d e() {
        return this.f14018e;
    }

    public boolean f() {
        return this.f14019f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f14014a + AbstractJsonLexerKt.END_OBJ;
    }
}
