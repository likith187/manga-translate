package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static com.google.android.gms.common.api.b a(Status status) {
        return status.H0() ? new com.google.android.gms.common.api.f(status) : new com.google.android.gms.common.api.b(status);
    }
}
