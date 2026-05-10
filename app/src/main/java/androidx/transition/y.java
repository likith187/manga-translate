package androidx.transition;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
abstract class y {

    static class a {
        static int a(ViewGroup viewGroup, int i10) {
            return viewGroup.getChildDrawingOrder(i10);
        }

        static void b(ViewGroup viewGroup, boolean z10) {
            viewGroup.suppressLayout(z10);
        }
    }

    static void a(ViewGroup viewGroup, boolean z10) {
        a.b(viewGroup, z10);
    }
}
