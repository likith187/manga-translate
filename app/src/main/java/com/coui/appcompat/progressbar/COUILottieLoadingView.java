package com.coui.appcompat.progressbar;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.oplus.anim.EffectiveAnimationView;
import com.support.progressbar.R$attr;
import com.support.progressbar.R$dimen;
import com.support.progressbar.R$string;
import com.support.progressbar.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUILottieLoadingView extends FrameLayout {
    private final EffectiveAnimationView mLoadingView;

    public COUILottieLoadingView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseAnimation() {
        EffectiveAnimationView effectiveAnimationView = this.mLoadingView;
        if (effectiveAnimationView == null || !effectiveAnimationView.p()) {
            return;
        }
        this.mLoadingView.u();
    }

    private void resumeAnimation() {
        EffectiveAnimationView effectiveAnimationView = this.mLoadingView;
        if (effectiveAnimationView == null || effectiveAnimationView.p()) {
            return;
        }
        this.mLoadingView.w();
    }

    public EffectiveAnimationView getLoadingView() {
        return this.mLoadingView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        resumeAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        pauseAnimation();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (getVisibility() == 0) {
            resumeAnimation();
        } else {
            pauseAnimation();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            resumeAnimation();
        } else {
            pauseAnimation();
        }
    }

    public COUILottieLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiLottieLoadingViewStyle);
    }

    public COUILottieLoadingView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUILottieLoadingView, i10, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUILottieLoadingView_couiLottieLoadingViewWidth, getResources().getDimensionPixelOffset(R$dimen.coui_lottie_loading_view_large_width));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUILottieLoadingView_couiLottieLoadingViewHeight, getResources().getDimensionPixelOffset(R$dimen.coui_lottie_loading_view_large_height));
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUILottieLoadingView_couiLottieLoadingJsonName);
        string = string == null ? getResources().getString(R$string.coui_lottie_loading_large_json) : string;
        typedArrayObtainStyledAttributes.recycle();
        EffectiveAnimationView effectiveAnimationView = new EffectiveAnimationView(context);
        this.mLoadingView = effectiveAnimationView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2);
        layoutParams.gravity = 17;
        effectiveAnimationView.setLayoutParams(layoutParams);
        effectiveAnimationView.setRepeatCount(-1);
        effectiveAnimationView.setAnimation(string);
        effectiveAnimationView.g(new Animator.AnimatorListener() { // from class: com.coui.appcompat.progressbar.COUILottieLoadingView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (COUILottieLoadingView.this.getVisibility() == 0 && COUILottieLoadingView.this.mLoadingView.getVisibility() == 0 && COUILottieLoadingView.this.getWindowVisibility() == 0) {
                    return;
                }
                COUILottieLoadingView.this.pauseAnimation();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        addView(effectiveAnimationView);
    }
}
