package kotlinx.serialization.internal;

import com.oplus.aiunit.core.utils.AuthUtil;
import java.util.Locale;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class InternalHexConverter {
    public static final InternalHexConverter INSTANCE = new InternalHexConverter();
    private static final String hexCode = "0123456789ABCDEF";

    private InternalHexConverter() {
    }

    private final int hexToInt(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('A' <= c10 && c10 < 'G') {
            return c10 - '7';
        }
        if ('a' > c10 || c10 >= 'g') {
            return -1;
        }
        return c10 - 'W';
    }

    public static /* synthetic */ String printHexBinary$default(InternalHexConverter internalHexConverter, byte[] bArr, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return internalHexConverter.printHexBinary(bArr, z10);
    }

    public final byte[] parseHexBinary(String s10) {
        r.e(s10, "s");
        int length = s10.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("HexBinary string must be even length");
        }
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            int iHexToInt = hexToInt(s10.charAt(i10));
            int i11 = i10 + 1;
            int iHexToInt2 = hexToInt(s10.charAt(i11));
            if (iHexToInt == -1 || iHexToInt2 == -1) {
                throw new IllegalArgumentException(("Invalid hex chars: " + s10.charAt(i10) + s10.charAt(i11)).toString());
            }
            bArr[i10 / 2] = (byte) ((iHexToInt << 4) + iHexToInt2);
        }
        return bArr;
    }

    public final String printHexBinary(byte[] data, boolean z10) {
        r.e(data, "data");
        StringBuilder sb = new StringBuilder(data.length * 2);
        for (byte b10 : data) {
            sb.append(hexCode.charAt((b10 >> 4) & 15));
            sb.append(hexCode.charAt(b10 & 15));
        }
        String string = sb.toString();
        r.d(string, "toString(...)");
        if (!z10) {
            return string;
        }
        String lowerCase = string.toLowerCase(Locale.ROOT);
        r.d(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public final String toHexString(int i10) {
        byte[] bArr = new byte[4];
        for (int i11 = 0; i11 < 4; i11++) {
            bArr[i11] = (byte) (i10 >> (24 - (i11 * 8)));
        }
        String strP0 = kotlin.text.r.P0(printHexBinary(bArr, true), '0');
        if (strP0.length() <= 0) {
            strP0 = null;
        }
        return strP0 == null ? AuthUtil.AUTH_STYLE_INNER : strP0;
    }
}
