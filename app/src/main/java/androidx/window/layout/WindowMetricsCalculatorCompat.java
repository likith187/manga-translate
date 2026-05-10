package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    public static final WindowMetricsCalculatorCompat INSTANCE = new WindowMetricsCalculatorCompat();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4167a;

    static {
        String simpleName = WindowMetricsCalculatorCompat.class.getSimpleName();
        r.d(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        f4167a = simpleName;
    }

    private WindowMetricsCalculatorCompat() {
    }

    public WindowMetrics a(Activity activity) {
        r.e(activity, "activity");
        return new WindowMetrics(ActivityCompatHelperApi30.INSTANCE.a(activity));
    }
}
