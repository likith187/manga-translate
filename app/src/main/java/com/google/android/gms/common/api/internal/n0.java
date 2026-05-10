package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.m;

/* JADX INFO: loaded from: classes.dex */
final class n0 extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ m.a f7672d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    n0(m.a aVar, Feature[] featureArr, boolean z10, int i10) {
        super(featureArr, z10, i10);
        this.f7672d = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.m
    protected final void b(a.b bVar, w3.j jVar) {
        this.f7672d.f7658a.accept(bVar, jVar);
    }
}
