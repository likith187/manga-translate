package com.google.android.gms.common.internal.service;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import w3.i;
import w3.j;

/* JADX INFO: loaded from: classes.dex */
public final class d extends com.google.android.gms.common.api.d implements n {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final a.g f7915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final a.AbstractC0103a f7916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f7917m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f7918n = 0;

    static {
        a.g gVar = new a.g();
        f7915k = gVar;
        c cVar = new c();
        f7916l = cVar;
        f7917m = new com.google.android.gms.common.api.a("ClientTelemetry.API", cVar, gVar);
    }

    public d(Context context, o oVar) {
        super(context, f7917m, oVar, d.a.f7595c);
    }

    @Override // com.google.android.gms.common.internal.n
    public final i a(final TelemetryData telemetryData) {
        m.a aVarA = m.a();
        aVarA.d(t3.d.f15699a);
        aVarA.c(false);
        aVarA.b(new k() { // from class: com.google.android.gms.common.internal.service.b
            @Override // com.google.android.gms.common.api.internal.k
            public final void accept(Object obj, Object obj2) {
                int i10 = d.f7918n;
                ((a) ((e) obj).B()).e(telemetryData);
                ((j) obj2).c(null);
            }
        });
        return c(aVarA.a());
    }
}
