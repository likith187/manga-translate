package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class u extends w {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Intent f7922a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ Activity f7923b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ int f7924c;

    u(Intent intent, Activity activity, int i10) {
        this.f7922a = intent;
        this.f7923b = activity;
        this.f7924c = i10;
    }

    @Override // com.google.android.gms.common.internal.w
    public final void a() {
        Intent intent = this.f7922a;
        if (intent != null) {
            this.f7923b.startActivityForResult(intent, this.f7924c);
        }
    }
}
