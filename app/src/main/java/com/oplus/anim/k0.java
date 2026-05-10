package com.oplus.anim;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a */
    private static boolean f11040a = false;

    /* JADX INFO: renamed from: b */
    private static boolean f11041b = true;

    /* JADX INFO: renamed from: c */
    private static String[] f11042c;

    /* JADX INFO: renamed from: d */
    private static long[] f11043d;

    /* JADX INFO: renamed from: e */
    private static int f11044e;

    /* JADX INFO: renamed from: f */
    private static int f11045f;

    /* JADX INFO: renamed from: g */
    private static j6.e f11046g;

    /* JADX INFO: renamed from: h */
    private static j6.d f11047h;

    /* JADX INFO: renamed from: i */
    private static volatile j6.h f11048i;

    /* JADX INFO: renamed from: j */
    private static volatile j6.g f11049j;

    class a implements j6.d {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Context f11050a;

        a(Context context) {
            this.f11050a = context;
        }

        @Override // j6.d
        public File a() {
            return new File(this.f11050a.getCacheDir(), "anim_network_cache");
        }
    }

    public static void a(String str) {
        if (f11040a) {
            int i10 = f11044e;
            if (i10 == 20) {
                f11045f++;
                return;
            }
            f11042c[i10] = str;
            f11043d[i10] = System.nanoTime();
            z.i.a(str);
            f11044e++;
        }
    }

    public static float b(String str) {
        int i10 = f11045f;
        if (i10 > 0) {
            f11045f = i10 - 1;
            return 0.0f;
        }
        if (!f11040a) {
            return 0.0f;
        }
        int i11 = f11044e - 1;
        f11044e = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(f11042c[i11])) {
            z.i.b();
            return (System.nanoTime() - f11043d[f11044e]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f11042c[f11044e] + ".");
    }

    public static j6.g c(Context context) {
        if (!f11041b) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        j6.g gVar = f11049j;
        if (gVar == null) {
            synchronized (j6.g.class) {
                try {
                    gVar = f11049j;
                    if (gVar == null) {
                        j6.d aVar = f11047h;
                        if (aVar == null) {
                            aVar = new a(applicationContext);
                        }
                        gVar = new j6.g(aVar);
                        f11049j = gVar;
                    }
                } finally {
                }
            }
        }
        return gVar;
    }

    public static j6.h d(Context context) {
        j6.h hVar = f11048i;
        if (hVar == null) {
            synchronized (j6.h.class) {
                try {
                    hVar = f11048i;
                    if (hVar == null) {
                        j6.g gVarC = c(context);
                        j6.e bVar = f11046g;
                        if (bVar == null) {
                            bVar = new j6.b();
                        }
                        hVar = new j6.h(gVarC, bVar);
                        f11048i = hVar;
                    }
                } finally {
                }
            }
        }
        return hVar;
    }
}
