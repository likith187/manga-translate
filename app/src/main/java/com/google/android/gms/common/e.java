package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: b */
    private static e f7757b;

    /* JADX INFO: renamed from: a */
    private final Context f7758a;

    public e(Context context) {
        this.f7758a = context.getApplicationContext();
    }

    public static e a(Context context) {
        com.google.android.gms.common.internal.k.g(context);
        synchronized (e.class) {
            try {
                if (f7757b == null) {
                    q.a(context);
                    f7757b = new e(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f7757b;
    }

    static final m b(PackageInfo packageInfo, m... mVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            n nVar = new n(packageInfo.signatures[0].toByteArray());
            for (int i10 = 0; i10 < mVarArr.length; i10++) {
                if (mVarArr[i10].equals(nVar)) {
                    return mVarArr[i10];
                }
            }
        }
        return null;
    }

    public static final boolean c(PackageInfo packageInfo, boolean z10) {
        PackageInfo packageInfo2;
        if (!z10) {
            packageInfo2 = packageInfo;
        } else if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z10 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
            packageInfo2 = packageInfo;
        } else {
            packageInfo2 = null;
        }
        if (packageInfo != null && packageInfo2.signatures != null) {
            if ((z10 ? b(packageInfo2, p.f7978a) : b(packageInfo2, p.f7978a[0])) != null) {
                return true;
            }
        }
        return false;
    }
}
