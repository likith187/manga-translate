package com.oplus.tingle.ipc;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static void a(Context context) {
        if (context.getApplicationInfo().packageName.equals(t7.a.a())) {
            return;
        }
        e.a(context);
    }
}
