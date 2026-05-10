package com.google.android.gms.internal.common;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class e extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Looper f8079a;

    public e(Looper looper) {
        super(looper);
        this.f8079a = Looper.getMainLooper();
    }

    public e(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f8079a = Looper.getMainLooper();
    }
}
