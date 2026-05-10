package s5;

import android.content.Context;
import android.os.UserManager;
import android.text.TextUtils;
import com.heytap.shield.authcode.dao.AuthenticationDb;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.Calendar;
import java.util.Iterator;
import java.util.concurrent.Executors;
import w5.f;
import w5.g;
import w5.h;
import w5.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    static u5.a b(Context context, String str, String str2) {
        if (!e(context)) {
            w5.d.b("Not get data from db cause user is locked.");
            return null;
        }
        t5.c cVarB = AuthenticationDb.t(context).s().b(w5.e.d(context, str), str, "APP_PLATFORM_CLIENT", str2);
        if (cVarB != null) {
            return new u5.a(str, 1001, cVarB.h());
        }
        return null;
    }

    public static u5.a c(Context context, String str) {
        int iD = w5.e.d(context, str);
        if (TextUtils.isEmpty(str)) {
            w5.d.c("Get target packageName is empty");
            return new u5.a("", 1004, new byte[0]);
        }
        String strB = w5.e.b(context, str);
        if (TextUtils.isEmpty(strB)) {
            w5.d.c("Get target application authCode is empty");
            return new u5.a("", 1004, new byte[0]);
        }
        try {
            Iterator it = h.c(strB, Constants.DataMigration.SPLIT_TAG).iterator();
            while (it.hasNext()) {
                byte[][] bArrD = d(str, (String) it.next(), context);
                if (bArrD[0][0] == 1) {
                    byte[] bArr = bArrD[1];
                    g(context, strB, str, iD, i.a(bArrD[2]), bArr);
                    w5.d.d("Auth code check ok");
                    return new u5.a(str, 1001, bArr);
                }
            }
            w5.d.c("Signature verify failed, package : " + str);
            return new u5.a(str, 1002, new byte[0]);
        } catch (Exception e10) {
            w5.d.c("Check key get exception " + e10.getMessage());
            return new u5.a(str, 1002, new byte[0]);
        }
    }

    private static byte[][] d(String str, String str2, Context context) {
        byte[][] bArr = {new byte[]{0}};
        try {
            byte[] bArrA = w5.a.a(str2);
            byte[] bArrE = f.e(bArrA);
            byte[] bArr2 = {8};
            int iB = h.b(f.d(bArrA));
            byte[] bArrC = f.c(bArrA, iB);
            byte[] bArrB = f.b(bArrA, iB);
            if (g.c(context, str, bArrE, iB, bArr2, bArrB, bArrC, f.a(bArrA, iB))) {
                return new byte[][]{new byte[]{1}, bArrC, bArrB};
            }
            w5.d.d("Signature verify failed.");
            return bArr;
        } catch (Exception e10) {
            w5.d.c("Check key get exception " + e10.getMessage());
            return bArr;
        }
    }

    private static boolean e(Context context) {
        if (context != null) {
            return ((UserManager) context.getSystemService("user")).isUserUnlocked();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(String str, int i10, String str2, Calendar calendar, byte[] bArr, Context context) {
        AuthenticationDb.t(context).s().a(new t5.c(str, true, i10, str2, "APP_PLATFORM_CLIENT", calendar.getTimeInMillis(), bArr, System.currentTimeMillis(), 0L));
    }

    private static void g(final Context context, final String str, final String str2, final int i10, final Calendar calendar, final byte[] bArr) {
        if (!e(context)) {
            w5.d.b("Not save to db cause user is locked.");
        } else {
            if (str2 == null) {
                return;
            }
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: s5.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.f(str, i10, str2, calendar, bArr, context);
                }
            });
        }
    }
}
