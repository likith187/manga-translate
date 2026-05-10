package h7;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.Iterator;
import k7.e;
import k7.f;
import k7.g;
import k7.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static i7.a a(Context context, String str) {
        String strB = e.b(context, str);
        if (!f(str) || !e(strB)) {
            return new i7.a("", 1004, new byte[0], null);
        }
        try {
            Iterator it = h.c(strB, Constants.DataMigration.SPLIT_TAG).iterator();
            while (it.hasNext()) {
                byte[][] bArrB = b(str, (String) it.next(), context);
                if (bArrB[0][0] == 1) {
                    return new i7.a(str, 1001, bArrB[1], strB);
                }
            }
            return new i7.a(str, 1002, new byte[0], null);
        } catch (Exception e10) {
            k7.d.c("Check key get exception " + e10.getMessage());
            return new i7.a(str, 1002, new byte[0], null);
        }
    }

    private static byte[][] b(String str, String str2, Context context) {
        byte[][] bArr = {new byte[]{0}};
        try {
            if (g(str, str2, context)) {
                return new byte[][]{new byte[]{1}, d(str2), c(str2)};
            }
            k7.d.d("Signature verify failed.");
            return bArr;
        } catch (Exception e10) {
            k7.d.c("Check key get exception " + e10.getMessage());
            return bArr;
        }
    }

    private static byte[] c(String str) {
        byte[] bArrA = k7.a.a(str);
        return f.b(bArrA, h.b(f.d(bArrA)));
    }

    private static byte[] d(String str) {
        byte[] bArrA = k7.a.a(str);
        return f.c(bArrA, h.b(f.d(bArrA)));
    }

    private static boolean e(String str) {
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        k7.d.c("Get target application authCode is empty");
        return false;
    }

    private static boolean f(String str) {
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        k7.d.c("Get target packageName is empty");
        return false;
    }

    private static boolean g(String str, String str2, Context context) {
        byte[] bArrA = k7.a.a(str2);
        byte[] bArrE = f.e(bArrA);
        byte[] bArr = {8};
        int iB = h.b(f.d(bArrA));
        return g.e(context, str, bArrE, iB, bArr, f.b(bArrA, iB), f.c(bArrA, iB), f.a(bArrA, iB));
    }
}
