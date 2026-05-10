package o9;

import com.coui.appcompat.tooltips.COUIToolTips;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static final e INSTANCE = new e();

    /* JADX INFO: renamed from: a */
    public static final t9.g f14502a = t9.g.Companion.d("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: b */
    private static final String[] f14503b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: c */
    private static final String[] f14504c = new String[64];

    /* JADX INFO: renamed from: d */
    private static final String[] f14505d;

    static {
        String[] strArr = new String[COUIToolTips.ALIGN_TOP];
        for (int i10 = 0; i10 < 256; i10++) {
            String binaryString = Integer.toBinaryString(i10);
            r.d(binaryString, "toBinaryString(it)");
            strArr[i10] = kotlin.text.r.A(i9.d.s("%8s", binaryString), ' ', '0', false, 4, null);
        }
        f14505d = strArr;
        String[] strArr2 = f14504c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i11 = iArr[0];
        strArr2[i11 | 8] = strArr2[i11] + "|PADDED";
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i12 = 0; i12 < 3; i12++) {
            int i13 = iArr2[i12];
            int i14 = iArr[0];
            String[] strArr3 = f14504c;
            int i15 = i14 | i13;
            strArr3[i15] = strArr3[i14] + '|' + strArr3[i13];
            strArr3[i15 | 8] = strArr3[i14] + '|' + strArr3[i13] + "|PADDED";
        }
        int length = f14504c.length;
        for (int i16 = 0; i16 < length; i16++) {
            String[] strArr4 = f14504c;
            if (strArr4[i16] == null) {
                strArr4[i16] = f14505d[i16];
            }
        }
    }

    private e() {
    }

    public final String a(int i10, int i11) {
        String str;
        if (i11 == 0) {
            return "";
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 == 4 || i10 == 6) {
                return i11 == 1 ? "ACK" : f14505d[i11];
            }
            if (i10 != 7 && i10 != 8) {
                String[] strArr = f14504c;
                if (i11 < strArr.length) {
                    str = strArr[i11];
                    r.b(str);
                } else {
                    str = f14505d[i11];
                }
                String str2 = str;
                return (i10 != 5 || (i11 & 4) == 0) ? (i10 != 0 || (i11 & 32) == 0) ? str2 : kotlin.text.r.B(str2, "PRIORITY", "COMPRESSED", false, 4, null) : kotlin.text.r.B(str2, "HEADERS", "PUSH_PROMISE", false, 4, null);
            }
        }
        return f14505d[i11];
    }

    public final String b(int i10) {
        String[] strArr = f14503b;
        return i10 < strArr.length ? strArr[i10] : i9.d.s("0x%02x", Integer.valueOf(i10));
    }

    public final String c(boolean z10, int i10, int i11, int i12, int i13) {
        return i9.d.s("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), b(i12), a(i12, i13));
    }
}
