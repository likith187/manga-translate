package m7;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import m7.b;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: d */
    private static Map f13875d = new HashMap();

    /* JADX INFO: renamed from: a */
    private final String f13876a;

    /* JADX INFO: renamed from: b */
    private final Context f13877b;

    /* JADX INFO: renamed from: c */
    private b f13878c;

    private d(String str, Context context, b bVar) {
        this.f13876a = str;
        this.f13877b = context;
        this.f13878c = bVar != null ? c(context, bVar) : b(context);
    }

    private b b(Context context) {
        PackageInfo packageInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            s7.f.f("OTrackContext", new s7.g() { // from class: m7.c
                @Override // s7.g
                public final Object get() {
                    return d.g();
                }
            });
            packageInfo = null;
        }
        return packageInfo == null ? b.f13864f : new b.C0180b().h(packageInfo.packageName).i(packageInfo.versionName).g(packageInfo.applicationInfo.loadLabel(packageManager).toString()).f();
    }

    private b c(Context context, b bVar) {
        if (TextUtils.isEmpty(bVar.d())) {
            bVar.g(s7.d.e(context));
        }
        if (TextUtils.isEmpty(bVar.e())) {
            bVar.h(s7.d.f(context));
        }
        if (TextUtils.isEmpty(bVar.a())) {
            bVar.f(s7.d.d(context));
        }
        return bVar;
    }

    public static synchronized d d(String str, Context context, b bVar) {
        d dVarE;
        dVarE = e(str);
        if (dVarE == null) {
            dVarE = new d(str, context, bVar);
            f13875d.put(str, dVarE);
        }
        return dVarE;
    }

    public static synchronized d e(String str) {
        return (d) f13875d.get(str);
    }

    public static /* synthetic */ String g() {
        return "createDefaultConfig PackageManager.NameNotFoundException.";
    }

    public b f() {
        if (b.f13864f.equals(this.f13878c)) {
            this.f13878c = b(this.f13877b);
        }
        return this.f13878c;
    }
}
