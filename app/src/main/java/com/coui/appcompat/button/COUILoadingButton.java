package com.coui.appcompat.button;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.support.appcompat.R$styleable;
import com.support.button.R$dimen;
import com.support.button.R$string;

/* JADX INFO: loaded from: classes.dex */
public class COUILoadingButton extends COUIButton {
    public static final int DEFAULT_STATE = 0;
    private static final float DOT_END_ALPHA = 255.0f;
    private static final float DOT_MID_ALPHA = 127.5f;
    private static final float DOT_START_ALPHA = 51.0f;
    public static final int LOADING_STATE = 1;
    private int mButtonState;
    private final String mDots;
    private int mFirstLoadingDotAlpha;
    private AnimatorSet mLoadingAnim;
    private final float mLoadingCircleRadius;
    private final float mLoadingCircleSpacing;
    private final float mLoadingCircleTotalWidth;
    private String mLoadingText;
    private final Rect mLoadingTextBounds;
    private OnLoadingStateChangeListener mOnLoadingStateChangeListener;
    private String mOriginalText;
    private int mSecondLoadingDotAlpha;
    private boolean mShowLoadingText;
    private int mThirdLoadingDotAlpha;

    public interface OnLoadingStateChangeListener {
        void OnLoadingStateChanged(int i10);
    }

    public COUILoadingButton(Context context) {
        this(context, null);
    }

    private void drawClipDot(Canvas canvas, float f10, float f11, float f12, float f13, TextPaint textPaint, int i10) {
        textPaint.setAlpha(i10);
        int iSave = canvas.save();
        canvas.clipRect(f10, 0.0f, f11, getHeight());
        canvas.drawText(this.mDots, f12, f13, textPaint);
        canvas.restoreToCount(iSave);
    }

    private void drawLoadingCircles(Canvas canvas, TextPaint textPaint) {
        int i10;
        int i11;
        int i12 = this.mSecondLoadingDotAlpha;
        if (isRtlMode()) {
            i10 = this.mThirdLoadingDotAlpha;
            i11 = this.mFirstLoadingDotAlpha;
        } else {
            i10 = this.mFirstLoadingDotAlpha;
            i11 = this.mThirdLoadingDotAlpha;
        }
        float measuredHeight = getMeasuredHeight() / 2.0f;
        float measuredWidth = ((getMeasuredWidth() - this.mLoadingCircleTotalWidth) / 2.0f) + this.mLoadingCircleRadius;
        textPaint.setAlpha(i10);
        canvas.drawCircle(measuredWidth, measuredHeight, this.mLoadingCircleRadius, textPaint);
        float f10 = measuredWidth + (this.mLoadingCircleRadius * 2.0f) + this.mLoadingCircleSpacing;
        textPaint.setAlpha(i12);
        canvas.drawCircle(f10, measuredHeight, this.mLoadingCircleRadius, textPaint);
        float f11 = f10 + (this.mLoadingCircleRadius * 2.0f) + this.mLoadingCircleSpacing;
        textPaint.setAlpha(i11);
        canvas.drawCircle(f11, measuredHeight, this.mLoadingCircleRadius, textPaint);
    }

