package k7;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f12981a = false;

    private static class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = d.f12981a = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        }

        private b() {
            super(null);
        }
    }

    public static void b(String str) {
        if (f12981a) {
            Log.d("AppPlatform.Shield", str);
        }
    }

    public static void c(String str) {
        Log.e("AppPlatform.Shield", str);
    }

    public static void d(String str) {
        if (f12981a) {
            Log.i("AppPlatform.Shield", str);
        }
    }

    public static void e(Context context) {
        f12981a = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new b());
    }
}
