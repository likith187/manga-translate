package c8;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f4471a = f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicBoolean f4472b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f4473c;

    private static class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = a.f4471a = a.f();
        }

        private b() {
            super(null);
        }
    }

    private a() {
    }

    public static void c(String str, String str2, Object... objArr) {
        if (f4471a) {
            Log.d(str, e(str2, objArr));
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        if (f4471a) {
            Log.e(str, e(str2, objArr));
        }
    }

    private static String e(String str, Object[] objArr) {
        return str == null ? "" : objArr.length > 0 ? String.format(str, objArr) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f() {
        return SystemProperties.getBoolean("persist.sys.assert.panic", false);
    }

    public static a g() {
        if (f4473c == null) {
            synchronized (a.class) {
                try {
                    if (f4473c == null) {
                        f4473c = new a();
                    }
                } finally {
                }
            }
        }
        return f4473c;
    }

    public static void i(String str, String str2, Object... objArr) {
        if (f4471a) {
            Log.w(str, e(str2, objArr));
        }
    }

    public void h(Context context) {
        if (f4472b.getAndSet(true) || context == null || context.getContentResolver() == null) {
            return;
        }
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), false, new b());
    }
}
