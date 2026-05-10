package com.google.android.gms.common.api.internal;

import android.app.Dialog;

/* JADX INFO: loaded from: classes.dex */
final class u0 extends d0 {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Dialog f7690a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ v0 f7691b;

    u0(v0 v0Var, Dialog dialog) {
        this.f7691b = v0Var;
        this.f7690a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.d0
    public final void a() {
        this.f7691b.f7694b.o();
        if (this.f7690a.isShowing()) {
            this.f7690a.dismiss();
        }
    }
}
