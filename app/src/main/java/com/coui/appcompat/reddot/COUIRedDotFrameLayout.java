package com.coui.appcompat.reddot;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.support.reddot.R$dimen;
import com.support.reddot.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIRedDotFrameLayout extends FrameLayout {
    public static final int CIRCLE_TYPE = 1;
    public static final int RECTANGLE_TYPE = 0;
    String TAG;
    private View mAnchorView;
    private int mAnchorViewShapeType;
    private int mAnchorViewSize;
    private int mCouiDotDiameter;
    private int mCouiDotViewHeight;
    private int mMarginTopAndLeftOfAnchorView;
    private int mMarginTopAndLeftOfReddot;
    private int mRedDotMode;
    private String mRedDotText;
    private COUIHintRedDot mRedDotView;
    private final Runnable mRequestLayoutRunnable;

    public COUIRedDotFrameLayout(Context context) {
        this(context, null);
    }

    private void addRedDot() {
        if (this.mRedDotMode != 0) {
            final COUIHintRedDot cOUIHintRedDot = new COUIHintRedDot(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            cOUIHintRedDot.setLayoutParams(layoutParams);
            layoutParams.gravity = 8388661;
            cOUIHintRedDot.setPointMode(this.mRedDotMode);
            int i10 = this.mRedDotMode;
            if (i10 == 2 || i10 == 5) {
                cOUIHintRedDot.setViewHeight(this.mCouiDotViewHeight);
                cOUIHintRedDot.setPointText(this.mRedDotText);
            } else {
                cOUIHintRedDot.setDotDiameter(this.mCouiDotDiameter);
            }
            post(new Runnable() { // from class: com.coui.appcompat.reddot.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7325a.lambda$addRedDot$0(cOUIHintRedDot);
                }
            });
            refresh();
        }
    }

    private void init(AttributeSet attributeSet, int i10) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_icon_size);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_large_icon_size);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIRedDotFrameLayout, i10, 0);
            this.mRedDotMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIRedDotFrameLayout_couiHintRedPointMode, 0);
            this.mRedDotText = typedArrayObtainStyledAttributes.getString(R$styleable.COUIRedDotFrameLayout_couiHintRedPointText);
            this.mAnchorViewShapeType = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIRedDotFrameLayout_anchorViewShapeType, 0);
            this.mAnchorViewSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIRedDotFrameLayout_anchorViewDpSize, dimensionPixelSize);
            typedArrayObtainStyledAttributes.recycle();
        }
        int i11 = this.mRedDotMode;
        if (i11 == 0) {
            return;
        }
        int i12 = this.mAnchorViewSize;
        if (i12 < dimensionPixelSize) {
            if (i11 == 1 || i11 == 4) {
                this.mCouiDotDiameter = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_small_reddot_size);
            }
            if (this.mAnchorViewShapeType == 0) {
                int i13 = this.mRedDotMode;
                if (i13 == 2 || i13 == 5) {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_small_number_topend_margin_rectangle);
                } else {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_small_icon_topend_margin_rectangle);
                }
            } else {
                int i14 = this.mRedDotMode;
                if (i14 == 1 || i14 == 4) {
                    this.mMarginTopAndLeftOfReddot = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_small_icon_topend_margin_circle);
                }
            }
        } else if (i12 >= dimensionPixelSize2) {
            if (i11 == 2 || i11 == 5) {
                this.mCouiDotViewHeight = getResources().getDimensionPixelSize(R$dimen.coui_height_large);
            } else {
                this.mCouiDotDiameter = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_large_reddot_size);
            }
            if (this.mAnchorViewShapeType == 0) {
                int i15 = this.mRedDotMode;
                if (i15 == 2 || i15 == 5) {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_large_number_topend_margin_rectangle);
                } else {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_large_icon_topend_margin_rectangle);
                }
            } else {
                int i16 = this.mRedDotMode;
                if (i16 == 1 || i16 == 4) {
                    this.mMarginTopAndLeftOfReddot = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_large_icon_topend_margin_circle);
                }
            }
        } else {
            if (i11 == 1 || i11 == 4) {
                this.mCouiDotDiameter = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_reddot_size);
            }
            if (this.mAnchorViewShapeType == 0) {
                int i17 = this.mRedDotMode;
                if (i17 == 2 || i17 == 5) {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_number_topend_margin_rectangle);
                } else {
                    this.mMarginTopAndLeftOfAnchorView = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_icon_topend_margin_rectangle);
                }
            } else {
                int i18 = this.mRedDotMode;
                if (i18 == 1 || i18 == 4) {
                    this.mMarginTopAndLeftOfReddot = getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_icon_topend_margin_circle);
                }
            }
        }
        if (this.mRedDotMode == 4) {
            this.mCouiDotDiameter += getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_mode_stroke_extra_diameter);
        }
        if (this.mRedDotMode == 5) {
            this.mCouiDotViewHeight += getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_mode_stroke_extra_diameter);
        }
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRedDot$0(COUIHintRedDot cOUIHintRedDot) {
        addView(cOUIHintRedDot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        requestLayout();
    }

    private void refresh() {
        removeCallbacks(this.mRequestLayoutRunnable);
        post(this.mRequestLayoutRunnable);
    }

    private void setChildView() {
        if (this.mRedDotView == null || this.mAnchorView == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (childAt instanceof COUIHintRedDot) {
                    this.mRedDotView = (COUIHintRedDot) childAt;
                } else {
                    this.mAnchorView = childAt;
                }
            }
        }
    }

    public COUIHintRedDot getRedDotView() {
        return this.mRedDotView;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.mRedDotMode == 0) {
            return;
        }
        View view = this.mAnchorView;
        if (view == null || this.mRedDotView == null) {
            if (view == null || this.mRedDotView != null) {
                return;
            }
            view.layout(0, 0, view.getMeasuredWidth(), this.mAnchorView.getMeasuredHeight());
            return;
        }
        if (isRtlMode()) {
            View view2 = this.mAnchorView;
            int i14 = this.mMarginTopAndLeftOfAnchorView;
            view2.layout(i14, i14, view2.getMeasuredWidth() + i14, this.mMarginTopAndLeftOfAnchorView + this.mAnchorView.getMeasuredHeight());
            COUIHintRedDot cOUIHintRedDot = this.mRedDotView;
            int i15 = this.mMarginTopAndLeftOfReddot;
            cOUIHintRedDot.layout(i15, i15, cOUIHintRedDot.getWidth() + i15, this.mMarginTopAndLeftOfReddot + this.mRedDotView.getHeight());
            return;
        }
        View view3 = this.mAnchorView;
        view3.layout(0, this.mMarginTopAndLeftOfAnchorView, view3.getMeasuredWidth(), this.mMarginTopAndLeftOfAnchorView + this.mAnchorView.getMeasuredHeight());
        COUIHintRedDot cOUIHintRedDot2 = this.mRedDotView;
        int width = getWidth() - this.mRedDotView.getWidth();
        int i16 = this.mMarginTopAndLeftOfReddot;
        int width2 = getWidth();
        int i17 = this.mMarginTopAndLeftOfReddot;
        cOUIHintRedDot2.layout(width - i16, i16, width2 - i17, i17 + this.mRedDotView.getHeight());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mRedDotMode == 0) {
            return;
        }
        setChildView();
        View view = this.mAnchorView;
        if (view != null && this.mRedDotView != null) {
            setMeasuredDimension(getMeasuredWidth() + this.mMarginTopAndLeftOfAnchorView, getMeasuredHeight() + this.mMarginTopAndLeftOfAnchorView);
        } else {
            if (view == null || this.mRedDotView != null) {
                return;
            }
            setMeasuredDimension(view.getWidth(), this.mAnchorView.getHeight());
        }
    }

    public void removeRedDot() {
        COUIHintRedDot cOUIHintRedDot = this.mRedDotView;
        if (cOUIHintRedDot != null) {
            removeView(cOUIHintRedDot);
            this.mRedDotView = null;
            refresh();
        }
    }

    public void showReddot(int i10, String str) {
        showReddot(i10, str, getResources().getDimensionPixelSize(R$dimen.coui_hint_red_dot_medium_icon_size), 0);
    }

    public COUIRedDotFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIRedDotFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = "COUIRedDotFrameLayout";
        this.mRedDotMode = 0;
        this.mAnchorViewShapeType = 0;
        this.mCouiDotViewHeight = getResources().getDimensionPixelSize(R$dimen.coui_height);
        this.mRequestLayoutRunnable = new Runnable() { // from class: com.coui.appcompat.reddot.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f7324a.lambda$new$1();
            }
        };
        init(attributeSet, i10);
        addRedDot();
    }

    public void showReddot(int i10, String str, int i11, int i12) {
        this.mAnchorViewShapeType = i12;
        this.mAnchorViewSize = i11;
        this.mRedDotMode = i10;
        this.mRedDotText = str;
        init(null, 0);
        addRedDot();
    }
}
