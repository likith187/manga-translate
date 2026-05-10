package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionResult f7687b;

    t0(ConnectionResult connectionResult, int i10) {
        com.google.android.gms.common.internal.k.g(connectionResult);
        this.f7687b = connectionResult;
        this.f7686a = i10;
    }

    final int a() {
        return this.f7686a;
    }

    final ConnectionResult b() {
        return this.f7687b;
    }
}
