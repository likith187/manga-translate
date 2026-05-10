package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class sa {

    /* JADX INFO: renamed from: k */
    private static nb f8686k;

    /* JADX INFO: renamed from: l */
    private static final pb f8687l = pb.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");

    /* JADX INFO: renamed from: a */
    private final String f8688a;

    /* JADX INFO: renamed from: b */
    private final String f8689b;

    /* JADX INFO: renamed from: c */
    private final ra f8690c;

    /* JADX INFO: renamed from: d */
    private final f5.j f8691d;

    /* JADX INFO: renamed from: e */
    private final w3.i f8692e;

    /* JADX INFO: renamed from: f */
    private final w3.i f8693f;

    /* JADX INFO: renamed from: g */
    private final String f8694g;

    /* JADX INFO: renamed from: h */
    private final int f8695h;

    /* JADX INFO: renamed from: i */
    private final Map f8696i = new HashMap();

    /* JADX INFO: renamed from: j */
    private final Map f8697j = new HashMap();

    public sa(Context context, final f5.j jVar, ra raVar, String str) {
        this.f8688a = context.getPackageName();
        this.f8689b = f5.c.a(context);
        this.f8691d = jVar;
        this.f8690c = raVar;
        eb.a();
        this.f8694g = str;
        this.f8692e = f5.f.a().b(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.oa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8582a.a();
            }
        });
        f5.f fVarA = f5.f.a();
        jVar.getClass();
        this.f8693f = fVarA.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.pa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return jVar.a();
            }
        });
        pb pbVar = f8687l;
        this.f8695h = pbVar.containsKey(str) ? DynamiteModule.a(context, (String) pbVar.get(str)) : -1;
    }

    private static synchronized nb f() {
        try {
            nb nbVar = f8686k;
            if (nbVar != null) {
                return nbVar;
            }
            z.f fVarA = z.e.a(Resources.getSystem().getConfiguration());
            kb kbVar = new kb();
            for (int i10 = 0; i10 < fVarA.f(); i10++) {
                kbVar.c(f5.c.b(fVarA.c(i10)));
            }
            nb nbVarD = kbVar.d();
            f8686k = nbVarD;
            return nbVarD;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final String g() {
        return this.f8692e.i() ? (String) this.f8692e.f() : com.google.android.gms.common.internal.i.a().b(this.f8694g);
    }

    final /* synthetic */ String a() {
        return com.google.android.gms.common.internal.i.a().b(this.f8694g);
    }

    final /* synthetic */ void b(ka kaVar, g7 g7Var, String str) {
        kaVar.a(g7Var);
        String strZzd = kaVar.zzd();
        l9 l9Var = new l9();
        l9Var.b(this.f8688a);
        l9Var.c(this.f8689b);
        l9Var.h(f());
        l9Var.g(Boolean.TRUE);
        l9Var.l(strZzd);
        l9Var.j(str);
        l9Var.i(this.f8693f.i() ? (String) this.f8693f.f() : this.f8691d.a());
        l9Var.d(10);
        l9Var.k(Integer.valueOf(this.f8695h));
        kaVar.c(l9Var);
        this.f8690c.a(kaVar);
    }

    public final void c(ka kaVar, g7 g7Var) {
        d(kaVar, g7Var, g());
    }

    public final void d(final ka kaVar, final g7 g7Var, final String str) {
        f5.f.d().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_language_id_common.qa
            @Override // java.lang.Runnable
            public final void run() {
                this.f8634a.b(kaVar, g7Var, str);
            }
        });
    }

    public final void e(com.google.mlkit.nl.languageid.internal.c cVar, g7 g7Var) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f8696i.get(g7Var) != null && jElapsedRealtime - ((Long) this.f8696i.get(g7Var)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            return;
        }
        this.f8696i.put(g7Var, Long.valueOf(jElapsedRealtime));
        d(cVar.a(), g7Var, g());
    }
}
