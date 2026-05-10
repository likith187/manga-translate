package h6;

import android.graphics.Path;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class o implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f12311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f12312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f12313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g6.a f12314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g6.d f12315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f12316f;

    public o(String str, boolean z10, Path.FillType fillType, g6.a aVar, g6.d dVar, boolean z11) {
        this.f12313c = str;
        this.f12311a = z10;
        this.f12312b = fillType;
        this.f12314d = aVar;
        this.f12315e = dVar;
        this.f12316f = z11;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.g(oVar, bVar, this);
    }

    public g6.a b() {
        return this.f12314d;
    }

    public Path.FillType c() {
        return this.f12312b;
    }

    public String d() {
        return this.f12313c;
    }

    public g6.d e() {
        return this.f12315e;
    }

    public boolean f() {
        return this.f12316f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f12311a + AbstractJsonLexerKt.END_OBJ;
    }
}
