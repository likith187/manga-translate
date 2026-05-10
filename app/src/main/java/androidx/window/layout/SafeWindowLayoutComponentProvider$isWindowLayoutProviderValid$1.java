package androidx.window.layout;

import java.lang.reflect.Method;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes.dex */
final class SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1 extends s implements w8.a {
    final /* synthetic */ SafeWindowLayoutComponentProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) {
        super(0);
        this.this$0 = safeWindowLayoutComponentProvider;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final Boolean mo8invoke() throws NoSuchMethodException, ClassNotFoundException {
        Method getWindowExtensionsMethod = this.this$0.n().getDeclaredMethod("getWindowExtensions", null);
        Class clsM = this.this$0.m();
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = this.this$0;
        r.d(getWindowExtensionsMethod, "getWindowExtensionsMethod");
        return Boolean.valueOf(safeWindowLayoutComponentProvider.k(getWindowExtensionsMethod, clsM) && this.this$0.r(getWindowExtensionsMethod));
    }
}
