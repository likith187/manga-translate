package h6;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class i implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f12283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f12284c;

    public enum a {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static a forId(int i10) {
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? MERGE : EXCLUDE_INTERSECTIONS : INTERSECT : SUBTRACT : ADD : MERGE;
        }
    }

    public i(String str, a aVar, boolean z10) {
        this.f12282a = str;
        this.f12283b = aVar;
        this.f12284c = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        if (oVar.A()) {
            return new c6.l(this);
        }
        l6.e.c("Animation contains merge paths but they are disabled.");
        return null;
    }

    public a b() {
        return this.f12283b;
    }

    public String c() {
        return this.f12282a;
    }

    public boolean d() {
        return this.f12284c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f12283b + AbstractJsonLexerKt.END_OBJ;
    }
}
