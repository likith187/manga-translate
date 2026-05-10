package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f8081a;

    public e0(Context context, d0 d0Var) {
        ArrayList arrayList = new ArrayList();
        this.f8081a = arrayList;
        if (d0Var.c()) {
            arrayList.add(new m0(context, d0Var));
        }
    }
}
