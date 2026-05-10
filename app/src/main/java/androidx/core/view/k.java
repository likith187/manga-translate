package androidx.core.view;

import android.view.KeyEvent;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    public interface a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        return m0.g(view, keyEvent);
    }

    public static boolean b(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        return aVar.superDispatchKeyEvent(keyEvent);
    }
}
