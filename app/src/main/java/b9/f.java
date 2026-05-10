package b9;

import b9.a;
import kotlin.jvm.internal.r;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends e {
    public static float b(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    public static int c(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static long d(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static int e(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static long f(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    public static float g(float f10, float f11, float f12) {
        if (f11 <= f12) {
            return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f12 + " is less than minimum " + f11 + '.');
    }

    public static int h(int i10, int i11, int i12) {
        if (i11 <= i12) {
            return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static long i(long j10, long j11, long j12) {
        if (j11 <= j12) {
            return j10 < j11 ? j11 : j10 > j12 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    public static a j(int i10, int i11) {
        return a.f4263f.a(i10, i11, -1);
    }

    public static a k(a aVar, int i10) {
        r.e(aVar, "<this>");
        e.a(i10 > 0, Integer.valueOf(i10));
        a.C0053a c0053a = a.f4263f;
        int iA = aVar.a();
        int iC = aVar.c();
        if (aVar.d() <= 0) {
            i10 = -i10;
        }
        return c0053a.a(iA, iC, i10);
    }

    public static c l(int i10, int i11) {
        return i11 <= Integer.MIN_VALUE ? c.f4271h.a() : new c(i10, i11 - 1);
    }
}
