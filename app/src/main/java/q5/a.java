package q5;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f15348a = SystemProperties.getBoolean("persist.sys.assert.panic", false);

    private static class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = a.f15348a = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        }

        private b(Handler handler) {
            super(null);
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (f15348a) {
            Log.d("Epona->" + str, d(str2, objArr));
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (f15348a) {
            Log.e("Epona->" + str, d(str2, objArr));
        }
    }

    private static String d(String str, Object[] objArr) {
        return (str == null || objArr == null || objArr.length <= 0) ? "" : String.format(str, objArr);
    }

    public static void e(Context context) {
        if (context == null || context.getContentResolver() == null || !"com.heytap.appplatform".equals(context.getPackageName())) {
            return;
        }
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new b(null));
    }

    public static void f(String str, String str2, Object... objArr) {
        if (f15348a) {
            Log.w("Epona->" + str, d(str2, objArr));
        }
    }
}
