package com.google.android.gms.common.internal;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class h1 extends com.google.android.gms.internal.common.a implements ICancelToken {
    h1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override // com.google.android.gms.common.internal.ICancelToken
    public final void cancel() {
        c(2, d());
    }
}
