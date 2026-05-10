package com.coui.appcompat.reddot;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.support.reddot.R$attr;
import com.support.reddot.R$drawable;
import com.support.reddot.R$plurals;
import com.support.reddot.R$string;
import com.support.reddot.R$style;
import com.support.reddot.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIHintRedDot extends View {
    public static final int CONSTANT_VALUE_3 = 3;
    public static final int CONSTANT_VALUE_4 = 4;
    public static final int MAX_ALPHA_VALUE = 255;
    public static final int MIN_ALPHA_VALUE = 0;
    public static final int NO_POINT_MODE = 0;
    public static final long NUM_CHANGE_ALPHA_ANIM_DURATION = 150;
    public static final long NUM_CHANGE_WIDTH_ANIM_DURATION = 517;
    public static final Interpolator NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR = new COUIMoveEaseInterpolator();
    public static final int POINT_NAVI_WITH_NUM = 3;
    public static final int POINT_NUM_MODE_STROKE = 5;
    public static final int POINT_ONLY_MODE = 1;
    public static final int POINT_ONLY_MODE_STROKE = 4;
    public static final int POINT_WITH_NUM_MODE = 2;
    public static final long RED_POINT_ANIM_DURATION = 520;
    public static final int TYPE_BIG_RECT_RADIUS = 2;
    public static final int TYPE_SMALL_RECT_RADIUS = 1;
    private ValueAnimator mAlphaAnim;
    private COUIHintRedDotHelper mCOUIHintRedDotHelper;
    private boolean mIsExecutingAlphaAnim;
    private boolean mIsExecutingWidthAnim;
    private boolean mIsLaidOut;
    private String mMoreText;
    private int mPointMode;
    private int mPointNumber;
    private String mPointText;
    private RectF mRectF;
    private String mRedDotDescription;
    private int mRedDotWithNumberDescriptionId;
    private Drawable mStrokeBackground;
    private int mTempPointNumber;
    private int mTempWidth;
    private int mTextPaintAlpha;
    private ValueAnimator mWidthAnim;

    public COUIHintRedDot(Context context) {
        this(context, null);
    }

    private void cancelAnim() {
        ValueAnimator valueAnimator = this.mWidthAnim;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mWidthAnim.end();
        }
        ValueAnimator valueAnimator2 = this.mAlphaAnim;
        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
            return;
        }
        this.mAlphaAnim.end();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeAlphaAnim() {
        if (this.mAlphaAnim == null) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
            this.mAlphaAnim = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(150L);
            this.mAlphaAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    COUIHintRedDot.this.mTextPaintAlpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                }
            });
            this.mAlphaAnim.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    COUIHintRedDot.this.mIsExecutingAlphaAnim = false;
                    COUIHintRedDot cOUIHintRedDot = COUIHintRedDot.this;
                    cOUIHintRedDot.mPointNumber = cOUIHintRedDot.mTempPointNumber;
                    COUIHintRedDot cOUIHintRedDot2 = COUIHintRedDot.this;
                    cOUIHintRedDot2.mPointText = String.valueOf(cOUIHintRedDot2.mPointNumber);
                    COUIHintRedDot.this.mTempPointNumber = 0;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    COUIHintRedDot.this.mIsExecutingAlphaAnim = false;
                    COUIHintRedDot cOUIHintRedDot = COUIHintRedDot.this;
                    cOUIHintRedDot.mPointNumber = cOUIHintRedDot.mTempPointNumber;
                    COUIHintRedDot cOUIHintRedDot2 = COUIHintRedDot.this;
                    cOUIHintRedDot2.mPointText = String.valueOf(cOUIHintRedDot2.mPointNumber);
                    COUIHintRedDot.this.mTempPointNumber = 0;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    COUIHintRedDot.this.mIsExecutingAlphaAnim = true;
                }
            });
        }
        this.mAlphaAnim.start();
    }

    private void executeWidthAnim(int i10, int i11) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.mCOUIHintRedDotHelper.getViewWidth(this.mPointMode, i10), this.mCOUIHintRedDotHelper.getViewWidth(this.mPointMode, i11));
        this.mWidthAnim = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(517L);
        this.mWidthAnim.setInterpolator(NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR);
        this.mWidthAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUIHintRedDot.this.mTempWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                COUIHintRedDot.this.requestLayout();
            }
        });
        this.mWidthAnim.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                COUIHintRedDot.this.mIsExecutingWidthAnim = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIHintRedDot.this.mIsExecutingWidthAnim = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIHintRedDot.this.mIsExecutingWidthAnim = true;
                COUIHintRedDot.this.executeAlphaAnim();
            }
        });
        this.mWidthAnim.start();
    }

    public void changePointNumber(int i10) {
        int i11;
        if (getVisibility() == 8 || (i11 = this.mPointMode) == 0 || i11 == 1 || i11 == 4 || i11 == 5 || this.mPointNumber == i10 || i10 <= 0 || this.mCOUIHintRedDotHelper == null) {
            return;
        }
        cancelAnim();
        if (!this.mIsLaidOut) {
            setPointNumber(i10);
        } else {
            this.mTempPointNumber = i10;
            executeWidthAnim(this.mPointNumber, i10);
        }
    }

    public void executeScaleAnim(final boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(520L);
        valueAnimatorOfFloat.setInterpolator(NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Float f10 = (Float) valueAnimator.getAnimatedValue();
                if (COUIHintRedDot.this.getVisibility() != 8) {
                    COUIHintRedDot.this.setScaleX(f10.floatValue());
                    COUIHintRedDot.this.setScaleY(f10.floatValue());
                    COUIHintRedDot.this.invalidate();
                }
            }
        });
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.reddot.COUIHintRedDot.6
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (z10) {
                    return;
                }
                COUIHintRedDot.this.setPointMode(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z10) {
                    return;
                }
                COUIHintRedDot.this.setVisibility(8);
                COUIHintRedDot.this.setPointMode(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z10) {
                    COUIHintRedDot.this.setVisibility(0);
                    COUIHintRedDot.this.requestLayout();
                }
            }
        });
        valueAnimatorOfFloat.start();
    }

    public boolean getIsLaidOut() {
        return this.mIsLaidOut;
    }

    public int getPointMode() {
        return this.mPointMode;
    }

    public int getPointNumber() {
        return this.mPointNumber;
    }

    public String getPointText() {
        return this.mPointText;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        cancelAnim();
        super.onDetachedFromWindow();
        this.mIsLaidOut = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        RectF rectF = this.mRectF;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.right = getWidth();
        this.mRectF.bottom = getHeight();
        if (this.mIsExecutingAlphaAnim && ((i10 = this.mPointNumber) < 1000 || this.mTempPointNumber < 1000)) {
            COUIHintRedDotHelper cOUIHintRedDotHelper = this.mCOUIHintRedDotHelper;
            int i11 = this.mTextPaintAlpha;
            cOUIHintRedDotHelper.drawPointWithFadeNumber(canvas, i10, i11, this.mTempPointNumber, 255 - i11, this.mRectF);
        } else {
            int i12 = this.mPointNumber;
            if (i12 == 0 || i12 < 1000) {
                this.mCOUIHintRedDotHelper.drawRedPoint(canvas, this.mPointMode, this.mPointText, this.mRectF);
            } else {
                this.mCOUIHintRedDotHelper.drawRedPoint(canvas, this.mPointMode, this.mMoreText, this.mRectF);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.mIsLaidOut = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(this.mIsExecutingWidthAnim ? this.mTempWidth : this.mCOUIHintRedDotHelper.getViewWidth(this.mPointMode, this.mPointText), this.mCOUIHintRedDotHelper.getViewHeight(this.mPointMode));
    }

    public COUIHintRedDotMemento saveMemento() {
        COUIHintRedDotMemento cOUIHintRedDotMemento = new COUIHintRedDotMemento();
        cOUIHintRedDotMemento.setPointMode(getPointMode());
        cOUIHintRedDotMemento.setPointNumber(getPointNumber());
        cOUIHintRedDotMemento.setPointText(getPointText());
        return cOUIHintRedDotMemento;
    }

    public void setBgColor(int i10) {
        this.mCOUIHintRedDotHelper.setBgColor(i10);
    }

    public void setCornerRadius(int i10) {
        this.mCOUIHintRedDotHelper.setCornerRadius(i10);
    }

    public void setDotDiameter(int i10) {
        this.mCOUIHintRedDotHelper.setDotDiameter(i10);
    }

    public void setEllipsisDiameter(int i10) {
        this.mCOUIHintRedDotHelper.setEllipsisDiameter(i10);
    }

    public void setLaidOut() {
        this.mIsLaidOut = true;
    }

    public void setLargeWidth(int i10) {
        this.mCOUIHintRedDotHelper.setLargeWidth(i10);
    }

    public void setMediumWidth(int i10) {
        this.mCOUIHintRedDotHelper.setMediumWidth(i10);
    }

    public void setPointMode(int i10) {
        if (this.mPointMode != i10) {
            this.mPointMode = i10;
            if (i10 == 4) {
                setBackground(this.mStrokeBackground);
            }
            requestLayout();
            int i11 = this.mPointMode;
            if (i11 == 1 || i11 == 4) {
                setContentDescription(this.mRedDotDescription);
            } else if (i11 == 0) {
                setContentDescription("");
            }
        }
    }

    public void setPointNumber(int i10) {
        this.mPointNumber = i10;
        if (i10 != 0) {
            setPointText(String.valueOf(i10));
        } else {
            setPointText("");
        }
        if (i10 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(",");
            Resources resources = getResources();
            int i11 = this.mRedDotWithNumberDescriptionId;
            int i12 = this.mPointNumber;
            sb.append(resources.getQuantityString(i11, i12, Integer.valueOf(i12)));
            setContentDescription(sb.toString());
        }
    }

    public void setPointText(String str) {
        this.mPointText = str;
        requestLayout();
    }

    public void setSmallWidth(int i10) {
        this.mCOUIHintRedDotHelper.setSmallWidth(i10);
    }

    public void setTextColor(int i10) {
        this.mCOUIHintRedDotHelper.setTextColor(i10);
    }

    public void setTextSize(int i10) {
        this.mCOUIHintRedDotHelper.setTextSize(i10);
    }

    public void setViewHeight(int i10) {
        this.mCOUIHintRedDotHelper.setViewHeight(i10);
    }

    public COUIHintRedDot(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiHintRedDotStyle);
    }

    public COUIHintRedDot(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_COUIHintRedDot);
    }

    public COUIHintRedDot(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mPointMode = 0;
        this.mPointNumber = 0;
        this.mPointText = "";
        this.mTempPointNumber = 0;
        this.mTextPaintAlpha = 255;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIHintRedDot, i10, i11);
        this.mPointMode = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIHintRedDot_couiHintRedPointMode, 0);
        setPointNumber(typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIHintRedDot_couiHintRedPointNum, 0));
        this.mPointText = typedArrayObtainStyledAttributes.getString(R$styleable.COUIHintRedDot_couiHintRedPointText);
        typedArrayObtainStyledAttributes.recycle();
        this.mCOUIHintRedDotHelper = new COUIHintRedDotHelper(context, attributeSet, R$styleable.COUIHintRedDot, i10, i11);
        this.mRectF = new RectF();
        this.mRedDotDescription = getResources().getString(R$string.red_dot_description);
        this.mRedDotWithNumberDescriptionId = R$plurals.red_dot_with_number_description;
        Drawable drawable = context.getResources().getDrawable(R$drawable.red_dot_stroke_circle);
        this.mStrokeBackground = drawable;
        if (this.mPointMode == 4) {
            setBackground(drawable);
        }
        this.mMoreText = context.getString(R$string.red_dot_more);
    }
}
