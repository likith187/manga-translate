package com.google.android.gms.common.internal;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class v extends w {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Intent f7925a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ com.google.android.gms.common.api.internal.g f7926b;

    v(Intent intent, com.google.android.gms.common.api.internal.g gVar, int i10) {
        this.f7925a = intent;
        this.f7926b = gVar;
    }

    @Override // com.google.android.gms.common.internal.w
    public final void a() {
        Intent intent = this.f7925a;
        if (intent != null) {
            this.f7926b.startActivityForResult(intent, 2);
        }
    }
}
