package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class c1 implements Handler.Callback {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ d1 f7823a;

    /* synthetic */ c1(d1 d1Var, b1 b1Var) {
        this.f7823a = d1Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            synchronized (this.f7823a.f7851f) {
                try {
                    z0 z0Var = (z0) message.obj;
                    a1 a1Var = (a1) this.f7823a.f7851f.get(z0Var);
                    if (a1Var != null && a1Var.i()) {
                        if (a1Var.j()) {
                            a1Var.g("GmsClientSupervisor");
                        }
                        this.f7823a.f7851f.remove(z0Var);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i10 != 1) {
            return false;
        }
        synchronized (this.f7823a.f7851f) {
            try {
                z0 z0Var2 = (z0) message.obj;
                a1 a1Var2 = (a1) this.f7823a.f7851f.get(z0Var2);
                if (a1Var2 != null && a1Var2.a() == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + String.valueOf(z0Var2), new Exception());
                    ComponentName componentNameB = a1Var2.b();
                    if (componentNameB == null) {
                        componentNameB = z0Var2.a();
                    }
                    if (componentNameB == null) {
                        String strC = z0Var2.c();
                        k.g(strC);
                        componentNameB = new ComponentName(strC, "unknown");
                    }
                    a1Var2.onServiceDisconnected(componentNameB);
                }
            } finally {
            }
        }
        return true;
    }
}
