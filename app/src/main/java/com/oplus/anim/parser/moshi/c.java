package com.oplus.anim.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import t9.f;
import t9.g;
import t9.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements Closeable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f11086j = new String[128];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f11087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f11088b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String[] f11089c = new String[32];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int[] f11090f = new int[32];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f11091h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f11092i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String[] f11093a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q f11094b;

        private a(String[] strArr, q qVar) {
            this.f11093a = strArr;
            this.f11094b = qVar;
        }

        public static a a(String... strArr) {
            try {
                g[] gVarArr = new g[strArr.length];
                t9.d dVar = new t9.d();
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    c.E0(dVar, strArr[i10]);
                    dVar.C0();
                    gVarArr[i10] = dVar.a0();
                }
                return new a((String[]) strArr.clone(), q.h(gVarArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public enum b {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f11086j[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f11086j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void E0(t9.e r7, java.lang.String r8) {
        /*
            java.lang.String[] r0 = com.oplus.anim.parser.moshi.c.f11086j
            r1 = 34
            r7.T(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = r3
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.r(r8, r4, r3)
        L2e:
            r7.u0(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.r(r8, r4, r2)
        L3b:
            r7.T(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.anim.parser.moshi.c.E0(t9.e, java.lang.String):void");
    }

    public static c a0(f fVar) {
        return new e(fVar);
    }

    public abstract boolean B();

    public abstract boolean D();

    public abstract void D0();

    final com.oplus.anim.parser.moshi.b F0(String str) throws com.oplus.anim.parser.moshi.b {
        throw new com.oplus.anim.parser.moshi.b(str + " at path " + a());
    }

    public abstract double G();

    public abstract int I();

    public abstract String N();

    public abstract String X();

    public final String a() {
        return d.a(this.f11087a, this.f11088b, this.f11089c, this.f11090f);
    }

    public abstract b b0();

    public abstract void i();

    public abstract void k();

    final void q0(int i10) {
        int i11 = this.f11087a;
        int[] iArr = this.f11088b;
        if (i11 == iArr.length) {
            if (i11 == 256) {
                throw new com.oplus.anim.parser.moshi.a("Nesting too deep at " + a());
            }
            this.f11088b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f11089c;
            this.f11089c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f11090f;
            this.f11090f = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f11088b;
        int i12 = this.f11087a;
        this.f11087a = i12 + 1;
        iArr3[i12] = i10;
    }

    public abstract void v();

    public abstract int v0(a aVar);

    public abstract void x();

    public abstract void x0();
}
