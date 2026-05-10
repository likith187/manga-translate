package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10615a;

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f10616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f10617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ e4.a f10618c;

        a(View view, int i10, e4.a aVar) {
            this.f10616a = view;
            this.f10617b = i10;
            this.f10618c = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f10616a.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f10615a == this.f10617b) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                e4.a aVar = this.f10618c;
                expandableBehavior.d((View) aVar, this.f10616a, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f10615a = 0;
    }

    private boolean b(boolean z10) {
        if (!z10) {
            return this.f10615a == 1;
        }
        int i10 = this.f10615a;
        return i10 == 0 || i10 == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected e4.a c(CoordinatorLayout coordinatorLayout, View view) {
        List listP = coordinatorLayout.p(view);
        int size = listP.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) listP.get(i10);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (e4.a) view2;
            }
        }
        return null;
    }

    protected abstract boolean d(View view, View view2, boolean z10, boolean z11);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        e4.a aVar = (e4.a) view2;
        if (!b(aVar.a())) {
            return false;
        }
        this.f10615a = aVar.a() ? 1 : 2;
        return d((View) aVar, view, aVar.a(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        e4.a aVarC;
        if (m0.O(view) || (aVarC = c(coordinatorLayout, view)) == null || !b(aVarC.a())) {
            return false;
        }
        int i11 = aVarC.a() ? 1 : 2;
        this.f10615a = i11;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, aVarC));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10615a = 0;
    }
}
