package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public abstract class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7684a;

    public s0(int i10) {
        this.f7684a = i10;
    }

    static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(Status status);

    public abstract void b(Exception exc);

    public abstract void c(x xVar);

    public abstract void d(o oVar, boolean z10);
}
