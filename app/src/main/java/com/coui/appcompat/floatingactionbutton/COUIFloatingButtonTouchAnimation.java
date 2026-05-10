package com.coui.appcompat.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class COUIFloatingButtonTouchAnimation extends ScaleAnimation {
    private static final int COLOR_HSL_ARRAY_SIZE = 3;
    private static final int COLOR_RGB_MAX_VALUE = 255;
    private static final float DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MAX_VALUE = 1.0f;
    private static final float DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE = 0.8f;
    private int mBackgroundColor;
    private float mBrightnessValue;
    private final float mEndValue;
    private float mScaleValue;
    private final float mStartValue;
    private WeakReference<View> mTargetView;

    public COUIFloatingButtonTouchAnimation(float f10, float f11, float f12, float f13) {
        super(f10, f11, f10, f11, f12, f13);
        this.mBackgroundColor = 0;
        this.mStartValue = f10;
        this.mEndValue = f11;
    }

    private int getBrightnessColor(int i10, float f10) {
        float[] fArr = new float[3];
        d.k(i10, fArr);
        fArr[2] = fArr[2] * f10;
        int iA = d.a(fArr);
        return Color.argb(Color.alpha(i10), Math.min(255, Color.red(iA)), Math.min(255, Color.green(iA)), Math.min(255, Color.blue(iA)));
    }

    private float getBrightnessValue(float f10) {
        float f11 = this.mStartValue;
        float f12 = this.mEndValue;
        if (f11 > f12) {
            return 1.0f + (f10 * (-0.19999999f));
        }
        if (f11 < f12) {
            return (f10 * 0.19999999f) + DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE;
        }
        return 1.0f;
    }

    @Override // android.view.animation.ScaleAnimation, android.view.animation.Animation
    protected void applyTransformation(float f10, Transformation transformation) {
        super.applyTransformation(f10, transformation);
        float f11 = this.mStartValue;
        this.mScaleValue = f11 + ((this.mEndValue - f11) * f10);
        WeakReference<View> weakReference = this.mTargetView;
        if (weakReference != null) {
            View view = weakReference.get();
            ColorStateList backgroundTintList = view.getBackgroundTintList();
            int defaultColor = backgroundTintList != null ? backgroundTintList.getDefaultColor() : view.getBackground() instanceof ColorDrawable ? ((ColorDrawable) view.getBackground()).getColor() : Integer.MIN_VALUE;
            if (defaultColor != Integer.MIN_VALUE) {
                float brightnessValue = getBrightnessValue(f10);
                this.mBrightnessValue = brightnessValue;
                this.mBackgroundColor = getBrightnessColor(defaultColor, brightnessValue);
                view.getBackground().setTint(this.mBackgroundColor);
            }
        }
    }

    @Override // android.view.animation.Animation
    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public float getScaleValue() {
        return this.mScaleValue;
    }

    public void setTargetView(View view) {
        this.mTargetView = new WeakReference<>(view);
    }

    public float getBrightnessValue() {
        return this.mBrightnessValue;
    }
}
