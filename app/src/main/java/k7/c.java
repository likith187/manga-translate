package k7;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile c f12975c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f12976d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f12977e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f12978a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12979b;

    private class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            boolean unused = c.f12977e = c.this.d();
            d.b("Change MODE to debug mode : " + c.f12977e);
        }

        private b() {
            super(null);
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return Settings.Secure.getInt(this.f12979b.getContentResolver(), "oplus_appplatform_debug", 0) == 1;
    }

    public static c e() {
        if (f12975c == null) {
            synchronized (c.class) {
                try {
                    if (f12975c == null) {
                        f12975c = new c();
                    }
                } finally {
                }
            }
        }
        return f12975c;
    }

    public void f(Context context) {
        if (this.f12978a) {
            return;
        }
        this.f12978a = true;
        boolean z10 = SystemProperties.getBoolean("ro.build.release_type", true);
        f12976d = z10;
        if (z10) {
            return;
        }
        this.f12979b = context;
        f12977e = d();
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("oplus_appplatform_debug"), false, new b());
        d.c("Current MODE is debug mode : " + f12977e);
    }

    public boolean g() {
        return !f12976d && f12977e;
    }
}
