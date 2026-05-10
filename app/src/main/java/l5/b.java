package l5;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private ApplicationInfo b(String str, ProviderInfo providerInfo) {
        ApplicationInfo applicationInfo = providerInfo.applicationInfo;
        for (String str2 : e(applicationInfo, "epona_components")) {
            if (str2.trim().equals(str)) {
                return applicationInfo;
            }
        }
        return null;
    }

    private String c(String str) {
        return str + ".epona";
    }

    private String[] d(Context context) {
        try {
            return e(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128), "epona_packages");
        } catch (PackageManager.NameNotFoundException unused) {
            q5.a.c("AppFinder", "not find application info", new Object[0]);
            return new String[0];
        }
    }

    private String[] e(ApplicationInfo applicationInfo, String str) {
        String string;
        String[] strArr = new String[0];
        Bundle bundle = applicationInfo.metaData;
        return (bundle == null || (string = bundle.getString(str)) == null) ? strArr : string.split("\\|");
    }

    public ApplicationInfo a(String str) {
        ApplicationInfo applicationInfoB;
        Context contextF = com.heytap.epona.c.f();
        if (contextF == null) {
            return null;
        }
        for (String str2 : d(contextF)) {
            ProviderInfo providerInfoResolveContentProvider = contextF.getPackageManager().resolveContentProvider(c(str2), 128);
            if (providerInfoResolveContentProvider != null && (applicationInfoB = b(str, providerInfoResolveContentProvider)) != null) {
                return applicationInfoB;
            }
        }
        return null;
    }
}
