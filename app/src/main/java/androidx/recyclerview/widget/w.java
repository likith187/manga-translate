package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
abstract class w {
    static int a(RecyclerView.a0 a0Var, t tVar, View view, View view2, RecyclerView.p pVar, boolean z10) {
        if (pVar.getChildCount() == 0 || a0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1;
        }
        return Math.min(tVar.o(), tVar.d(view2) - tVar.g(view));
    }

    static int b(RecyclerView.a0 a0Var, t tVar, View view, View view2, RecyclerView.p pVar, boolean z10, boolean z11) {
        if (pVar.getChildCount() == 0 || a0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z11 ? Math.max(0, (a0Var.b() - Math.max(pVar.getPosition(view), pVar.getPosition(view2))) - 1) : Math.max(0, Math.min(pVar.getPosition(view), pVar.getPosition(view2)));
        if (z10) {
            return Math.round((iMax * (Math.abs(tVar.d(view2) - tVar.g(view)) / (Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1))) + (tVar.n() - tVar.g(view)));
        }
        return iMax;
    }

    static int c(RecyclerView.a0 a0Var, t tVar, View view, View view2, RecyclerView.p pVar, boolean z10) {
        if (pVar.getChildCount() == 0 || a0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return a0Var.b();
        }
        return (int) (((tVar.d(view2) - tVar.g(view)) / (Math.abs(pVar.getPosition(view) - pVar.getPosition(view2)) + 1)) * a0Var.b());
    }
}
