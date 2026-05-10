package com.heytap.shield.authcode.dao;

import android.content.Context;
import androidx.room.g;
import androidx.room.h;
import t5.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class AuthenticationDb extends h {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile AuthenticationDb f10821l;

    public static AuthenticationDb t(Context context) {
        if (f10821l == null) {
            synchronized (AuthenticationDb.class) {
                try {
                    if (f10821l == null) {
                        f10821l = (AuthenticationDb) g.a(context.getApplicationContext(), AuthenticationDb.class, "authentication.db").b().c();
                    }
                } finally {
                }
            }
        }
        return f10821l;
    }

    public abstract a s();
}
