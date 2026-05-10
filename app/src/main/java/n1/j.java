package n1;

import com.airbnb.lottie.i0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class j implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f13986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f13987c;

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

    public j(String str, a aVar, boolean z10) {
        this.f13985a = str;
        this.f13986b = aVar;
        this.f13987c = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        if (i0Var.C()) {
            return new i1.l(this);
        }
        r1.d.c("Animation contains merge paths but they are disabled.");
        return null;
    }

    public a b() {
        return this.f13986b;
    }

    public String c() {
        return this.f13985a;
    }

    public boolean d() {
        return this.f13987c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f13986b + AbstractJsonLexerKt.END_OBJ;
    }
}
