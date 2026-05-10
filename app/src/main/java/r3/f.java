package r3;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f15432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f15433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f15434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f15435d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f15435d == null) {
            boolean z10 = false;
            if (j.f() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z10 = true;
            }
            f15435d = Boolean.valueOf(z10);
        }
        return f15435d.booleanValue();
    }

    public static boolean b(Context context) {
        return f(context.getPackageManager());
    }

    public static boolean c(Context context) {
        if (b(context) && !j.e()) {
            return true;
        }
        if (d(context)) {
            return !j.f() || j.h();
        }
        return false;
    }

    public static boolean d(Context context) {
        if (f15433b == null) {
            boolean z10 = false;
            if (j.d() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z10 = true;
            }
            f15433b = Boolean.valueOf(z10);
        }
        return f15433b.booleanValue();
    }

    public static boolean e(Context context) {
        if (f15434c == null) {
            boolean z10 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z10 = false;
            }
            f15434c = Boolean.valueOf(z10);
        }
        return f15434c.booleanValue();
    }

    public static boolean f(PackageManager packageManager) {
        if (f15432a == null) {
            boolean z10 = false;
            if (j.c() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z10 = true;
            }
            f15432a = Boolean.valueOf(z10);
        }
        return f15432a.booleanValue();
    }
}
