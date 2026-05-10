package androidx.window.layout;

import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.layout.WindowLayoutComponent;
import c9.c;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class SafeWindowLayoutComponentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClassLoader f4120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConsumerAdapter f4121b;

    public SafeWindowLayoutComponentProvider(ClassLoader loader, ConsumerAdapter consumerAdapter) {
        r.e(loader, "loader");
        r.e(consumerAdapter, "consumerAdapter");
        this.f4120a = loader;
        this.f4121b = consumerAdapter;
    }

    private final boolean i() {
        return u() && s() && t() && q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j(Method method, c cVar) {
        return k(method, v8.a.a(cVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k(Method method, Class cls) {
        return method.getReturnType().equals(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class l() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.f4120a.loadClass("androidx.window.extensions.layout.FoldingFeature");
        r.d(clsLoadClass, "loader.loadClass(\"androi…s.layout.FoldingFeature\")");
        return clsLoadClass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class m() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.f4120a.loadClass("androidx.window.extensions.WindowExtensions");
        r.d(clsLoadClass, "loader.loadClass(\"androi…nsions.WindowExtensions\")");
        return clsLoadClass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class n() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.f4120a.loadClass("androidx.window.extensions.WindowExtensionsProvider");
        r.d(clsLoadClass, "loader.loadClass(\"androi…indowExtensionsProvider\")");
        return clsLoadClass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class p() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.f4120a.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
        r.d(clsLoadClass, "loader.loadClass(\"androi…t.WindowLayoutComponent\")");
        return clsLoadClass;
    }

    private final boolean q() {
        return v(new SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean r(Method method) {
        return Modifier.isPublic(method.getModifiers());
    }

    private final boolean s() {
        return v(new SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1(this));
    }

    private final boolean t() {
        return v(new SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1(this));
    }

    private final boolean u() {
        return v(new SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1(this));
    }

    private final boolean v(w8.a aVar) {
        try {
            return ((Boolean) aVar.mo8invoke()).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return false;
        }
    }

    public final WindowLayoutComponent o() {
        if (!i()) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
