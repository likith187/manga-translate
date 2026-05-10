package s3;

import android.content.Context;
import r3.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f15532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f15533b;

    public static synchronized boolean a(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f15532a;
        if (context2 != null && (bool = f15533b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f15533b = null;
        if (j.f()) {
            f15533b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f15533b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                f15533b = Boolean.FALSE;
            }
        }
        f15532a = applicationContext;
        return f15533b.booleanValue();
    }
}
