package w5;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile c f16145c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f16146d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f16147e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f16148a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f16149b;

    private class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = c.f16147e = c.this.d();
            d.b("Change MODE to debug mode : " + c.f16147e);
        }

        private b() {
            super(null);
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return Settings.Secure.getInt(this.f16149b.getContentResolver(), "oplus_appplatform_debug", 0) == 1;
    }

    public static c e() {
        if (f16145c == null) {
            synchronized (c.class) {
                try {
                    if (f16145c == null) {
                        f16145c = new c();
                    }
                } finally {
                }
            }
        }
        return f16145c;
    }

    public void f(Context context) {
        if (this.f16148a) {
            return;
        }
        this.f16148a = true;
        boolean z10 = SystemProperties.getBoolean("ro.build.release_type", true);
        f16146d = z10;
        if (z10) {
            return;
        }
        this.f16149b = context;
        f16147e = d();
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("oplus_appplatform_debug"), false, new b());
        d.c("Current MODE is debug mode : " + f16147e);
    }

    public boolean g() {
        return !f16146d && f16147e;
    }
}