    private ValueAnimator getAlphaAnimator(float f10, float f11, long j10, long j11, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, f11);
        valueAnimatorOfFloat.setDuration(j10);
        valueAnimatorOfFloat.setStartDelay(j11);
        valueAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        return valueAnimatorOfFloat;
    }

    private void initAnim() {
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.button.COUILoadingButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUILoadingButton.this.mFirstLoadingDotAlpha = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                COUILoadingButton.this.invalidate();
            }
        };
        ValueAnimator alphaAnimator = getAlphaAnimator(DOT_START_ALPHA, DOT_MID_ALPHA, 133L, 0L, animatorUpdateListener);
        ValueAnimator alphaAnimator2 = getAlphaAnimator(DOT_MID_ALPHA, DOT_END_ALPHA, 67L, 133L, animatorUpdateListener);
        ValueAnimator alphaAnimator3 = getAlphaAnimator(DOT_END_ALPHA, DOT_MID_ALPHA, 67L, 467L, animatorUpdateListener);
        ValueAnimator alphaAnimator4 = getAlphaAnimator(DOT_MID_ALPHA, DOT_START_ALPHA, 133L, 533L, animatorUpdateListener);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 = new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.button.COUILoadingButton.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUILoadingButton.this.mSecondLoadingDotAlpha = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                COUILoadingButton.this.invalidate();
            }
        };
        ValueAnimator alphaAnimator5 = getAlphaAnimator(DOT_START_ALPHA, DOT_MID_ALPHA, 133L, 333L, animatorUpdateListener2);
        ValueAnimator alphaAnimator6 = getAlphaAnimator(DOT_MID_ALPHA, DOT_END_ALPHA, 67L, 466L, animatorUpdateListener2);
        ValueAnimator alphaAnimator7 = getAlphaAnimator(DOT_END_ALPHA, DOT_MID_ALPHA, 67L, 800L, animatorUpdateListener2);
        ValueAnimator alphaAnimator8 = getAlphaAnimator(DOT_MID_ALPHA, DOT_START_ALPHA, 133L, 866L, animatorUpdateListener2);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener3 = new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.button.COUILoadingButton.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUILoadingButton.this.mThirdLoadingDotAlpha = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                COUILoadingButton.this.invalidate();
            }
        };
        ValueAnimator alphaAnimator9 = getAlphaAnimator(DOT_START_ALPHA, DOT_MID_ALPHA, 133L, 666L, animatorUpdateListener3);
        ValueAnimator alphaAnimator10 = getAlphaAnimator(DOT_MID_ALPHA, DOT_END_ALPHA, 67L, 799L, animatorUpdateListener3);
        ValueAnimator alphaAnimator11 = getAlphaAnimator(DOT_END_ALPHA, DOT_MID_ALPHA, 67L, 1133L, animatorUpdateListener3);
        ValueAnimator alphaAnimator12 = getAlphaAnimator(DOT_MID_ALPHA, DOT_START_ALPHA, 133L, 1199L, animatorUpdateListener3);
        AnimatorSet animatorSet = new AnimatorSet();
        this.mLoadingAnim = animatorSet;
        animatorSet.playTogether(alphaAnimator, alphaAnimator2, alphaAnimator3, alphaAnimator4, alphaAnimator5, alphaAnimator6, alphaAnimator7, alphaAnimator8, alphaAnimator9, alphaAnimator10, alphaAnimator11, alphaAnimator12);
        this.mLoadingAnim.setInterpolator(new COUILinearInterpolator());
        this.mLoadingAnim.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.button.COUILoadingButton.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUILoadingButton.this.mLoadingAnim == null || COUILoadingButton.this.mButtonState != 1) {
                    return;
                }
                COUILoadingButton.this.post(new Runnable() { // from class: com.coui.appcompat.button.COUILoadingButton.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        COUILoadingButton.this.mLoadingAnim.start();
                    }
                });
            }
        });
    }

    private void initTextChangeListener() {
        addTextChangedListener(new TextWatcher() { // from class: com.coui.appcompat.button.COUILoadingButton.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                if (COUILoadingButton.this.mButtonState != 1 || charSequence.toString().equals("")) {
                    return;
                }
                COUILoadingButton.this.mOriginalText = charSequence.toString();
                COUILoadingButton.this.setText("");
            }
        });
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    public int getButtonState() {
        return this.mButtonState;
    }

    public String getLoadingText() {
        return this.mLoadingText;
    }

    public OnLoadingStateChangeListener getOnLoadingStateChangeListener(OnLoadingStateChangeListener onLoadingStateChangeListener) {
        return this.mOnLoadingStateChangeListener;
    }

    public boolean getShowLoadingText() {
        return this.mShowLoadingText;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        AnimatorSet animatorSet;
        super.onAttachedToWindow();
        if (this.mButtonState != 1 || (animatorSet = this.mLoadingAnim) == null || animatorSet.isRunning()) {
            return;
        }
        this.mLoadingAnim.start();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mButtonState == 1) {
            this.mLoadingAnim.cancel();
        }
    }

    @Override // com.coui.appcompat.button.COUIButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        float measuredWidth;
        float measuredWidth2;
        int i11;
        int i12;
        super.onDraw(canvas);
        if (this.mButtonState != 1 || getPaint() == null) {
            return;
        }
        TextPaint paint = getPaint();
        int alpha = paint.getAlpha();
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.mShowLoadingText) {
            float fMeasureText = paint.measureText(this.mLoadingText);
            float fMeasureText2 = paint.measureText(this.mDots);
            if (fMeasureText + fMeasureText2 > (getMeasuredWidth() - getPaddingStart()) - getPaddingEnd()) {
                drawLoadingCircles(canvas, paint);
                i10 = iSave;
            } else {
                Paint.FontMetrics fontMetrics = paint.getFontMetrics();
                float measuredHeight = (((getMeasuredHeight() + (fontMetrics.bottom - fontMetrics.top)) / 2.0f) - fontMetrics.bottom) - ((getPaddingBottom() - getPaddingTop()) / 2);
                int i13 = this.mSecondLoadingDotAlpha;
                if (isRtlMode()) {
                    measuredWidth = (((getMeasuredWidth() - fMeasureText) - fMeasureText2) / 2.0f) + fMeasureText2;
                    i11 = this.mThirdLoadingDotAlpha;
                    i12 = this.mFirstLoadingDotAlpha;
                    measuredWidth2 = ((getMeasuredWidth() - fMeasureText) - fMeasureText2) / 2.0f;
                } else {
                    measuredWidth = ((getMeasuredWidth() - fMeasureText) - fMeasureText2) / 2.0f;
                    measuredWidth2 = fMeasureText + measuredWidth;
                    i11 = this.mFirstLoadingDotAlpha;
                    i12 = this.mThirdLoadingDotAlpha;
                }
                canvas.drawText(this.mLoadingText, measuredWidth - ((getPaddingEnd() - getPaddingStart()) / 2), measuredHeight, paint);
                paint.getTextBounds(this.mDots, 0, 1, this.mLoadingTextBounds);
                float f10 = measuredWidth2;
                i10 = iSave;
                drawClipDot(canvas, measuredWidth2, this.mLoadingTextBounds.right + measuredWidth2, f10, measuredHeight, paint, i11);
                paint.getTextBounds(this.mDots, 0, 2, this.mLoadingTextBounds);
                drawClipDot(canvas, r0.right + measuredWidth2, this.mLoadingTextBounds.right + measuredWidth2, f10, measuredHeight, paint, i13);
                drawClipDot(canvas, this.mLoadingTextBounds.right + measuredWidth2, measuredWidth2 + fMeasureText2, f10, measuredHeight, paint, i12);
            }
        } else {
            i10 = iSave;
            drawLoadingCircles(canvas, paint);
        }
        paint.setAlpha(alpha);
        canvas.restoreToCount(i10);
    }

    public void resetButtonState() {
        if (this.mButtonState == 1) {
            this.mButtonState = 0;
            setText(this.mOriginalText);
            this.mLoadingAnim.cancel();
            this.mFirstLoadingDotAlpha = 51;
            this.mSecondLoadingDotAlpha = 51;
            this.mThirdLoadingDotAlpha = 51;
            OnLoadingStateChangeListener onLoadingStateChangeListener = this.mOnLoadingStateChangeListener;
            if (onLoadingStateChangeListener != null) {
                onLoadingStateChangeListener.OnLoadingStateChanged(this.mButtonState);
            }
        }
    }

    public void setLoadingText(String str) {
        if (str == null || !this.mShowLoadingText) {
            return;
        }
        this.mLoadingText = str;
    }

    public void setOnLoadingStateChangeListener(OnLoadingStateChangeListener onLoadingStateChangeListener) {
        this.mOnLoadingStateChangeListener = onLoadingStateChangeListener;
    }

    public void setOriginalText(String str) {
        this.mOriginalText = str;
    }

    public void setShowLoadingText(boolean z10) {
        this.mShowLoadingText = z10;
    }

    public void switchToLoadingState() {
        if (this.mLoadingAnim == null) {
            initTextChangeListener();
            initAnim();
        }
        if (this.mButtonState == 0) {
            this.mButtonState = 1;
            setText("");
            this.mLoadingAnim.start();
            OnLoadingStateChangeListener onLoadingStateChangeListener = this.mOnLoadingStateChangeListener;
            if (onLoadingStateChangeListener != null) {
                onLoadingStateChangeListener.OnLoadingStateChanged(this.mButtonState);
            }
        }
    }

    public COUILoadingButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.buttonStyle);
    }

    public COUILoadingButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mButtonState = 0;
        this.mLoadingText = "";
        this.mLoadingTextBounds = new Rect();
        this.mFirstLoadingDotAlpha = 51;
        this.mSecondLoadingDotAlpha = 51;
        this.mThirdLoadingDotAlpha = 51;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIButton, i10, 0);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIButton_isShowLoadingText, false);
        this.mShowLoadingText = z10;
        if (z10) {
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUIButton_loadingText);
            this.mLoadingText = string;
            if (string == null) {
                this.mLoadingText = "";
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mOriginalText = getText().toString();
        this.mDots = context.getString(R$string.loading_button_dots);
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.coui_loading_btn_circle_radius);
        this.mLoadingCircleRadius = dimensionPixelOffset;
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R$dimen.coui_loading_btn_circle_spacing);
        this.mLoadingCircleSpacing = dimensionPixelOffset2;
        this.mLoadingCircleTotalWidth = (dimensionPixelOffset * 6.0f) + (dimensionPixelOffset2 * 2.0f);
    }
}
