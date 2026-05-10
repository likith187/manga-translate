package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class f extends t3.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f7759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ a f7760c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(a aVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f7760c = aVar;
        this.f7759b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i10);
            return;
        }
        a aVar = this.f7760c;
        int iF = aVar.f(this.f7759b);
        if (aVar.i(iF)) {
            this.f7760c.n(this.f7759b, iF);
        }
    }
}
