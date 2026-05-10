package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends t3.a implements IStatusCallback {
    e0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.api.internal.IStatusCallback");
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        throw null;
    }
}
