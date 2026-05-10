package g7;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import k7.d;
import k7.i;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: f */
    private static volatile c f12112f;

    /* JADX INFO: renamed from: a */
    private volatile boolean f12113a = false;

    /* JADX INFO: renamed from: b */
    private Context f12114b;

    /* JADX INFO: renamed from: c */
    private l7.a f12115c;

    /* JADX INFO: renamed from: d */
    private l7.c f12116d;

    /* JADX INFO: renamed from: e */
    private l7.b f12117e;

    private c() {
    }

    public static c a() {
        if (f12112f == null) {
            synchronized (c.class) {
                try {
                    if (f12112f == null) {
                        f12112f = new c();
                    }
                } finally {
                }
            }
        }
        return f12112f;
    }

    private String b() {
        return i.b() ? "com.oplus.systemcore" : a.a();
    }

    public synchronized void c(Context context) {
        try {
            if (this.f12113a) {
                return;
            }
            this.f12113a = true;
            if (!(context instanceof Application)) {
                context = context.getApplicationContext();
            }
            this.f12114b = context;
            if (context != null && TextUtils.equals(context.getPackageName(), b())) {
                j7.b.b();
                d.e(this.f12114b);
                k7.c.e().f(this.f12114b);
            }
            this.f12115c = new l7.a(this.f12114b);
            this.f12116d = new l7.c(this.f12114b);
            this.f12117e = new l7.b(this.f12114b);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean d() {
        return !k7.c.e().g();
    }

    public boolean e(String str, int i10) {
        return this.f12116d.h(str, i10);
    }
}
