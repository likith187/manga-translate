package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.internal.o;

/* JADX INFO: loaded from: classes.dex */
final class c extends a.AbstractC0103a {
    c() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0103a
    public final /* synthetic */ a.f b(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, Object obj, com.google.android.gms.common.api.internal.d dVar, j jVar) {
        return new e(context, looper, eVar, (o) obj, dVar, jVar);
    }
}
