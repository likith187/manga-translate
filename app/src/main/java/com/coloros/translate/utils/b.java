package com.coloros.translate.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b INSTANCE = new b();

    private b() {
    }

    public static final String a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        int callingUid = Binder.getCallingUid();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(callingUid);
            return sb.toString();
        }
        String[] packagesForUid = packageManager.getPackagesForUid(callingUid);
        if (packagesForUid == null || packagesForUid.length == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(callingUid);
            return sb2.toString();
        }
        String str = packagesForUid[0];
        kotlin.jvm.internal.r.d(str, "get(...)");
        return str;
    }
}
