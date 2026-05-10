package com.airbnb.lottie;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f4545a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f4546b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f4547c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f4548d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f4549e = a.AUTOMATIC;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static p1.f f4550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static p1.e f4551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile p1.h f4552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile p1.g f4553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ThreadLocal f4554j;

    public static void b(String str) {
        if (f4546b) {
            f().a(str);
        }
    }

    public static float c(String str) {
        if (f4546b) {
            return f().b(str);
        }
        return 0.0f;
    }

    public static a d() {
        return f4549e;
    }

    public static boolean e() {
        return f4548d;
    }

    private static r1.f f() {
        r1.f fVar = (r1.f) f4554j.get();
        if (fVar != null) {
            return fVar;
        }
        r1.f fVar2 = new r1.f();
        f4554j.set(fVar2);
        return fVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File g(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    public static p1.g h(Context context) {
        if (!f4547c) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        p1.g gVar = f4553i;
        if (gVar == null) {
            synchronized (p1.g.class) {
                try {
                    gVar = f4553i;
                    if (gVar == null) {
                        p1.e eVar = f4551g;
                        if (eVar == null) {
                            eVar = new p1.e() { // from class: com.airbnb.lottie.d
                                @Override // p1.e
                                public final File a() {
                                    return e.g(applicationContext);
                                }
                            };
                        }
                        gVar = new p1.g(eVar);
                        f4553i = gVar;
                    }
                } finally {
                }
            }
        }
        return gVar;
    }

    public static p1.h i(Context context) {
        p1.h hVar = f4552h;
        if (hVar == null) {
            synchronized (p1.h.class) {
                try {
                    hVar = f4552h;
                    if (hVar == null) {
                        p1.g gVarH = h(context);
                        p1.f bVar = f4550f;
                        if (bVar == null) {
                            bVar = new p1.b();
                        }
                        hVar = new p1.h(gVarH, bVar);
                        f4552h = hVar;
                    }
                } finally {
                }
            }
        }
        return hVar;
    }
}
