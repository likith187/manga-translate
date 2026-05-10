package t9;

import com.oplus.aiunit.core.utils.AuthUtil;
import t9.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a */
    private static final d.a f15729a = new d.a();

    /* JADX INFO: renamed from: b */
    private static final int f15730b = -1234567890;

    public static final boolean a(byte[] a10, int i10, byte[] b10, int i11, int i12) {
        kotlin.jvm.internal.r.e(a10, "a");
        kotlin.jvm.internal.r.e(b10, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (a10[i13 + i10] != b10[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static final int c() {
        return f15730b;
    }

    public static final int d(g gVar, int i10) {
        kotlin.jvm.internal.r.e(gVar, "<this>");
        return i10 == f15730b ? gVar.size() : i10;
    }

    public static final int e(byte[] bArr, int i10) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        return i10 == f15730b ? bArr.length : i10;
    }

    public static final int f(int i10) {
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    public static final short g(short s10) {
        return (short) (((s10 & 255) << 8) | ((65280 & s10) >>> 8));
    }

    public static final String h(byte b10) {
        return kotlin.text.r.q(new char[]{u9.b.f()[(b10 >> 4) & 15], u9.b.f()[b10 & 15]});
    }

    public static final String i(int i10) {
        int i11 = 0;
        if (i10 == 0) {
            return AuthUtil.AUTH_STYLE_INNER;
        }
        char[] cArr = {u9.b.f()[(i10 >> 28) & 15], u9.b.f()[(i10 >> 24) & 15], u9.b.f()[(i10 >> 20) & 15], u9.b.f()[(i10 >> 16) & 15], u9.b.f()[(i10 >> 12) & 15], u9.b.f()[(i10 >> 8) & 15], u9.b.f()[(i10 >> 4) & 15], u9.b.f()[i10 & 15]};
        while (i11 < 8 && cArr[i11] == '0') {
            i11++;
        }
        return kotlin.text.r.r(cArr, i11, 8);
    }
}
