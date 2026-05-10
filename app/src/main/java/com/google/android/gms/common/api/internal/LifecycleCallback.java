package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleCallback {

    /* JADX INFO: renamed from: a */
    protected final g f7601a;

    protected LifecycleCallback(g gVar) {
        this.f7601a = gVar;
    }

    public static g c(Activity activity) {
        return d(new f(activity));
    }

    protected static g d(f fVar) {
        if (fVar.d()) {
            return z0.n(fVar.b());
        }
        if (fVar.c()) {
            return zzb.f(fVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static g getChimeraLifecycleFragmentImpl(f fVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity b() {
        Activity activityC = this.f7601a.c();
        com.google.android.gms.common.internal.k.g(activityC);
        return activityC;
    }

    public void e(int i10, int i11, Intent intent) {
    }

    public void f(Bundle bundle) {
    }

    public void g() {
    }

    public void h() {
    }

    public void i(Bundle bundle) {
    }

    public void j() {
    }

    public void k() {
    }
}
