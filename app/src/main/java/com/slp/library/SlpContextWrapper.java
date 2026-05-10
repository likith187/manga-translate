package com.slp.library;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class SlpContextWrapper extends ContextWrapper {
    public SlpContextWrapper(Context context) {
        super(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        return applicationContext == null ? this : applicationContext;
    }
}
