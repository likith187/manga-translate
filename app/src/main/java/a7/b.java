package a7;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f105a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f106b = false;

    public static boolean a() {
        return f106b;
    }

    public static boolean b() {
        return f105a;
    }

    public static void c(String str) {
        d("PhysicsWorld", str);
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }
}
