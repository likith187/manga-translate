package com.coui.appcompat.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.coui.appcompat.scrollview.COUIScrollView;
import com.support.scrollview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIMutableSizeScrollView extends COUIScrollView {
    protected final PointF curPoint;
    protected final PointF firstPoint;
    private int mMaxHeight;
    protected final int touchSlop;

    public COUIMutableSizeScrollView(Context context) {
        this(context, null);
    }

    public boolean canScroll(int i10, int i11) {
        if (i10 == 0) {
            return false;
        }
        return canScrollVertically((int) (-Math.signum(i11)));
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    @Override // com.coui.appcompat.scrollview.COUIScrollView, android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.firstPoint.x = motionEvent.getX();
            this.firstPoint.y = motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.coui.appcompat.scrollview.COUIScrollView, android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getChildCount() != 1) {
            return;
        }
        int measuredHeight = getChildAt(0).getMeasuredHeight();
        int i12 = this.mMaxHeight;
        if (i12 < 0 || measuredHeight <= i12) {
            return;
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), this.mMaxHeight);
    }

    @Override // com.coui.appcompat.scrollview.COUIScrollView, android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 2) {
            this.curPoint.x = motionEvent.getX();
            this.curPoint.y = motionEvent.getY();
            PointF pointF = this.curPoint;
            float f10 = pointF.x;
            PointF pointF2 = this.firstPoint;
            float f11 = f10 - pointF2.x;
            float f12 = pointF.y - pointF2.y;
            float fAbs = Math.abs(f11) * 0.5f;
            float fAbs2 = Math.abs(f12);
            int i10 = this.touchSlop;
            if (fAbs > i10 || fAbs2 > i10) {
                if (fAbs > fAbs2) {
                    if (canScroll(0, (int) f11)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    } else {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                } else if (canScroll(1, (int) f12)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                } else {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setMaxHeight(int i10) {
        this.mMaxHeight = i10;
        requestLayout();
    }

    public COUIMutableSizeScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIMutableSizeScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.firstPoint = new PointF();
        this.curPoint = new PointF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIMaxHeightScrollView);
        this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIMaxHeightScrollView_scrollViewMaxHeight, -1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
