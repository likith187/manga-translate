package e9;

import kotlin.text.g;

/* JADX INFO: loaded from: classes2.dex */
abstract class d extends c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str, int i10) {
        if (str.charAt(i10) == '-') {
            return;
        }
        throw new IllegalArgumentException(("Expected '-' (hyphen) at index 8, but was " + str.charAt(i10)).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(long j10, byte[] bArr, int i10, int i11) {
        int i12 = i10 + (i11 * 2);
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = g.d()[(int) (255 & j10)];
            bArr[i12 - 1] = (byte) i14;
            i12 -= 2;
            bArr[i12] = (byte) (i14 >> 8);
            j10 >>= 8;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(long j10, byte[] bArr, int i10) {
        for (int i11 = 0; i11 < 8; i11++) {
            bArr[i10 + i11] = (byte) (j10 >>> ((7 - i11) * 8));
        }
    }
}
