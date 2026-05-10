package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class na implements ra {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f8560a;

    public na(Context context, ma maVar) {
        ArrayList arrayList = new ArrayList();
        this.f8560a = arrayList;
        if (maVar.c()) {
            arrayList.add(new ab(context, maVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ra
    public final void a(ka kaVar) {
        Iterator it = this.f8560a.iterator();
        while (it.hasNext()) {
            ((ra) it.next()).a(kaVar);
        }
    }
}
