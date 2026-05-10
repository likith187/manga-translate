package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityCompatHelperApi30 {
    public static final ActivityCompatHelperApi30 INSTANCE = new ActivityCompatHelperApi30();

    private ActivityCompatHelperApi30() {
    }

    public final Rect a(Activity activity) {
        r.e(activity, "activity");
        Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
        r.d(bounds, "activity.windowManager.currentWindowMetrics.bounds");
        return bounds;
    }
}
