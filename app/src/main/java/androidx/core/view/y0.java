package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import com.coui.appcompat.tooltips.COUIToolTips;

/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {

    static class a {
        static void a(Window window, boolean z10) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z10 ? systemUiVisibility & (-257) : systemUiVisibility | COUIToolTips.ALIGN_TOP);
            window.setDecorFitsSystemWindows(z10);
        }
    }

    static class b {
        static void a(Window window, boolean z10) {
            window.setDecorFitsSystemWindows(z10);
        }
    }

    public static c1 a(Window window, View view) {
        return new c1(window, view);
    }

    public static void b(Window window, boolean z10) {
        if (Build.VERSION.SDK_INT >= 35) {
            b.a(window, z10);
        } else {
            a.a(window, z10);
        }
    }
}
