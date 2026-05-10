package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class zabx extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f7725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f7726b;

    public zabx(d0 d0Var) {
        this.f7726b = d0Var;
    }

    public final void a(Context context) {
        this.f7725a = context;
    }

    public final synchronized void b() {
        try {
            Context context = this.f7725a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f7725a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f7726b.a();
            b();
        }
    }
}
