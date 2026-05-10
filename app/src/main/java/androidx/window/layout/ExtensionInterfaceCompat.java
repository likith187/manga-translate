package androidx.window.layout;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public interface ExtensionInterfaceCompat {

    public interface ExtensionCallbackInterface {
        void a(Activity activity, WindowLayoutInfo windowLayoutInfo);
    }

    void a(Activity activity);

    void b(ExtensionCallbackInterface extensionCallbackInterface);

    void c(Activity activity);
}
