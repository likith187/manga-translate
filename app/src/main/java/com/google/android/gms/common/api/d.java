package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.t;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c0;
import com.google.android.gms.common.api.internal.l;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.api.internal.m0;
import com.google.android.gms.common.api.internal.p;
import com.google.android.gms.common.api.internal.x;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a */
    private final Context f7585a;

    /* JADX INFO: renamed from: b */
    private final String f7586b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.gms.common.api.a f7587c;

    /* JADX INFO: renamed from: d */
    private final a.d f7588d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.gms.common.api.internal.b f7589e;

    /* JADX INFO: renamed from: f */
    private final Looper f7590f;

    /* JADX INFO: renamed from: g */
    private final int f7591g;

    /* JADX INFO: renamed from: h */
    private final e f7592h;

    /* JADX INFO: renamed from: i */
    private final l f7593i;

    /* JADX INFO: renamed from: j */
    protected final com.google.android.gms.common.api.internal.e f7594j;

    public static class a {

        /* JADX INFO: renamed from: c */
        public static final a f7595c = new C0104a().a();

        /* JADX INFO: renamed from: a */
        public final l f7596a;

        /* JADX INFO: renamed from: b */
        public final Looper f7597b;

        /* JADX INFO: renamed from: com.google.android.gms.common.api.d$a$a */
        public static class C0104a {

            /* JADX INFO: renamed from: a */
            private l f7598a;

            /* JADX INFO: renamed from: b */
            private Looper f7599b;

            public a a() {
                if (this.f7598a == null) {
                    this.f7598a = new com.google.android.gms.common.api.internal.a();
                }
                if (this.f7599b == null) {
                    this.f7599b = Looper.getMainLooper();
                }
                return new a(this.f7598a, this.f7599b);
            }
        }

        private a(l lVar, Account account, Looper looper) {
            this.f7596a = lVar;
            this.f7597b = looper;
        }

        /* synthetic */ a(l lVar, Account account, Looper looper, h hVar) {
            this(lVar, null, looper);
        }
    }

    private d(Context context, Activity activity, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        k.h(context, "Null context is not permitted.");
        k.h(aVar, "Api must not be null.");
        k.h(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context context2 = (Context) k.h(context.getApplicationContext(), "The provided context did not have an application context.");
        this.f7585a = context2;
        String attributionTag = context.getAttributionTag();
        this.f7586b = attributionTag;
        this.f7587c = aVar;
        this.f7588d = dVar;
        this.f7590f = aVar2.f7597b;
        com.google.android.gms.common.api.internal.b bVarA = com.google.android.gms.common.api.internal.b.a(aVar, dVar, attributionTag);
        this.f7589e = bVarA;
        this.f7592h = new c0(this);
        com.google.android.gms.common.api.internal.e eVarT = com.google.android.gms.common.api.internal.e.t(context2);
        this.f7594j = eVarT;
        this.f7591g = eVarT.k();
        this.f7593i = aVar2.f7596a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            p.u(activity, eVarT, bVarA);
        }
        eVarT.D(this);
    }

    private final w3.i i(int i10, m mVar) {
        w3.j jVar = new w3.j();
        this.f7594j.z(this, i10, mVar, jVar, this.f7593i);
        return jVar.a();
    }

    protected e.a b() {
        e.a aVar = new e.a();
        aVar.d(null);
        aVar.c(Collections.emptySet());
        aVar.e(this.f7585a.getClass().getName());
        aVar.b(this.f7585a.getPackageName());
        return aVar;
    }

    public w3.i c(m mVar) {
        return i(2, mVar);
    }

    public final com.google.android.gms.common.api.internal.b d() {
        return this.f7589e;
    }

    protected String e() {
        return this.f7586b;
    }

    public final int f() {
        return this.f7591g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final a.f g(Looper looper, x xVar) {
        com.google.android.gms.common.internal.e eVarA = b().a();
        a.f fVarA = ((a.AbstractC0103a) k.g(this.f7587c.a())).a(this.f7585a, looper, eVarA, this.f7588d, xVar, xVar);
        String strE = e();
        if (strE != null && (fVarA instanceof com.google.android.gms.common.internal.d)) {
            ((com.google.android.gms.common.internal.d) fVarA).N(strE);
        }
        if (strE == null || !(fVarA instanceof com.google.android.gms.common.api.internal.i)) {
            return fVarA;
        }
        t.a(fVarA);
        throw null;
    }

    public final m0 h(Context context, Handler handler) {
        return new m0(context, handler, b().a());
    }

    public d(Context context, com.google.android.gms.common.api.a aVar, a.d dVar, a aVar2) {
        this(context, null, aVar, dVar, aVar2);
    }
}
