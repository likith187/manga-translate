package androidx.window.layout;

import android.util.Log;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowInfoTracker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes.dex */
final class WindowInfoTracker$Companion$extensionBackend$2 extends s implements w8.a {
    public static final WindowInfoTracker$Companion$extensionBackend$2 INSTANCE = new WindowInfoTracker$Companion$extensionBackend$2();

    WindowInfoTracker$Companion$extensionBackend$2() {
        super(0);
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final ExtensionWindowLayoutInfoBackend mo8invoke() {
        WindowLayoutComponent windowLayoutComponentO;
        try {
            ClassLoader loader = WindowInfoTracker.class.getClassLoader();
            SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = loader != null ? new SafeWindowLayoutComponentProvider(loader, new ConsumerAdapter(loader)) : null;
            if (safeWindowLayoutComponentProvider == null || (windowLayoutComponentO = safeWindowLayoutComponentProvider.o()) == null) {
                return null;
            }
            r.d(loader, "loader");
            return new ExtensionWindowLayoutInfoBackend(windowLayoutComponentO, new ConsumerAdapter(loader));
        } catch (Throwable unused) {
            if (!WindowInfoTracker.Companion.f4156b) {
                return null;
            }
            Log.d(WindowInfoTracker.Companion.f4157c, "Failed to load WindowExtensions");
            return null;
        }
    }
}
