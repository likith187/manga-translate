package com.coui.appcompat.edittext;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class COUICodeInputHelper {
    private static final PathInterpolator ANIMATOR_INTERPOLATOR = new COUIMoveEaseInterpolator();
    public static final long INBOX_APPEAR_ANIMATOR_DURATION = 100;
    public static final long INBOX_DELAY_ANIMATOR_DURATION = 33;
    public static final long NUMBER_APPEAR_ANIMATOR_DURATION = 100;
    public static final long NUMBER_DELAY_ANIMATOR_DURATION = 33;
    public static final float NUMBER_SCALE_START = 0.6f;
    private View codeItemView;
    private float endNumberAlpha;
    private boolean isInboxAnimatorRuning;
    private boolean isNumberAnimatorRuning;
    private String mAnimatorNumber;
    private boolean mCurrentInboxAppear;
    private boolean mCurrentNumberAppear;
    private ValueAnimator mInboxAlphaAnimator;
    private ValueAnimator mNumberScaleAnimator;
    private float startNumberAlpha;
    private float startNumberScale = 0.6f;
    private float endNumberScale = 1.0f;
    private float mCurrentNumberAlpha = 1.0f;
    private float mCurrentNumberScale = 1.0f;
    private float mCurrentInboxAlpha = 1.0f;

    public COUICodeInputHelper(View view) {
        this.codeItemView = view;
    }

    private void cancelInboxAlphaAnimator() {
        ValueAnimator valueAnimator = this.mInboxAlphaAnimator;
        if (valueAnimator == null || !this.isInboxAnimatorRuning) {
            return;
        }
        valueAnimator.cancel();
    }

    private void cancelNumberScaleAnimator() {
        ValueAnimator valueAnimator = this.mNumberScaleAnimator;
        if (valueAnimator == null || !this.isNumberAnimatorRuning) {
            return;
        }
        valueAnimator.cancel();
    }

    private void executeInboxAnimator(boolean z10) {
        if (z10) {
            float f10 = this.mCurrentInboxAlpha;
            if (f10 <= 0.0f || f10 >= 1.0f) {
                this.startNumberAlpha = 0.0f;
            } else {
                this.startNumberAlpha = f10;
            }
            this.endNumberAlpha = 1.0f;
        } else {
            float f11 = this.mCurrentInboxAlpha;
            if (f11 <= 0.0f || f11 >= 1.0f) {
                this.startNumberAlpha = 1.0f;
            } else {
                this.startNumberAlpha = f11;
            }
            this.endNumberAlpha = 0.0f;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.startNumberAlpha, this.endNumberAlpha);
        this.mInboxAlphaAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(100L);
        this.mInboxAlphaAnimator.setStartDelay(z10 ? 33L : 0L);
        this.mInboxAlphaAnimator.setInterpolator(ANIMATOR_INTERPOLATOR);
        this.mInboxAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUICodeInputHelper.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUICodeInputHelper.this.mCurrentInboxAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                COUICodeInputHelper.this.codeItemView.invalidate();
            }
        });
        this.mInboxAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.edittext.COUICodeInputHelper.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                COUICodeInputHelper.this.isInboxAnimatorRuning = false;
                COUICodeInputHelper.this.codeItemView.invalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUICodeInputHelper.this.isInboxAnimatorRuning = false;
                COUICodeInputHelper.this.codeItemView.invalidate();
            }
        });
        this.mInboxAlphaAnimator.start();
        this.isInboxAnimatorRuning = true;
        this.mCurrentInboxAlpha = this.startNumberAlpha;
    }

    private void executeNumberAnimator(boolean z10) {
        if (z10) {
            float f10 = this.mCurrentNumberAlpha;
            if (f10 <= 0.0f || f10 >= 1.0f) {
                this.startNumberAlpha = 0.0f;
            } else {
                this.startNumberAlpha = f10;
            }
            this.endNumberAlpha = 1.0f;
            this.startNumberScale = 0.6f;
        } else {
            float f11 = this.mCurrentNumberAlpha;
            if (f11 <= 0.0f || f11 >= 1.0f) {
                this.startNumberAlpha = 1.0f;
            } else {
                this.startNumberAlpha = f11;
            }
            this.endNumberAlpha = 0.0f;
            this.startNumberScale = 1.0f;
        }
        this.endNumberScale = 1.0f;
        ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat("scaleHolder", this.startNumberScale, 1.0f), PropertyValuesHolder.ofFloat("alphaHolder", this.startNumberAlpha, this.endNumberAlpha));
        this.mNumberScaleAnimator = valueAnimatorOfPropertyValuesHolder;
        valueAnimatorOfPropertyValuesHolder.setDuration(100L);
        this.mNumberScaleAnimator.setStartDelay(z10 ? 0L : 33L);
        this.mNumberScaleAnimator.setInterpolator(ANIMATOR_INTERPOLATOR);
        this.mNumberScaleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUICodeInputHelper.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUICodeInputHelper.this.mCurrentNumberAlpha = ((Float) valueAnimator.getAnimatedValue("alphaHolder")).floatValue();
                COUICodeInputHelper.this.mCurrentNumberScale = ((Float) valueAnimator.getAnimatedValue("scaleHolder")).floatValue();
                COUICodeInputHelper.this.codeItemView.invalidate();
            }
        });
        this.mNumberScaleAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.edittext.COUICodeInputHelper.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                COUICodeInputHelper.this.isNumberAnimatorRuning = false;
                COUICodeInputHelper.this.codeItemView.invalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUICodeInputHelper.this.isNumberAnimatorRuning = false;
                COUICodeInputHelper.this.codeItemView.invalidate();
            }
        });
        this.mNumberScaleAnimator.start();
        this.isNumberAnimatorRuning = true;
        this.mCurrentNumberAlpha = this.startNumberAlpha;
        this.mCurrentNumberScale = this.startNumberScale;
    }

    private void setCurrentInboxAppear(boolean z10) {
        this.mCurrentInboxAppear = z10;
    }

    private void setCurrentNumberAppear(boolean z10) {
        this.mCurrentNumberAppear = z10;
    }

    public String getAnimatorNumber() {
        return this.mAnimatorNumber;
    }

    public float getCurrentInboxAlpha() {
        return this.mCurrentInboxAlpha;
    }

    public float getCurrentNumberAlpha() {
        return this.mCurrentNumberAlpha;
    }

    public float getCurrentNumberScale() {
        return this.mCurrentNumberScale;
    }

    public ValueAnimator getInboxAnimator() {
        return this.mInboxAlphaAnimator;
    }

    public ValueAnimator getNumberAnimator() {
        return this.mNumberScaleAnimator;
    }

    public boolean isCurrentNumberAppear() {
        return this.mCurrentNumberAppear;
    }

    public boolean isInboxAnimatorRuning() {
        return this.isInboxAnimatorRuning;
    }

    public boolean isNumberAnimatorRuning() {
        return this.isNumberAnimatorRuning;
    }

    public void startInboxAnimator(boolean z10) {
        setCurrentInboxAppear(z10);
        if (this.isInboxAnimatorRuning) {
            cancelInboxAlphaAnimator();
        }
        executeInboxAnimator(z10);
    }

    public void startNumberAnimator(boolean z10, String str) {
        this.mAnimatorNumber = str;
        setCurrentNumberAppear(z10);
        if (this.isNumberAnimatorRuning) {
            cancelNumberScaleAnimator();
        }
        executeNumberAnimator(z10);
    }
}
