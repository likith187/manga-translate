package s7;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.oplus.aiunit.core.utils.AuthUtil;
import java.util.HashMap;
import java.util.Map;
import m7.i;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f15574a = new HashMap();

    public static String c(Context context) {
        Application application = (Application) context.getApplicationContext();
        Map map = f15574a;
        String str = (String) map.get(application);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strValueOf = null;
        try {
            strValueOf = String.valueOf(context.getPackageManager().getApplicationInfo(e(context), 128).metaData.get("AppCode"));
            if (TextUtils.isEmpty(strValueOf)) {
                f.b("ApkInfoUtil", new g() { // from class: s7.b
                    @Override // s7.g
                    public final Object get() {
                        return d.g();
                    }
                });
            } else {
                map.put(application, strValueOf);
            }
        } catch (Exception e10) {
            f.b("ApkInfoUtil", new i(e10));
            e10.printStackTrace();
        }
        return strValueOf;
    }

    public static String d(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Exception e10) {
            f.b("ApkInfoUtil", new i(e10));
            return AuthUtil.AUTH_STYLE_INNER;
        }
    }

    public static String e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e10) {
            f.b("ApkInfoUtil", new i(e10));
            return AuthUtil.AUTH_STYLE_INNER;
        }
    }

    public static String f(Context context) {
        String str = AuthUtil.AUTH_STYLE_INNER;
        try {
            final PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null) {
                return AuthUtil.AUTH_STYLE_INNER;
            }
            String str2 = packageInfo.versionName;
            if (str2 == null) {
                return AuthUtil.AUTH_STYLE_INNER;
            }
            try {
                f.c("ApkInfoUtil", new g() { // from class: s7.c
                    @Override // s7.g
                    public final Object get() {
                        return d.h(packageInfo);
                    }
                });
                return str2;
            } catch (Exception e10) {
                e = e10;
                str = str2;
            }
        } catch (Exception e11) {
            e = e11;
        }
        f.b("ApkInfoUtil", new i(e));
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g() {
        return "AppCode not set. please read the document of OplusTrack SDK.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(PackageInfo packageInfo) {
        return "versionName=" + packageInfo.versionName;
    }

    public static void i(Context context, String str) {
        f15574a.put((Application) context.getApplicationContext(), str);
    }
}
