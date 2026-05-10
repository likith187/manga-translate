package f5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.android.gms.common.internal.h f11928a = new com.google.android.gms.common.internal.h("CommonUtils", "");

    public static String a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e10) {
            f11928a.c("CommonUtils", "Exception thrown when trying to get app version ".concat(e10.toString()));
            return "";
        }
    }

    public static String b(Locale locale) {
        if (r3.j.d()) {
            return locale.toLanguageTag();
        }
        StringBuilder sb = new StringBuilder(locale.getLanguage());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        if (!TextUtils.isEmpty(locale.getVariant())) {
            sb.append("-");
            sb.append(locale.getVariant());
        }
        return sb.toString();
    }
}
