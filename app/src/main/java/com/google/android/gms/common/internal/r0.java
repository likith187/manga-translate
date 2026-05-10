package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class r0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f7911b;

    public r0(d dVar, int i10) {
        this.f7911b = dVar;
        this.f7910a = i10;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            d.a0(this.f7911b, 16);
            return;
        }
        synchronized (this.f7911b.f7837n) {
            try {
                d dVar = this.f7911b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                dVar.f7838o = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGmsServiceBroker)) ? new i0(iBinder) : (IGmsServiceBroker) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f7911b.b0(0, null, this.f7910a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f7911b.f7837n) {
            this.f7911b.f7838o = null;
        }
        d dVar = this.f7911b;
        int i10 = this.f7910a;
        Handler handler = dVar.f7835l;
        handler.sendMessage(handler.obtainMessage(6, i10, 1));
    }
}
