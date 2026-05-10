package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: i */
    private static final h f8087i = h.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");

    /* JADX INFO: renamed from: a */
    private final String f8088a;

    /* JADX INFO: renamed from: b */
    private final String f8089b;

    /* JADX INFO: renamed from: c */
    private final a0 f8090c;

    /* JADX INFO: renamed from: d */
    private final f5.j f8091d;

    /* JADX INFO: renamed from: e */
    private final w3.i f8092e;

    /* JADX INFO: renamed from: f */
    private final w3.i f8093f;

    /* JADX INFO: renamed from: g */
    private final String f8094g;

    /* JADX INFO: renamed from: h */
    private final int f8095h;

    public h0(Context context, final f5.j jVar, a0 a0Var, String str) {
        new HashMap();
        new HashMap();
        this.f8088a = context.getPackageName();
        this.f8089b = f5.c.a(context);
        this.f8091d = jVar;
        this.f8090c = a0Var;
        r0.a();
        this.f8094g = str;
        this.f8092e = f5.f.a().b(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.f0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8085a.a();
            }
        });
        f5.f fVarA = f5.f.a();
        Objects.requireNonNull(jVar);
        this.f8093f = fVarA.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.g0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return jVar.a();
            }
        });
        h hVar = f8087i;
        this.f8095h = hVar.containsKey(str) ? DynamiteModule.a(context, (String) hVar.get(str)) : -1;
    }

    final /* synthetic */ String a() {
        return com.google.android.gms.common.internal.i.a().b(this.f8094g);
    }
}
