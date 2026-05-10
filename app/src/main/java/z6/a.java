package z6;

import android.app.ActivityManager;
import android.content.Context;
import com.oplus.epona.d;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    private static String a(Context context, int i10) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return "";
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = activityManager.getRunningAppProcesses().iterator();
        while (it.hasNext()) {
            ActivityManager.RunningAppProcessInfo next = it.next();
            try {
                if (next.pid == i10) {
                    return c(next);
                }
                continue;
            } catch (Exception e10) {
                c8.a.d("Epona->PackageUtils", "get processName form running app processes exception %s", e10.getMessage());
            }
        }
        return "";
    }

    public static String b(int i10, int i11) {
        Context contextG = d.g();
        if (contextG == null) {
            return "";
        }
        String[] packagesForUid = contextG.getPackageManager().getPackagesForUid(i10);
        return (packagesForUid == null || packagesForUid.length != 1) ? a(contextG, i11) : packagesForUid[0];
    }

    private static String c(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        String[] strArr = runningAppProcessInfo.pkgList;
        if (strArr != null && strArr.length != 0) {
            return strArr[0];
        }
        String str = runningAppProcessInfo.processName;
        return str.contains(":") ? str.substring(0, str.indexOf(":")) : str;
    }
}
