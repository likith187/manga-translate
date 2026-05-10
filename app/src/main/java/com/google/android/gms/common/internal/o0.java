package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class o0 extends com.google.android.gms.internal.common.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f7904b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(d dVar, Looper looper) {
        super(looper);
        this.f7904b = dVar;
    }

    private static final void a(Message message) {
        p0 p0Var = (p0) message.obj;
        p0Var.b();
        p0Var.e();
    }

    private static final boolean b(Message message) {
        int i10 = message.what;
        return i10 == 2 || i10 == 1 || i10 == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f7904b.C.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i10 = message.what;
        if ((i10 == 1 || i10 == 7 || ((i10 == 4 && !this.f7904b.r()) || message.what == 5)) && !this.f7904b.h()) {
            a(message);
            return;
        }
        int i11 = message.what;
        if (i11 == 4) {
            this.f7904b.f7849z = new ConnectionResult(message.arg2);
            if (d.e0(this.f7904b)) {
                d dVar = this.f7904b;
                if (!dVar.A) {
                    dVar.f0(3, null);
                    return;
                }
            }
            d dVar2 = this.f7904b;
            ConnectionResult connectionResult = dVar2.f7849z != null ? dVar2.f7849z : new ConnectionResult(8);
            this.f7904b.f7839p.a(connectionResult);
            this.f7904b.J(connectionResult);
            return;
        }
        if (i11 == 5) {
            d dVar3 = this.f7904b;
            ConnectionResult connectionResult2 = dVar3.f7849z != null ? dVar3.f7849z : new ConnectionResult(8);
            this.f7904b.f7839p.a(connectionResult2);
            this.f7904b.J(connectionResult2);
            return;
        }
        if (i11 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f7904b.f7839p.a(connectionResult3);
            this.f7904b.J(connectionResult3);
            return;
        }
        if (i11 == 6) {
            this.f7904b.f0(5, null);
            d dVar4 = this.f7904b;
            if (dVar4.f7844u != null) {
                dVar4.f7844u.a(message.arg2);
            }
            this.f7904b.K(message.arg2);
            d.d0(this.f7904b, 5, 1, null);
            return;
        }
        if (i11 == 2 && !this.f7904b.isConnected()) {
            a(message);
            return;
        }
        if (b(message)) {
            ((p0) message.obj).c();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
    }
}
