package l8;

import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f13634a = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f13635b = "/sdcard/oua/debug";

    public static boolean a() {
        return f13634a <= 3;
    }

    public static boolean b() {
        return f13634a <= 4;
    }

    public static boolean c() {
        return f13634a <= 2;
    }

    public static void d(String str, String str2) {
        if (a()) {
            Log.d(str, str2);
        }
    }

    public static void e(String str, String str2, Object obj) {
        if (a()) {
            try {
                Log.d(str, String.format("%s:%s", str2, e.a(obj)));
            } catch (Exception e10) {
                Log.w(str, String.format("log %s error!  %s", str2, e10.toString()));
            }
        }
    }

    public static void f(String str, String str2) {
        Log.e(str, str2);
    }

    public static void g(String str, String str2) {
        if (b()) {
            Log.i(str, str2);
        }
    }

    public static void h(int i10, String str) {
        f13634a = i10;
        f13635b = str;
        if (!c() || str == null) {
            return;
        }
        new File(str).mkdirs();
    }
}
