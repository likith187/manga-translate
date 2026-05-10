package h6;

import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class p implements c {

    /* JADX INFO: renamed from: a */
    private final String f12317a;

    /* JADX INFO: renamed from: b */
    private final List f12318b;

    /* JADX INFO: renamed from: c */
    private final boolean f12319c;

    public p(String str, List list, boolean z10) {
        this.f12317a = str;
        this.f12318b = list;
        this.f12319c = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.d(oVar, bVar, this, aVar);
    }

    public List b() {
        return this.f12318b;
    }

    public String c() {
        return this.f12317a;
    }

    public boolean d() {
        return this.f12319c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f12317a + "' Shapes: " + Arrays.toString(this.f12318b.toArray()) + AbstractJsonLexerKt.END_OBJ;
    }
}
