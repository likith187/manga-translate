package com.coloros.translate.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.coloros.translate.TranslationApplication;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.List;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c INSTANCE = new c();

    private c() {
    }

    public static final boolean a(String pkgName) {
        kotlin.jvm.internal.r.e(pkgName, "pkgName");
        try {
            r.a aVar = n8.r.Companion;
            PackageInfo packageInfo = TranslationApplication.f4754b.a().getPackageManager().getPackageInfo(pkgName, 0);
            if (packageInfo == null) {
                return false;
            }
            boolean z10 = packageInfo.applicationInfo != null;
            c0.f7098a.i("EnableAppUtil", "checkInstalledApp : " + z10);
            return z10;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("EnableAppUtil", "checkInstalledApp error, " + thM62exceptionOrNullimpl.getMessage());
            }
            return false;
        }
    }

    public static final String b(String packageName) {
        kotlin.jvm.internal.r.e(packageName, "packageName");
        try {
            PackageManager packageManager = m.INSTANCE.a().getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException e10) {
            c0.f7098a.q("EnableAppUtil", "getAppName: exception : " + e10);
            return "";
        }
    }

    public static final boolean c(String packageName, String action) {
        kotlin.jvm.internal.r.e(packageName, "packageName");
        kotlin.jvm.internal.r.e(action, "action");
        Intent intent = new Intent(action);
        intent.setPackage(packageName);
        List<ResolveInfo> listQueryIntentActivities = TranslationApplication.f4754b.a().getPackageManager().queryIntentActivities(intent, 65536);
        kotlin.jvm.internal.r.d(listQueryIntentActivities, "queryIntentActivities(...)");
        boolean z10 = !listQueryIntentActivities.isEmpty();
        c0.f7098a.d("EnableAppUtil", packageName + " hasAction : " + z10);
        return z10;
    }

    public static final boolean d(String packageName, String metaDataName) {
        kotlin.jvm.internal.r.e(packageName, "packageName");
        kotlin.jvm.internal.r.e(metaDataName, "metaDataName");
        boolean z10 = false;
        try {
            ApplicationInfo applicationInfo = TranslationApplication.f4754b.a().getPackageManager().getApplicationInfo(packageName, 128);
            kotlin.jvm.internal.r.d(applicationInfo, "getApplicationInfo(...)");
            z10 = applicationInfo.metaData.getBoolean(metaDataName);
            c0.f7098a.d("EnableAppUtil", "hasMetaData hasMeta : " + z10);
            return z10;
        } catch (PackageManager.NameNotFoundException e10) {
            c0.f7098a.e("EnableAppUtil", "hasMetaData error : " + e10);
            return z10;
        }
    }

    public static final boolean e(String packageName, String metaDataName, int i10) {
        kotlin.jvm.internal.r.e(packageName, "packageName");
        kotlin.jvm.internal.r.e(metaDataName, "metaDataName");
        try {
            ApplicationInfo applicationInfo = TranslationApplication.f4754b.a().getPackageManager().getApplicationInfo(packageName, 128);
            kotlin.jvm.internal.r.d(applicationInfo, "getApplicationInfo(...)");
            z = applicationInfo.metaData.getInt(metaDataName) >= i10;
            c0.f7098a.d("EnableAppUtil", "hasMetaData hasMeta : " + z + " , version : " + i10);
        } catch (PackageManager.NameNotFoundException e10) {
            c0.f7098a.e("EnableAppUtil", "int hasMetaData error : " + e10);
        }
        return z;
    }

    public static final int f(Context context, String packageName) {
        kotlin.jvm.internal.r.e(packageName, "packageName");
        ApplicationInfo applicationInfo = null;
        PackageManager packageManager = context != null ? context.getPackageManager() : null;
        if (packageManager != null) {
            try {
                applicationInfo = packageManager.getApplicationInfo(packageName, ConfigPackage.FRAME_SIZE_1);
            } catch (PackageManager.NameNotFoundException e10) {
                c0.f7098a.e("EnableAppUtil", "isAppInstallEnabled packageName=" + packageName + " is not exist. e = " + e10);
                return 1;
            }
        }
        if (applicationInfo == null) {
            return 1;
        }
        if (applicationInfo.enabled) {
            c0.f7098a.d("EnableAppUtil", "isAppInstallEnabled packageName=" + packageName + " is enabled");
            return 3;
        }
        c0.f7098a.d("EnableAppUtil", "isAppInstallEnabled packageName=" + packageName + " is disabled");
        return 2;
    }
}
