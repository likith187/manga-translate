package f7;

import android.os.SystemProperties;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f12008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f12009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f12010c;

    static {
        boolean z10 = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        f12008a = z10;
        f12009b = false;
        if (z10) {
            f12010c = 3;
        } else {
            f12010c = 6;
        }
    }

    public static void a(String str, String str2) {
        c(3, str, str2);
    }

    public static void b(String str, String str2) {
        c(6, str, str2);
    }

    private static void c(int i10, String str, String str2) {
        if (i10 >= f12010c) {
            String str3 = "Download." + str;
            if (f12009b) {
                str2 = "[" + Thread.currentThread().getName() + "]" + str2;
            }
            if (i10 == 2) {
                Log.v(str3, str2);
                return;
            }
            if (i10 == 3) {
                Log.d(str3, str2);
                return;
            }
            if (i10 == 4) {
                Log.i(str3, str2);
            } else if (i10 == 5) {
                Log.w(str3, str2);
            } else {
                if (i10 != 6) {
                    return;
                }
                Log.e(str3, str2);
            }
        }
    }

    public static void d(String str, String str2) {
        c(2, str, str2);
    }

    public static void e(String str, String str2) {
        c(5, str, str2);
    }
}
