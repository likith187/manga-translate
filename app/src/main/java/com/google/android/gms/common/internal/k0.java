package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f7894a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f7895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f7896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7897d;

    public static int a(Context context) {
        b(context);
        return f7897d;
    }

    private static void b(Context context) {
        synchronized (f7894a) {
            try {
                if (f7895b) {
                    return;
                }
                f7895b = true;
                try {
                    Bundle bundle = s3.c.a(context).a(context.getPackageName(), 128).metaData;
                    if (bundle == null) {
                        return;
                    }
                    f7896c = bundle.getString("com.google.app.id");
                    f7897d = bundle.getInt("com.google.android.gms.version");
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
