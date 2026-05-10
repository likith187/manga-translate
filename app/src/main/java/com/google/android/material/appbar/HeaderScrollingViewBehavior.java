package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a1;
import androidx.core.view.j;
import androidx.core.view.m0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    private int overlayTop;
    final Rect tempRect1;
    final Rect tempRect2;
    private int verticalLayoutGap;

    public HeaderScrollingViewBehavior() {
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    private static int resolveGravity(int i10) {
        if (i10 == 0) {
            return 8388659;
        }
        return i10;
    }

    abstract View findFirstDependency(List<View> list);

    final int getOverlapPixelsForOffset(View view) {
        if (this.overlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i10 = this.overlayTop;
        return x.a.b((int) (overlapRatioForOffset * i10), 0, i10);
    }

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    protected void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View viewFindFirstDependency = findFirstDependency(coordinatorLayout.p(view));
        if (viewFindFirstDependency == null) {
            super.layoutChild(coordinatorLayout, view, i10);
            this.verticalLayoutGap = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.tempRect1;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        a1 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && m0.s(coordinatorLayout) && !m0.s(view)) {
            rect.left += lastWindowInsets.k();
            rect.right -= lastWindowInsets.l();
        }
        Rect rect2 = this.tempRect2;
        j.a(resolveGravity(fVar.f1870c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
        view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
        this.verticalLayoutGap = rect2.top - viewFindFirstDependency.getBottom();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        View viewFindFirstDependency;
        a1 lastWindowInsets;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (viewFindFirstDependency = findFirstDependency(coordinatorLayout.p(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (m0.s(viewFindFirstDependency) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.m() + lastWindowInsets.j();
        }
        int scrollRange = size + getScrollRange(viewFindFirstDependency);
        int measuredHeight = viewFindFirstDependency.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            scrollRange -= measuredHeight;
        }
        coordinatorLayout.H(view, i10, i11, View.MeasureSpec.makeMeasureSpec(scrollRange, i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public final void setOverlayTop(int i10) {
        this.overlayTop = i10;
    }

    protected boolean shouldHeaderOverlapScrollingChild() {
        return false;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }
}
