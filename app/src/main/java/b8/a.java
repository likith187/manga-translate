package b8;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f4261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicBoolean f4262b = new AtomicBoolean(false);

    private static class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = a.f4261a = SystemProperties.getBoolean("persist.sys.assert.panic", false);
        }

        private b(Handler handler) {
            super(null);
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (f4261a) {
            Log.d("Tingle->" + str, d(str2, objArr));
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        Log.e("Tingle->" + str, d(str2, objArr));
    }

    private static String d(String str, Object[] objArr) {
        return (str == null || objArr == null || objArr.length <= 0) ? str : String.format(str, objArr);
    }

    public static void e(Context context) {
        if (f4262b.getAndSet(true)) {
            return;
        }
        if (context == null || context.getContentResolver() == null) {
            f4261a = false;
            return;
        }
        if (t7.a.a().equals(context.getPackageName())) {
            context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new b(null));
        }
        f4261a = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    }
}
