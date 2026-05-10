package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public interface WindowInfoTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f4154a = Companion.f4155a;

    public static final class Companion {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final boolean f4156b = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f4155a = new Companion();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f4157c = d0.b(WindowInfoTracker.class).c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final j f4158d = k.b(WindowInfoTracker$Companion$extensionBackend$2.INSTANCE);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static WindowInfoTrackerDecorator f4159e = EmptyDecorator.INSTANCE;

        private Companion() {
        }

        public final WindowBackend c() {
            return (WindowBackend) f4158d.getValue();
        }

        public final WindowInfoTracker d(Context context) {
            r.e(context, "context");
            WindowBackend windowBackendC = c();
            if (windowBackendC == null) {
                windowBackendC = SidecarWindowBackend.f4144c.a(context);
            }
            return f4159e.a(new WindowInfoTrackerImpl(WindowMetricsCalculatorCompat.INSTANCE, windowBackendC));
        }
    }

    kotlinx.coroutines.flow.b a(Activity activity);
}
