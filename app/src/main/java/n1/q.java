package n1;

import com.airbnb.lottie.i0;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class q implements c {

    /* JADX INFO: renamed from: a */
    private final String f14020a;

    /* JADX INFO: renamed from: b */
    private final List f14021b;

    /* JADX INFO: renamed from: c */
    private final boolean f14022c;

    public q(String str, List list, boolean z10) {
        this.f14020a = str;
        this.f14021b = list;
        this.f14022c = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.d(i0Var, bVar, this, jVar);
    }

    public List b() {
        return this.f14021b;
    }

    public String c() {
        return this.f14020a;
    }

    public boolean d() {
        return this.f14022c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f14020a + "' Shapes: " + Arrays.toString(this.f14021b.toArray()) + AbstractJsonLexerKt.END_OBJ;
    }
}
