package com.google.mlkit.nl.languageid.internal;

import android.os.SystemClock;
import androidx.lifecycle.c0;
import androidx.lifecycle.l;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.internal.mlkit_language_id_common.a7;
import com.google.android.gms.internal.mlkit_language_id_common.c7;
import com.google.android.gms.internal.mlkit_language_id_common.d8;
import com.google.android.gms.internal.mlkit_language_id_common.db;
import com.google.android.gms.internal.mlkit_language_id_common.e7;
import com.google.android.gms.internal.mlkit_language_id_common.e8;
import com.google.android.gms.internal.mlkit_language_id_common.f7;
import com.google.android.gms.internal.mlkit_language_id_common.g7;
import com.google.android.gms.internal.mlkit_language_id_common.h7;
import com.google.android.gms.internal.mlkit_language_id_common.h8;
import com.google.android.gms.internal.mlkit_language_id_common.k8;
import com.google.android.gms.internal.mlkit_language_id_common.ka;
import com.google.android.gms.internal.mlkit_language_id_common.l8;
import com.google.android.gms.internal.mlkit_language_id_common.sa;
import com.google.android.gms.internal.mlkit_language_id_common.u6;
import com.google.android.gms.internal.mlkit_language_id_common.ua;
import com.google.android.gms.internal.mlkit_language_id_common.va;
import f5.g;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import w3.i;

/* JADX INFO: loaded from: classes.dex */
public class a implements h5.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h5.b f10767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final sa f10768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ua f10769c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f10770f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicReference f10771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w3.b f10772i = new w3.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final e7 f10773j;

    /* JADX INFO: renamed from: com.google.mlkit.nl.languageid.internal.a$a, reason: collision with other inner class name */
    public static final class C0122a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final sa f10774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f10775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f5.d f10776c;

        public C0122a(d dVar, f5.d dVar2) {
            this.f10775b = dVar;
            this.f10776c = dVar2;
            this.f10774a = db.b(true != dVar.l() ? "play-services-mlkit-language-id" : "language-id");
        }

        public h5.c a(h5.b bVar) {
            this.f10775b.k(bVar);
            return a.c(bVar, this.f10775b, this.f10774a, this.f10776c);
        }
    }

    private a(h5.b bVar, d dVar, sa saVar, Executor executor) {
        this.f10767a = bVar;
        this.f10768b = saVar;
        this.f10770f = executor;
        this.f10771h = new AtomicReference(dVar);
        this.f10773j = dVar.l() ? e7.TYPE_THICK : e7.TYPE_THIN;
        this.f10769c = ua.a(g.c().b());
    }

    public static h5.c c(h5.b bVar, d dVar, sa saVar, f5.d dVar2) {
        a aVar = new a(bVar, dVar, saVar, dVar2.a(bVar.b()));
        sa saVar2 = aVar.f10768b;
        h7 h7Var = new h7();
        h7Var.c(aVar.f10773j);
        d8 d8Var = new d8();
        d8Var.e(x(aVar.f10767a.a()));
        h7Var.e(d8Var.h());
        saVar2.c(va.e(h7Var, 1), g7.ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE);
        ((d) aVar.f10771h.get()).d();
        return aVar;
    }

    private final void v(long j10, boolean z10, l8 l8Var, k8 k8Var, f7 f7Var) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        this.f10768b.e(new c(this, jElapsedRealtime, z10, f7Var, l8Var, k8Var), g7.ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f10769c.c(this.f10773j == e7.TYPE_THICK ? 24603 : 24602, f7Var.zza(), jCurrentTimeMillis - jElapsedRealtime, jCurrentTimeMillis);
    }

    private static final c7 x(Float f10) {
        a7 a7Var = new a7();
        a7Var.a(Float.valueOf(f10 == null ? -1.0f : f10.floatValue()));
        return a7Var.b();
    }

    @Override // h5.c
    public final i V(final String str) {
        k.h(str, "Text can not be null");
        final d dVar = (d) this.f10771h.get();
        k.k(dVar != null, "LanguageIdentification has been closed");
        final boolean zB = true ^ dVar.b();
        return dVar.a(this.f10770f, new Callable() { // from class: com.google.mlkit.nl.languageid.internal.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10777a.k(dVar, str, zB);
            }
        }, this.f10772i.b());
    }

    @Override // h5.c, java.io.Closeable, java.lang.AutoCloseable
    @c0(l.a.ON_DESTROY)
    public void close() {
        d dVar = (d) this.f10771h.getAndSet(null);
        if (dVar == null) {
            return;
        }
        this.f10772i.a();
        dVar.f(this.f10770f);
        sa saVar = this.f10768b;
        h7 h7Var = new h7();
        h7Var.c(this.f10773j);
        d8 d8Var = new d8();
        d8Var.e(x(this.f10767a.a()));
        h7Var.e(d8Var.h());
        saVar.c(va.e(h7Var, 1), g7.ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE);
    }

    final /* synthetic */ ka i(long j10, boolean z10, f7 f7Var, l8 l8Var, k8 k8Var) {
        d8 d8Var = new d8();
        d8Var.e(x(this.f10767a.a()));
        u6 u6Var = new u6();
        u6Var.a(Long.valueOf(j10));
        u6Var.c(Boolean.valueOf(z10));
        u6Var.b(f7Var);
        d8Var.d(u6Var.d());
        if (k8Var != null) {
            d8Var.c(k8Var);
        }
        h7 h7Var = new h7();
        h7Var.c(this.f10773j);
        h7Var.e(d8Var.h());
        return va.d(h7Var);
    }

    final /* synthetic */ String k(d dVar, String str, boolean z10) {
        k8 k8VarC;
        Float fA = this.f10767a.a();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            String strJ = dVar.j(str.substring(0, Math.min(str.length(), 200)), fA != null ? fA.floatValue() : 0.5f);
            if (strJ == null) {
                k8VarC = null;
            } else {
                h8 h8Var = new h8();
                e8 e8Var = new e8();
                e8Var.a(strJ);
                h8Var.b(e8Var.b());
                k8VarC = h8Var.c();
            }
            v(jElapsedRealtime, z10, null, k8VarC, f7.NO_ERROR);
            return strJ;
        } catch (RuntimeException e10) {
            v(jElapsedRealtime, z10, null, null, f7.UNKNOWN_ERROR);
            throw e10;
        }
    }
}
