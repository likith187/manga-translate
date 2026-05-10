package k2;

import android.content.Context;
import android.provider.Settings;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f12894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f12895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f12896c;

    public static int a() {
        return f12896c;
    }

    public static int b() {
        return f12895b;
    }

    public static int c() {
        return f12894a;
    }

    public static int d(Context context) {
        return ((WindowManager) context.getSystemService("window")).getCurrentWindowMetrics().getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.statusBars()).top;
    }

    public static boolean e(Context context) {
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "navigation_gesture") == 0;
        } catch (Settings.SettingNotFoundException e10) {
            c0.j("SystemUtils", "hasNavigationBar exception: " + e10.getMessage());
            return false;
        }
    }
}
