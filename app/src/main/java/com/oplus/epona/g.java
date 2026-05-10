package com.oplus.epona;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class g implements e {
    @Override // com.oplus.epona.e
    public boolean a(Context context) {
        return context != null && context.checkCallingPermission("com.oplus.permission.safe.SECURITY") == 0;
    }
}
