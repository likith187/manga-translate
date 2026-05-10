package u9;

import java.io.EOFException;
import kotlin.jvm.internal.r;
import t9.d;
import t9.d0;
import t9.q;
import t9.v;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a */
    private static final byte[] f15894a = d0.a("0123456789abcdef");

    public static final byte[] a() {
        return f15894a;
    }

    public static final boolean b(v segment, int i10, byte[] bytes, int i11, int i12) {
        r.e(segment, "segment");
        r.e(bytes, "bytes");
        int i13 = segment.f15794c;
        byte[] bArr = segment.f15792a;
        while (i11 < i12) {
            if (i10 == i13) {
                segment = segment.f15797f;
                r.b(segment);
                byte[] bArr2 = segment.f15792a;
                bArr = bArr2;
                i10 = segment.f15793b;
                i13 = segment.f15794c;
            }
            if (bArr[i10] != bytes[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    public static final String c(d dVar, long j10) throws EOFException {
        r.e(dVar, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (dVar.D(j11) == 13) {
                String strE0 = dVar.E0(j11);
                dVar.A(2L);
                return strE0;
            }
        }
        String strE02 = dVar.E0(j10);
        dVar.A(1L);
        return strE02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0065, code lost:
    
        if (r19 == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0067, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0068, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int d(t9.d r17, t9.q r18, boolean r19) {
        /*
            r0 = r17
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.r.e(r0, r1)
            java.lang.String r1 = "options"
            r2 = r18
            kotlin.jvm.internal.r.e(r2, r1)
            t9.v r0 = r0.f15749a
            r1 = -2
            r3 = -1
            if (r0 != 0) goto L19
            if (r19 == 0) goto L17
            goto L18
        L17:
            r1 = r3
        L18:
            return r1
        L19:
            byte[] r4 = r0.f15792a
            int r5 = r0.f15793b
            int r6 = r0.f15794c
            int[] r2 = r18.e()
            r7 = 0
            r9 = r0
            r10 = r3
            r8 = r7
        L27:
            int r11 = r8 + 1
            r12 = r2[r8]
            int r8 = r8 + 2
            r11 = r2[r11]
            if (r11 == r3) goto L32
            r10 = r11
        L32:
            if (r9 != 0) goto L35
            goto L65
        L35:
            r11 = 0
            if (r12 >= 0) goto L7f
            int r12 = r12 * (-1)
            int r13 = r8 + r12
        L3c:
            int r12 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r14 = r8 + 1
            r8 = r2[r8]
            if (r5 == r8) goto L49
            return r10
        L49:
            if (r14 != r13) goto L4d
            r5 = 1
            goto L4e
        L4d:
            r5 = r7
        L4e:
            if (r12 != r6) goto L6f
            kotlin.jvm.internal.r.b(r9)
            t9.v r4 = r9.f15797f
            kotlin.jvm.internal.r.b(r4)
            int r6 = r4.f15793b
            byte[] r8 = r4.f15792a
            int r9 = r4.f15794c
            if (r4 != r0) goto L69
            if (r5 == 0) goto L65
            r4 = r8
            r8 = r11
            goto L72
        L65:
            if (r19 == 0) goto L68
            return r1
        L68:
            return r10
        L69:
            r16 = r8
            r8 = r4
            r4 = r16
            goto L72
        L6f:
            r8 = r9
            r9 = r6
            r6 = r12
        L72:
            if (r5 == 0) goto L7a
            r5 = r2[r14]
            r13 = r6
            r6 = r9
            r9 = r8
            goto La4
        L7a:
            r5 = r6
            r6 = r9
            r9 = r8
            r8 = r14
            goto L3c
        L7f:
            int r13 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r14 = r8 + r12
        L87:
            if (r8 != r14) goto L8a
            return r10
        L8a:
            r15 = r2[r8]
            if (r5 != r15) goto Lab
            int r8 = r8 + r12
            r5 = r2[r8]
            if (r13 != r6) goto La4
            t9.v r9 = r9.f15797f
            kotlin.jvm.internal.r.b(r9)
            int r4 = r9.f15793b
            byte[] r6 = r9.f15792a
            int r8 = r9.f15794c
            r13 = r4
            r4 = r6
            r6 = r8
            if (r9 != r0) goto La4
            r9 = r11
        La4:
            if (r5 < 0) goto La7
            return r5
        La7:
            int r8 = -r5
            r5 = r13
            goto L27
        Lab:
            int r8 = r8 + 1
            goto L87
        */
        throw new UnsupportedOperationException("Method not decompiled: u9.a.d(t9.d, t9.q, boolean):int");
    }

    public static /* synthetic */ int e(d dVar, q qVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return d(dVar, qVar, z10);
    }
}
