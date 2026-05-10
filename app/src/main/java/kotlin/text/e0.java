package kotlin.text;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e0 {
    public static final byte a(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.x xVarB = b(str);
        if (xVarB != null) {
            return xVarB.f();
        }
        z.l(str);
        throw new n8.i();
    }

    public static final n8.x b(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return c(str, 10);
    }

    public static final n8.x c(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.z zVarF = f(str, i10);
        if (zVarF == null) {
            return null;
        }
        int iF = zVarF.f();
        if (Integer.compareUnsigned(iF, n8.z.b(255)) > 0) {
            return null;
        }
        return n8.x.a(n8.x.b((byte) iF));
    }

    public static final int d(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.z zVarE = e(str);
        if (zVarE != null) {
            return zVarE.f();
        }
        z.l(str);
        throw new n8.i();
    }

    public static final n8.z e(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return f(str, 10);
    }

    public static final n8.z f(String str, int i10) {
        int i11;
        kotlin.jvm.internal.r.e(str, "<this>");
        a.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char cCharAt = str.charAt(0);
        if (kotlin.jvm.internal.r.f(cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i11 = 0;
        }
        int iB = n8.z.b(i10);
        int iDivideUnsigned = 119304647;
        while (i11 < length) {
            int iB2 = b.b(str.charAt(i11), i10);
            if (iB2 < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i12, iDivideUnsigned) > 0) {
                if (iDivideUnsigned == 119304647) {
                    iDivideUnsigned = Integer.divideUnsigned(-1, iB);
                    if (Integer.compareUnsigned(i12, iDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            int iB3 = n8.z.b(i12 * iB);
            int iB4 = n8.z.b(n8.z.b(iB2) + iB3);
            if (Integer.compareUnsigned(iB4, iB3) < 0) {
                return null;
            }
            i11++;
            i12 = iB4;
        }
        return n8.z.a(i12);
    }

    public static final long g(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.b0 b0VarH = h(str);
        if (b0VarH != null) {
            return b0VarH.f();
        }
        z.l(str);
        throw new n8.i();
    }

    public static final n8.b0 h(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return i(str, 10);
    }

    public static final n8.b0 i(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        a.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char cCharAt = str.charAt(0);
        if (kotlin.jvm.internal.r.f(cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jB = n8.b0.b(i10);
        long j10 = 0;
        long jDivideUnsigned = 512409557603043100L;
        while (i11 < length) {
            int iB = b.b(str.charAt(i11), i10);
            if (iB < 0) {
                return null;
            }
            if (Long.compareUnsigned(j10, jDivideUnsigned) > 0) {
                if (jDivideUnsigned == 512409557603043100L) {
                    jDivideUnsigned = Long.divideUnsigned(-1L, jB);
                    if (Long.compareUnsigned(j10, jDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            long jB2 = n8.b0.b(j10 * jB);
            long jB3 = n8.b0.b(n8.b0.b(((long) n8.z.b(iB)) & 4294967295L) + jB2);
            if (Long.compareUnsigned(jB3, jB2) < 0) {
                return null;
            }
            i11++;
            j10 = jB3;
        }
        return n8.b0.a(j10);
    }

    public static final short j(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.e0 e0VarK = k(str);
        if (e0VarK != null) {
            return e0VarK.f();
        }
        z.l(str);
        throw new n8.i();
    }

    public static final n8.e0 k(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return l(str, 10);
    }

    public static final n8.e0 l(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        n8.z zVarF = f(str, i10);
        if (zVarF == null) {
            return null;
        }
        int iF = zVarF.f();
        if (Integer.compareUnsigned(iF, n8.z.b(65535)) > 0) {
            return null;
        }
        return n8.e0.a(n8.e0.b((short) iF));
    }
}
