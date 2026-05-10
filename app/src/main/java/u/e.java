package u;

import android.graphics.Insets;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e f15806e = new e(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15810d;

    static class a {
        static Insets a(int i10, int i11, int i12, int i13) {
            return Insets.of(i10, i11, i12, i13);
        }
    }

    private e(int i10, int i11, int i12, int i13) {
        this.f15807a = i10;
        this.f15808b = i11;
        this.f15809c = i12;
        this.f15810d = i13;
    }

    public static e a(e eVar, e eVar2) {
        return c(Math.max(eVar.f15807a, eVar2.f15807a), Math.max(eVar.f15808b, eVar2.f15808b), Math.max(eVar.f15809c, eVar2.f15809c), Math.max(eVar.f15810d, eVar2.f15810d));
    }

    public static e b(e eVar, e eVar2) {
        return c(Math.min(eVar.f15807a, eVar2.f15807a), Math.min(eVar.f15808b, eVar2.f15808b), Math.min(eVar.f15809c, eVar2.f15809c), Math.min(eVar.f15810d, eVar2.f15810d));
    }

    public static e c(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? f15806e : new e(i10, i11, i12, i13);
    }

    public static e d(Insets insets) {
        return c(insets.left, insets.top, insets.right, insets.bottom);
    }

    public Insets e() {
        return a.a(this.f15807a, this.f15808b, this.f15809c, this.f15810d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f15810d == eVar.f15810d && this.f15807a == eVar.f15807a && this.f15809c == eVar.f15809c && this.f15808b == eVar.f15808b;
    }

    public int hashCode() {
        return (((((this.f15807a * 31) + this.f15808b) * 31) + this.f15809c) * 31) + this.f15810d;
    }

    public String toString() {
        return "Insets{left=" + this.f15807a + ", top=" + this.f15808b + ", right=" + this.f15809c + ", bottom=" + this.f15810d + AbstractJsonLexerKt.END_OBJ;
    }
}
