package com.heytap.epona;

import android.app.Application;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static c f10806i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Application f10811d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f10814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f10805h = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicBoolean f10807j = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f10808a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f10810c = new l5.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f10809b = new h();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l5.g f10813f = new l5.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l5.a f10812e = new l5.a();

    private c() {
    }

    private void a(Context context) {
        this.f10814g = context;
        if (context instanceof Application) {
            this.f10811d = (Application) context;
        } else {
            this.f10811d = (Application) context.getApplicationContext();
        }
        this.f10812e.c(this.f10811d);
    }

    private static void b() {
    }

    public static b c(String str) {
        g().f10810c.b(str);
        return null;
    }

    public static p5.a d(String str) {
        g().f10810c.a(str);
        return null;
    }

    public static Application e() {
        return g().f10811d;
    }

    public static Context f() {
        return g().f10814g;
    }

    private static c g() {
        synchronized (f10805h) {
            try {
                if (f10806i == null) {
                    f10806i = new c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f10806i;
    }

    public static List h() {
        return g().f10808a;
    }

    public static void i(Context context) {
        if (f10807j.getAndSet(true)) {
            return;
        }
        g().a(context);
        q5.a.e(context);
        r5.b.a().b(context);
        b();
    }

    public static l5.e j(Request request) {
        return g().f10809b.i(request);
    }
}
