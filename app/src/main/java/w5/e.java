package w5;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static String a(Context context, int i10) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String strSubstring = "";
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                try {
                    if (runningAppProcessInfo.pid == i10) {
                        String[] strArr = runningAppProcessInfo.pkgList;
                        if (strArr == null || strArr.length == 0) {
                            strSubstring = runningAppProcessInfo.processName;
                            if (strSubstring.contains(":")) {
                                strSubstring = strSubstring.substring(0, strSubstring.indexOf(":"));
                            }
                        } else {
                            strSubstring = strArr[0];
                        }
                    }
                } catch (Exception e10) {
                    d.c("get exception " + e10.getMessage());
                }
            }
        }
        return strSubstring;
    }

    public static String b(Context context, String str) {
        String strE = e(context, str, "AppPlatformKey");
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        d.b("Start to get AppPlatformCode.");
        return e(context, str, "AppPlatformCode");
    }

    public static String c(Context context, int i10, int i11) {
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i10);
        return (packagesForUid == null || packagesForUid.length != 1) ? a(context, i11) : packagesForUid[0];
    }

    public static int d(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 128).uid;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String e(Context context, String str, String str2) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            return (bundle == null || !bundle.containsKey(str2)) ? "" : bundle.getString(str2);
        } catch (PackageManager.NameNotFoundException e10) {
            d.c("Unable to fetch metadata from teh manifest " + e10.getMessage());
            throw new RuntimeException("Unable to fetch metadata from teh manifest", e10);
        }
    }
}
