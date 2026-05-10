package com.coui.appcompat.seekbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.seekbar.R$attr;
import com.support.seekbar.R$color;
import com.support.seekbar.R$dimen;
import com.support.seekbar.R$style;
import com.support.seekbar.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIIntentSeekBar extends COUISeekBarDeprecate {
    private boolean mIsFollowThumb;
    private int mSecondaryProgress;
    private int mSecondaryProgressColor;
    private float mThumbOutShadeRadius;

    public COUIIntentSeekBar(Context context) {
        this(context, null);
    }

    private void drawThumbs(Canvas canvas) {
        float seekBarWidth = getSeekBarWidth();
        int seekBarCenterY = getSeekBarCenterY();
        float start = isLayoutRtl() ? ((getStart() + this.mCurPaddingHorizontal) + seekBarWidth) - (this.mScale * seekBarWidth) : getStart() + this.mCurPaddingHorizontal + (this.mScale * seekBarWidth);
        float f10 = this.mThumbOutRadius;
        float f11 = start - f10;
        float f12 = start + f10;
        this.mPaint.setColor(this.mThumbColor);
        if (!this.mIsDragging || this.mIsFollowThumb) {
            float f13 = seekBarCenterY;
            float f14 = this.mThumbOutRadius;
            canvas.drawRoundRect(f11, f13 - f14, f12, f13 + f14, f14, f14, this.mPaint);
        } else {
            float f15 = this.mThumbOutShadeRadius;
            float f16 = seekBarCenterY;
            float f17 = this.mThumbOutRadius;
            canvas.drawRoundRect(f11 - f15, (f16 - f17) - f15, f12 + f15, f16 + f17 + f15, f17 + f15, f17 + f15, this.mPaint);
        }
        this.mLabelX = f11 + ((f12 - f11) / 2.0f);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBarDeprecate
    protected void drawActiveTrack(Canvas canvas, float f10) {
        float f11;
        float f12;
        float start;
        float f13;
        if (this.mShowProgress) {
            int seekBarCenterY = getSeekBarCenterY();
            getWidth();
            getEnd();
            int i10 = this.mMax - this.mMin;
            if (isLayoutRtl()) {
                start = getStart() + this.mCurPaddingHorizontal + f10;
                int i11 = this.mOldProgress;
                int i12 = this.mMin;
                float f14 = i10;
                float f15 = start - (((i11 - i12) * f10) / f14);
                f13 = start - (((this.mSecondaryProgress - i12) * f10) / f14);
                f11 = f15;
                f12 = start;
            } else {
                float start2 = this.mCurPaddingHorizontal + getStart();
                int i13 = this.mOldProgress;
                int i14 = this.mMin;
                float f16 = i10;
                float f17 = (((i13 - i14) * f10) / f16) + start2;
                float f18 = start2 + (((this.mSecondaryProgress - i14) * f10) / f16);
                f11 = start2;
                f12 = f17;
                start = f18;
                f13 = f11;
            }
            this.mPaint.setColor(this.mSecondaryProgressColor);
            float f19 = this.mCurProgressRadius;
            float f20 = seekBarCenterY;
            this.mProgressRect.set(f13 - f19, f20 - f19, start + f19, f19 + f20);
            RectF rectF = this.mProgressRect;
            float f21 = this.mCurProgressRadius;
            canvas.drawRoundRect(rectF, f21, f21, this.mPaint);
            if (this.mIsFollowThumb) {
                super.drawActiveTrack(canvas, f10);
                return;
            }
            this.mPaint.setColor(this.mProgressColor);
            RectF rectF2 = this.mProgressRect;
            float f22 = this.mCurProgressRadius;
            rectF2.set(f11 - f22, f20 - f22, f12 + f22, f20 + f22);
            RectF rectF3 = this.mProgressRect;
            float f23 = this.mCurProgressRadius;
            canvas.drawRoundRect(rectF3, f23, f23, this.mPaint);
            drawThumbs(canvas);
        }
    }

    @Override // android.widget.ProgressBar
    public int getSecondaryProgress() {
        return this.mSecondaryProgress;
    }

    public boolean isFollowThumb() {
        return this.mIsFollowThumb;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBarDeprecate, d7.a
    public /* bridge */ /* synthetic */ void onAnimationStart(d7.d dVar) {
        super.onAnimationStart(dVar);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBarDeprecate
    void onStopTrackingTouch() {
        super.onStopTrackingTouch();
        this.mOldProgress = this.mProgress;
    }

    public void setFollowThumb(boolean z10) {
        this.mIsFollowThumb = z10;
    }

    @Override // android.widget.ProgressBar
    public void setSecondaryProgress(int i10) {
        if (i10 >= 0) {
            this.mSecondaryProgress = Math.max(this.mMin, Math.min(i10, this.mMax));
            invalidate();
        }
    }

    public void setSecondaryProgressColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mSecondaryProgressColor = getColor(this, colorStateList, r.a.c(getContext(), R$color.coui_seekbar_secondary_progress_color));
            invalidate();
        }
    }

    public COUIIntentSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiIntentSeekBarStyle);
    }

    public COUIIntentSeekBar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, COUIContextUtil.isCOUIDarkTheme(context) ? R$style.COUIIntentSeekBar_Dark : R$style.COUIIntentSeekBar);
    }

    public COUIIntentSeekBar(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mSecondaryProgress = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIIntentSeekBar, i10, i11);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIIntentSeekBar_couiSeekBarSecondaryProgressColor);
        this.mIsFollowThumb = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIIntentSeekBar_couiSeekBarIsFollowThumb, false);
        typedArrayObtainStyledAttributes.recycle();
        this.mSecondaryProgressColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
        this.mThumbOutShadeRadius = getResources().getDimensionPixelSize(R$dimen.coui_seekbar_intent_thumb_out_shade_radius);
    }
}
