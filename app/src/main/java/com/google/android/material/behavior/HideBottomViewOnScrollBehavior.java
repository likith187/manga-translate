package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.appcompat.app.t;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import g4.i;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f8946m = R$attr.motionDurationLong2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f8947n = R$attr.motionDurationMedium4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f8948o = R$attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashSet f8949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8951c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TimeInterpolator f8952f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TimeInterpolator f8953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewPropertyAnimator f8957l;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f8957l = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f8949a = new LinkedHashSet();
        this.f8954i = 0;
        this.f8955j = 2;
        this.f8956k = 0;
    }

    private void b(View view, int i10, long j10, TimeInterpolator timeInterpolator) {
        this.f8957l = view.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j10).setListener(new a());
    }

    private void j(View view, int i10) {
        this.f8955j = i10;
        Iterator it = this.f8949a.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    public boolean c() {
        return this.f8955j == 1;
    }

    public boolean d() {
        return this.f8955j == 2;
    }

    public void e(View view, int i10) {
        this.f8956k = i10;
        if (this.f8955j == 1) {
            view.setTranslationY(this.f8954i + i10);
        }
    }

    public void f(View view) {
        g(view, true);
    }

    public void g(View view, boolean z10) {
        if (c()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f8957l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        j(view, 1);
        int i10 = this.f8954i + this.f8956k;
        if (z10) {
            b(view, i10, this.f8951c, this.f8953h);
        } else {
            view.setTranslationY(i10);
        }
    }

    public void h(View view) {
        i(view, true);
    }

    public void i(View view, boolean z10) {
        if (d()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f8957l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        j(view, 2);
        if (z10) {
            b(view, 0, this.f8950b, this.f8952f);
        } else {
            view.setTranslationY(0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        this.f8954i = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f8950b = i.f(view.getContext(), f8946m, 225);
        this.f8951c = i.f(view.getContext(), f8947n, 175);
        Context context = view.getContext();
        int i11 = f8948o;
        this.f8952f = i.g(context, i11, x3.a.f16371d);
        this.f8953h = i.g(view.getContext(), i11, x3.a.f16370c);
        return super.onLayoutChild(coordinatorLayout, view, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (i11 > 0) {
            f(view);
        } else if (i11 < 0) {
            h(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        return i10 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8949a = new LinkedHashSet();
        this.f8954i = 0;
        this.f8955j = 2;
        this.f8956k = 0;
    }
}
