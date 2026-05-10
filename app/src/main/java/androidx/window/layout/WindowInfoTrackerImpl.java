package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.flow.d;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInfoTrackerImpl implements WindowInfoTracker {

    /* JADX INFO: renamed from: d */
    public static final Companion f4160d = new Companion(null);

    /* JADX INFO: renamed from: b */
    private final WindowMetricsCalculator f4161b;

    /* JADX INFO: renamed from: c */
    private final WindowBackend f4162c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public WindowInfoTrackerImpl(WindowMetricsCalculator windowMetricsCalculator, WindowBackend windowBackend) {
        r.e(windowMetricsCalculator, "windowMetricsCalculator");
        r.e(windowBackend, "windowBackend");
        this.f4161b = windowMetricsCalculator;
        this.f4162c = windowBackend;
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public kotlinx.coroutines.flow.b a(Activity activity) {
        r.e(activity, "activity");
        return d.a(new WindowInfoTrackerImpl$windowLayoutInfo$1(this, activity, null));
    }
}
