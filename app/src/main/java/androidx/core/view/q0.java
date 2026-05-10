package androidx.core.view;

import android.view.ViewGroup;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final WindowInsets f2109a = a1.f2009b.x();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static boolean f2110b = false;

    static class a {
        static boolean a(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }
    }

    public static boolean a(ViewGroup viewGroup) {
        return a.a(viewGroup);
    }
}
