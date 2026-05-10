package com.coui.appcompat.floatingactionbutton;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Interpolator;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.oplus.animation.OplusViewSeamless;
import com.support.appcompat.R$dimen;

/* JADX INFO: loaded from: classes.dex */
class COUIFloatingButtonSeamlessImpl {
    private static final int DEFAULT_FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_DURATION = 200;
    private static final Interpolator FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR = new COUILinearInterpolator();
    private Bundle mSeamlessViewBundle;

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonSeamlessImpl$1 */
    class AnonymousClass1 extends OplusViewSeamless.AnimationCallback {
        final /* synthetic */ View val$view;

        AnonymousClass1(View view) {
            view = view;
        }

        public void animationProgress(float f10) {
            if (f10 == 0.0f || f10 == 1.0f) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "elevation", 0.0f, view.getContext().getResources().getDimensionPixelSize(R$dimen.coui_float_btn_shadow_elevation));
                objectAnimatorOfFloat.setDuration(200L);
                objectAnimatorOfFloat.setInterpolator(COUIFloatingButtonSeamlessImpl.FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR);
                objectAnimatorOfFloat.start();
            }
        }
    }

    COUIFloatingButtonSeamlessImpl() {
    }

    public Bundle getSeamlessViewBundle() {
        return this.mSeamlessViewBundle;
    }

    public void setSeamlessBundle(View view) {
        if (COUIFloatingButton.supportSeamlessAnimation()) {
            if (this.mSeamlessViewBundle == null) {
                this.mSeamlessViewBundle = new Bundle();
            }
            this.mSeamlessViewBundle.putBoolean("view_seamless_open", true);
            this.mSeamlessViewBundle.putFloat("view_seamless_radius", view.getWidth() / 2.0f);
            if (OplusViewSeamless.setSeamlessView(view, view.getContext(), this.mSeamlessViewBundle, new OplusViewSeamless.AnimationCallback() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButtonSeamlessImpl.1
                final /* synthetic */ View val$view;

                AnonymousClass1(View view2) {
                    view = view2;
                }

                public void animationProgress(float f10) {
                    if (f10 == 0.0f || f10 == 1.0f) {
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "elevation", 0.0f, view.getContext().getResources().getDimensionPixelSize(R$dimen.coui_float_btn_shadow_elevation));
                        objectAnimatorOfFloat.setDuration(200L);
                        objectAnimatorOfFloat.setInterpolator(COUIFloatingButtonSeamlessImpl.FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR);
                        objectAnimatorOfFloat.start();
                    }
                }
            })) {
                return;
            }
            this.mSeamlessViewBundle = null;
        }
    }
}
