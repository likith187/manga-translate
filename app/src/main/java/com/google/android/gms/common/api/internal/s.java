package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: classes.dex */
final class s implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f7683a;

    s(e eVar) {
        this.f7683a = eVar;
    }

    @Override // com.google.android.gms.common.api.internal.c.a
    public final void a(boolean z10) {
        e eVar = this.f7683a;
        eVar.f7637n.sendMessage(eVar.f7637n.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
