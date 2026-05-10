package com.coui.appcompat.couiswitch;

import android.R;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.Switch;
import androidx.appcompat.widget.SwitchCompat;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.soundloadutil.COUIAsyncSoundUtil;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.state.COUIStrokeDrawable;
import com.coui.appcompat.state.StateEffectAnimator;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$bool;
import com.support.appcompat.R$dimen;
import com.support.appcompat.R$drawable;
import com.support.appcompat.R$raw;
import com.support.appcompat.R$string;
import com.support.appcompat.R$styleable;
import e0.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class COUISwitch extends SwitchCompat {
    private static final int ALPHA_VALUE_30 = 1308622847;
    private static final float DEFAULT_STATE_SPRING_BOUNCE = 0.0f;
    private static final float DEFAULT_STATE_SPRING_RESPONSE = 0.3f;
    private static final String TAG = "COUISwitch";
    private int mBarCheckedColor;
    private int mBarCheckedDisabledColor;
    private int mBarHeight;
    private int mBarTrackCurrentColor;
    private int mBarUnCheckedColor;
    private int mBarUncheckedDisabledColor;
    private Drawable mCheckedDrawable;
    private int mCirclePadding;
    private float mCircleScale;
    private float mCircleScaleX;
    private int mCircleTranslation;
    private int mDefaultTranslation;
    private boolean mEnableHapticFeedback;
    private StateEffectAnimator mHoverAnimator;
    private float mInnerCircleAlpha;
    private int mInnerCircleCheckedDisabledColor;
    private int mInnerCircleColor;
    private Paint mInnerCirclePaint;
    private RectF mInnerCircleRectF;
    private int mInnerCircleUncheckedDisabledColor;
    private int mInnerCircleWidth;
    private boolean mIsAttachedToWindow;
    private boolean mIsLoading;
    private boolean mIsLoadingStyle;
    private boolean mIsMeasured;
    private boolean mIsThemedEnabled;
    private float mLoadingAlpha;
    private Drawable mLoadingDrawable;
    private float mLoadingRotation;
    private float mLoadingScale;
    private AccessibilityManager mManager;
    private OnLoadingStateChangedListener mOnLoadingStateChangedListener;
    private int mOuterCircleCheckedDisabledColor;
    private int mOuterCircleColor;
    private Paint mOuterCirclePaint;
    private RectF mOuterCircleRectF;
    private int mOuterCircleStrokeWidth;
    private int mOuterCircleUnCheckedColor;
    private int mOuterCircleUncheckedDisabledColor;
    private int mOuterCircleWidth;
    private int mPadding;
    private StateEffectAnimator mPressAnimator;
    private boolean mShouldPlaySound;
    private AnimatorSet mStartLoadingAnimator;
    private COUIStateEffectDrawable mStateEffectBackground;
    private AnimatorSet mStopLoadingAnimator;
    private COUIStrokeDrawable mStrokeDrawable;
    private int mStyle;
    private String mSwitchLoadingStr;
    private String mSwitchOffStr;
    private String mSwitchOnStr;
    private final RectF mSwitchRect;
    private AnimatorSet mThemedLoadingAnimator;
    private Drawable mThemedLoadingCheckedBackground;
    private Drawable mThemedLoadingDrawable;
    private Drawable mThemedLoadingUncheckedBackground;
    private AnimatorSet mToggleAnimator;
    private Drawable mUncheckedDrawable;
    private ExecutorService mVibratorExecutor;

    public interface OnLoadingStateChangedListener {
        void onStartLoading();

        void onStopLoading();
    }

    public COUISwitch(Context context) {
        this(context, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void animateWhenStateChanged(boolean r12) {
        /*
            r11 = this;
            r0 = 0
            r1 = 2
            android.animation.AnimatorSet r2 = r11.mToggleAnimator
            if (r2 != 0) goto Ld
            android.animation.AnimatorSet r2 = new android.animation.AnimatorSet
            r2.<init>()
            r11.mToggleAnimator = r2
        Ld:
            r2 = 1050253722(0x3e99999a, float:0.3)
            r3 = 1036831949(0x3dcccccd, float:0.1)
            r4 = 0
            r5 = 1065353216(0x3f800000, float:1.0)
            android.view.animation.Interpolator r2 = e0.a.a(r2, r4, r3, r5)
            int r3 = r11.mCircleTranslation
            boolean r6 = r11.isRtlMode()
            if (r6 == 0) goto L29
            if (r12 == 0) goto L26
        L24:
            r6 = r0
            goto L2d
        L26:
            int r6 = r11.mDefaultTranslation
            goto L2d
        L29:
            if (r12 == 0) goto L24
            int r6 = r11.mDefaultTranslation
        L2d:
            android.animation.AnimatorSet r7 = r11.mToggleAnimator
            r7.setInterpolator(r2)
            float[] r2 = new float[r1]
            r2 = {x00b0: FILL_ARRAY_DATA , data: [1065353216, 1067869798} // fill-array
            java.lang.String r7 = "circleScaleX"
            android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r11, r7, r2)
            r8 = 133(0x85, double:6.57E-322)
            r2.setDuration(r8)
            float[] r10 = new float[r1]
            r10 = {x00b8: FILL_ARRAY_DATA , data: [1067869798, 1065353216} // fill-array
            android.animation.ObjectAnimator r7 = android.animation.ObjectAnimator.ofFloat(r11, r7, r10)
            r7.setStartDelay(r8)
            r8 = 250(0xfa, double:1.235E-321)
            r7.setDuration(r8)
            java.lang.String r8 = "circleTranslation"
            int[] r3 = new int[]{r3, r6}
            android.animation.ObjectAnimator r3 = android.animation.ObjectAnimator.ofInt(r11, r8, r3)
            r8 = 383(0x17f, double:1.89E-321)
            r3.setDuration(r8)
            float r6 = r11.mInnerCircleAlpha
            if (r12 == 0) goto L67
            goto L68
        L67:
            r4 = r5
        L68:
            java.lang.String r5 = "innerCircleAlpha"
            float[] r1 = new float[r1]
            r1[r0] = r6
            r0 = 1
            r1[r0] = r4
            android.animation.ObjectAnimator r0 = android.animation.ObjectAnimator.ofFloat(r11, r5, r1)
            r4 = 100
            r0.setDuration(r4)
            int r1 = r11.getBarColor()
            if (r12 == 0) goto L83
            int r12 = r11.mBarCheckedColor
            goto L85
        L83:
            int r12 = r11.mBarUnCheckedColor
        L85:
            java.lang.String r4 = "barColor"
            int[] r12 = new int[]{r1, r12}
            android.animation.ObjectAnimator r12 = android.animation.ObjectAnimator.ofArgb(r11, r4, r12)
            r4 = 450(0x1c2, double:2.223E-321)
            r12.setDuration(r4)
            android.animation.AnimatorSet r1 = r11.mToggleAnimator
            android.animation.AnimatorSet$Builder r1 = r1.play(r2)
            android.animation.AnimatorSet$Builder r1 = r1.with(r7)
            android.animation.AnimatorSet$Builder r1 = r1.with(r3)
            android.animation.AnimatorSet$Builder r0 = r1.with(r0)
            r0.with(r12)
            android.animation.AnimatorSet r11 = r11.mToggleAnimator
            r11.start()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.couiswitch.COUISwitch.animateWhenStateChanged(boolean):void");
    }

    private Drawable backgroundDrawable() {
        return isLoading() ? isChecked() ? this.mThemedLoadingCheckedBackground : this.mThemedLoadingUncheckedBackground : isChecked() ? this.mCheckedDrawable : this.mUncheckedDrawable;
    }

    private boolean canDrawBar() {
        return true;
    }

    private void configStateEffectAnimator() {
        this.mHoverAnimator = new StateEffectAnimator(this, "hover", 0, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorHover));
        this.mPressAnimator = new StateEffectAnimator(this, "press", 0, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPress));
        this.mHoverAnimator.setSpringResponse(0.3f);
        this.mHoverAnimator.setSpringBounce(0.0f);
        this.mPressAnimator.setSpringResponse(0.3f);
        this.mPressAnimator.setSpringBounce(0.0f);
    }

    private void drawBar() {
        Drawable trackDrawable;
        if (canDrawBar() && (trackDrawable = getTrackDrawable()) != null) {
            if (isEnabled()) {
                trackDrawable.setTint(d.o(this.mPressAnimator.getCurrentMaskColor(), d.o(this.mHoverAnimator.getCurrentMaskColor(), this.mBarTrackCurrentColor)));
            } else {
                trackDrawable.setTint(isChecked() ? this.mBarCheckedDisabledColor : this.mBarUncheckedDisabledColor);
            }
        }
    }

    private void drawLoading(Canvas canvas) {
        if (this.mIsLoading) {
            canvas.save();
            float f10 = this.mLoadingScale;
            canvas.scale(f10, f10, this.mOuterCircleRectF.centerX(), this.mOuterCircleRectF.centerY());
            canvas.rotate(this.mLoadingRotation, this.mOuterCircleRectF.centerX(), this.mOuterCircleRectF.centerY());
            Drawable drawable = this.mLoadingDrawable;
            if (drawable != null) {
                RectF rectF = this.mOuterCircleRectF;
                drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                this.mLoadingDrawable.setAlpha((int) (this.mLoadingAlpha * 255.0f));
                this.mLoadingDrawable.draw(canvas);
            }
            canvas.restore();
        }
    }

    private void drawOuterCircle(Canvas canvas) {
        canvas.save();
        float f10 = this.mCircleScale;
        canvas.scale(f10, f10, this.mOuterCircleRectF.centerX(), this.mOuterCircleRectF.centerY());
        this.mOuterCirclePaint.setColor(isChecked() ? this.mOuterCircleColor : this.mOuterCircleUnCheckedColor);
        if (!isEnabled()) {
            this.mOuterCirclePaint.setColor(isChecked() ? this.mOuterCircleCheckedDisabledColor : this.mOuterCircleUncheckedDisabledColor);
        }
        float f11 = this.mOuterCircleWidth / 2.0f;
        canvas.drawRoundRect(this.mOuterCircleRectF, f11, f11, this.mOuterCirclePaint);
        canvas.restore();
    }

    private void drawThemedBackground(Canvas canvas) {
        canvas.save();
        Drawable drawableBackgroundDrawable = backgroundDrawable();
        drawableBackgroundDrawable.setAlpha(drawableAlpha());
        int i10 = this.mPadding;
        int switchMinWidth = getSwitchMinWidth();
        int i11 = this.mPadding;
        drawableBackgroundDrawable.setBounds(i10, i10, switchMinWidth + i11, this.mBarHeight + i11);
        backgroundDrawable().draw(canvas);
        canvas.restore();
    }

    private void drawThemedLoading(Canvas canvas) {
        if (this.mIsLoading) {
            int width = (getWidth() - this.mOuterCircleWidth) / 2;
            int width2 = (getWidth() + this.mOuterCircleWidth) / 2;
            int height = (getHeight() - this.mOuterCircleWidth) / 2;
            int height2 = (getHeight() + this.mOuterCircleWidth) / 2;
            int width3 = getWidth() / 2;
            int height3 = getHeight() / 2;
            canvas.save();
            canvas.rotate(this.mLoadingRotation, width3, height3);
            this.mThemedLoadingDrawable.setBounds(width, height, width2, height2);
            this.mThemedLoadingDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private int drawableAlpha() {
        return (int) ((isEnabled() ? 1.0f : 0.5f) * 255.0f);
    }

    private int getBarColor() {
        return this.mBarTrackCurrentColor;
    }

    private void initAnimator() {
        initStartLoadingAnimator();
        initStopLoadingAnimator();
        initThemedLoadingAnimator();
    }

    private void initAttr(TypedArray typedArray, Context context) {
        this.mLoadingDrawable = typedArray.getDrawable(R$styleable.COUISwitch_loadingDrawable);
        this.mBarHeight = typedArray.getDimensionPixelSize(R$styleable.COUISwitch_barHeight, 0);
        this.mOuterCircleStrokeWidth = typedArray.getDimensionPixelSize(R$styleable.COUISwitch_outerCircleStrokeWidth, 0);
        this.mOuterCircleWidth = typedArray.getDimensionPixelOffset(R$styleable.COUISwitch_outerCircleWidth, 0);
        this.mInnerCircleWidth = typedArray.getDimensionPixelSize(R$styleable.COUISwitch_innerCircleWidth, 0);
        this.mCirclePadding = typedArray.getDimensionPixelSize(R$styleable.COUISwitch_circlePadding, 0);
        this.mInnerCircleColor = typedArray.getColor(R$styleable.COUISwitch_innerCircleColor, 0);
        this.mOuterCircleColor = typedArray.getColor(R$styleable.COUISwitch_outerCircleColor, 0);
        this.mInnerCircleUncheckedDisabledColor = typedArray.getColor(R$styleable.COUISwitch_innerCircleUncheckedDisabledColor, 0);
        this.mOuterCircleUnCheckedColor = typedArray.getColor(R$styleable.COUISwitch_outerUnCheckedCircleColor, 0);
        this.mInnerCircleCheckedDisabledColor = typedArray.getColor(R$styleable.COUISwitch_innerCircleCheckedDisabledColor, 0);
        this.mOuterCircleUncheckedDisabledColor = typedArray.getColor(R$styleable.COUISwitch_outerCircleUncheckedDisabledColor, 0);
        this.mOuterCircleCheckedDisabledColor = typedArray.getColor(R$styleable.COUISwitch_outerCircleCheckedDisabledColor, 0);
        this.mBarCheckedDisabledColor = typedArray.getColor(R$styleable.COUISwitch_barUncheckedDisabledColor, COUIContextUtil.getAttrColor(context, R$attr.couiColorPrimary) & ALPHA_VALUE_30);
        boolean z10 = getContext().getResources().getBoolean(R$bool.coui_switch_theme_enable);
        this.mIsThemedEnabled = z10;
        if (z10) {
            this.mThemedLoadingDrawable = typedArray.getDrawable(R$styleable.COUISwitch_themedLoadingDrawable);
            this.mThemedLoadingCheckedBackground = typedArray.getDrawable(R$styleable.COUISwitch_themedLoadingCheckedBackground);
            this.mThemedLoadingUncheckedBackground = typedArray.getDrawable(R$styleable.COUISwitch_themedLoadingUncheckedBackground);
            this.mCheckedDrawable = typedArray.getDrawable(R$styleable.COUISwitch_themedCheckedDrawable);
            this.mUncheckedDrawable = typedArray.getDrawable(R$styleable.COUISwitch_themedUncheckedDrawable);
        }
    }

    private void initOutLine() {
        if (!isOs16() || this.mIsThemedEnabled) {
            return;
        }
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.couiswitch.COUISwitch.1
            private final Rect mOplusOutLineRect = new Rect();
            private OplusOutlineAdapter mOplusOutline;

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                this.mOplusOutline = new OplusOutlineAdapter(outline, 1);
                this.mOplusOutLineRect.left = (int) COUISwitch.this.mSwitchRect.left;
                this.mOplusOutLineRect.top = (int) COUISwitch.this.mSwitchRect.top;
                this.mOplusOutLineRect.right = (int) COUISwitch.this.mSwitchRect.right;
                this.mOplusOutLineRect.bottom = (int) COUISwitch.this.mSwitchRect.bottom;
                this.mOplusOutline.setSmoothRoundRect(this.mOplusOutLineRect, (this.mOplusOutLineRect.height() * COUISwitch.this.getScaleY()) / 2.0f);
            }
        });
        setClipToOutline(true);
        ShadowUtils.clearShadow(this);
    }

    private void initPaint() {
        this.mOuterCirclePaint = new Paint(1);
        setPaintShadowLayer();
        this.mInnerCirclePaint = new Paint(1);
    }

    private void initResValue(Context context) {
        this.mPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_switch_padding);
        this.mSwitchOnStr = getResources().getString(R$string.switch_on);
        this.mSwitchOffStr = getResources().getString(R$string.switch_off);
        this.mSwitchLoadingStr = getResources().getString(R$string.switch_loading);
        this.mDefaultTranslation = (getSwitchMinWidth() - (this.mCirclePadding * 2)) - this.mOuterCircleWidth;
        this.mBarCheckedColor = COUIContextUtil.getAttrColor(context, R$attr.couiColorPrimary);
        this.mBarUnCheckedColor = COUIContextUtil.getAttrColor(context, R$attr.couiColorControls);
        this.mBarTrackCurrentColor = isChecked() ? this.mBarCheckedColor : this.mBarUnCheckedColor;
        this.mBarUncheckedDisabledColor = COUIContextUtil.getAttrColor(context, R$attr.couiColorPressBackground);
        setTrackTintMode(PorterDuff.Mode.SRC);
    }

    private void initStartLoadingAnimator() {
        Interpolator interpolatorA = a.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.mStartLoadingAnimator = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "circleScale", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(interpolatorA);
        objectAnimatorOfFloat.setDuration(433L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "loadingScale", 0.5f, 1.0f);
        objectAnimatorOfFloat2.setInterpolator(interpolatorA);
        objectAnimatorOfFloat2.setDuration(550L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, "loadingAlpha", 0.0f, 1.0f);
        objectAnimatorOfFloat3.setInterpolator(interpolatorA);
        objectAnimatorOfFloat3.setDuration(550L);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this, "loadingRotation", 0.0f, 360.0f);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        objectAnimatorOfFloat4.setDuration(800L);
        objectAnimatorOfFloat4.setInterpolator(new COUILinearInterpolator());
        this.mStartLoadingAnimator.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat4);
    }

    private void initStateEffectBackground() {
        Drawable background = getBackground();
        COUIStrokeDrawable cOUIStrokeDrawable = new COUIStrokeDrawable(getContext());
        this.mStrokeDrawable = cOUIStrokeDrawable;
        cOUIStrokeDrawable.setStrokeRect(this.mSwitchRect, getContext().getResources().getDimensionPixelOffset(R$dimen.bar_radius), getContext().getResources().getDimensionPixelOffset(R$dimen.bar_radius));
        if (background == null) {
            background = new ColorDrawable(0);
        }
        Drawable[] drawableArr = {background, this.mStrokeDrawable};
        setDefaultFocusHighlightEnabled(false);
        COUIStateEffectDrawable cOUIStateEffectDrawable = new COUIStateEffectDrawable(drawableArr);
        this.mStateEffectBackground = cOUIStateEffectDrawable;
        super.setBackground(cOUIStateEffectDrawable);
    }

    private void initStopLoadingAnimator() {
        Interpolator interpolatorA = a.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.mStopLoadingAnimator = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "loadingAlpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(interpolatorA);
        objectAnimatorOfFloat.setDuration(100L);
        this.mStopLoadingAnimator.play(objectAnimatorOfFloat);
    }

    private void initThemedLoadingAnimator() {
        this.mThemedLoadingAnimator = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "loadingRotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setInterpolator(new COUILinearInterpolator());
        this.mThemedLoadingAnimator.play(objectAnimatorOfFloat);
    }

    private boolean isOs16() {
        return RoundCornerUtil.getSmoothStyleType() == 1;
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    private void performFeedBack() {
        if (isTactileFeedbackEnabled()) {
            if (this.mVibratorExecutor == null) {
                this.mVibratorExecutor = Executors.newSingleThreadExecutor();
            }
            this.mVibratorExecutor.execute(new Runnable() { // from class: com.coui.appcompat.couiswitch.COUISwitch.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(263L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                    if (COUISwitch.this.mToggleAnimator == null || !COUISwitch.this.mToggleAnimator.isRunning()) {
                        return;
                    }
                    COUISwitch.this.performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
                }
            });
            setTactileFeedbackEnabled(false);
        }
    }

    private void playSoundEffect(boolean z10) {
        COUIAsyncSoundUtil.play(getContext(), z10 ? R$raw.coui_switch_sound_on : R$raw.coui_switch_sound_off, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    private void setBarColor(int i10) {
        this.mBarTrackCurrentColor = i10;
        invalidate();
    }

    private void setInnerCircleRectF() {
        RectF rectF = this.mOuterCircleRectF;
        float f10 = rectF.left;
        int i10 = this.mOuterCircleStrokeWidth;
        this.mInnerCircleRectF.set(f10 + i10, rectF.top + i10, rectF.right - i10, rectF.bottom - i10);
    }

    private void setOuterCircleRectF() {
        float f10;
        float f11;
        float f12;
        float switchMinWidth;
        if (isChecked()) {
            if (isRtlMode()) {
                f10 = this.mCirclePadding + this.mCircleTranslation + this.mPadding;
                f11 = this.mOuterCircleWidth;
                f12 = this.mCircleScaleX;
                switchMinWidth = (f11 * f12) + f10;
            } else {
                switchMinWidth = ((getSwitchMinWidth() - this.mCirclePadding) - (this.mDefaultTranslation - this.mCircleTranslation)) + this.mPadding;
                f10 = switchMinWidth - (this.mOuterCircleWidth * this.mCircleScaleX);
            }
        } else if (isRtlMode()) {
            int switchMinWidth2 = (getSwitchMinWidth() - this.mCirclePadding) - (this.mDefaultTranslation - this.mCircleTranslation);
            int i10 = this.mPadding;
            float f13 = switchMinWidth2 + i10;
            float f14 = i10 + (f13 - (this.mOuterCircleWidth * this.mCircleScaleX));
            switchMinWidth = f13;
            f10 = f14;
        } else {
            f10 = this.mCirclePadding + this.mCircleTranslation + this.mPadding;
            f11 = this.mOuterCircleWidth;
            f12 = this.mCircleScaleX;
            switchMinWidth = (f11 * f12) + f10;
        }
        int i11 = this.mBarHeight;
        float f15 = ((i11 - r3) / 2.0f) + this.mPadding;
        this.mOuterCircleRectF.set(f10, f15, switchMinWidth, this.mOuterCircleWidth + f15);
    }

    private void setPaintShadowLayer() {
        this.mOuterCirclePaint.setShadowLayer(8.0f, 0.0f, 4.0f, Color.argb(25, 0, 0, 0));
    }

    public void disableThemed() {
        this.mIsThemedEnabled = false;
    }

    public void enableThemed() {
        this.mIsThemedEnabled = true;
    }

    @Override // android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Switch.class.getName();
    }

    public final int getOuterCircleUncheckedColor() {
        return this.mOuterCircleUnCheckedColor;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public boolean isTactileFeedbackEnabled() {
        return this.mEnableHapticFeedback;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        COUIAsyncSoundUtil.register(getContext(), R$raw.coui_switch_sound_on, R$raw.coui_switch_sound_off);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mIsThemedEnabled) {
            drawThemedBackground(canvas);
            drawThemedLoading(canvas);
            return;
        }
        drawBar();
        setOuterCircleRectF();
        setInnerCircleRectF();
        super.onDraw(canvas);
        drawOuterCircle(canvas);
        drawLoading(canvas);
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (!this.mIsLoadingStyle) {
            accessibilityNodeInfo.setText(isChecked() ? this.mSwitchOnStr : this.mSwitchOffStr);
        } else {
            accessibilityNodeInfo.setCheckable(false);
            accessibilityNodeInfo.setText(isChecked() ? this.mSwitchOnStr : this.mSwitchOffStr);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int switchMinWidth = getSwitchMinWidth();
        int i12 = this.mPadding;
        setMeasuredDimension(switchMinWidth + (i12 * 2), this.mBarHeight + (i12 * 2));
        if (this.mIsMeasured) {
            return;
        }
        this.mIsMeasured = true;
        if (isRtlMode()) {
            this.mCircleTranslation = isChecked() ? 0 : this.mDefaultTranslation;
        } else {
            this.mCircleTranslation = isChecked() ? this.mDefaultTranslation : 0;
        }
        this.mInnerCircleAlpha = isChecked() ? 0.0f : 1.0f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mSwitchRect.set(0.0f, 0.0f, i10, i11);
        if (isOs16()) {
            invalidateOutline();
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isClickable() || isFocusable()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.mPressAnimator.animateToProgress(10000.0f, true);
            } else if (actionMasked == 1) {
                this.mShouldPlaySound = true;
                this.mEnableHapticFeedback = true;
                this.mPressAnimator.animateToProgress(0.0f, true);
                if (this.mIsLoadingStyle && isEnabled()) {
                    startLoading();
                    return false;
                }
            } else if (actionMasked == 3) {
                this.mPressAnimator.animateToProgress(0.0f, true);
            }
        }
        if (this.mIsLoading) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUISwitch, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUISwitch, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            initAttr(typedArrayObtainStyledAttributes, getContext());
            typedArrayObtainStyledAttributes.recycle();
            initResValue(getContext());
        }
        StateEffectAnimator stateEffectAnimator = this.mPressAnimator;
        if (stateEffectAnimator != null) {
            stateEffectAnimator.setEndMaskColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPress));
        }
        StateEffectAnimator stateEffectAnimator2 = this.mHoverAnimator;
        if (stateEffectAnimator2 != null) {
            stateEffectAnimator2.setEndMaskColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorHover));
        }
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable != null) {
            cOUIStateEffectDrawable.refresh(getContext());
        }
        invalidate();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable == null) {
            super.setBackground(drawable);
        } else if (drawable == null) {
            cOUIStateEffectDrawable.setViewBackground(new ColorDrawable(0));
        } else {
            cOUIStateEffectDrawable.setViewBackground(drawable);
        }
    }

    public final void setBarCheckedColor(int i10) {
        this.mBarCheckedColor = i10;
        if (isChecked()) {
            this.mBarTrackCurrentColor = this.mBarCheckedColor;
        }
        setBarStateListDrawable();
        invalidate();
    }

    public final void setBarCheckedDisabledColor(int i10) {
        this.mBarCheckedDisabledColor = i10;
        setBarStateListDrawable();
        invalidate();
    }

    public void setBarStateListDrawable() {
        Drawable drawableE = r.a.e(getContext(), R$drawable.switch_custom_track_on);
        Drawable drawableE2 = r.a.e(getContext(), R$drawable.switch_custom_track_off);
        Drawable drawableE3 = r.a.e(getContext(), R$drawable.switch_custom_track_on_disable);
        Drawable drawableE4 = r.a.e(getContext(), R$drawable.switch_custom_track_off_disable);
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (this.mBarCheckedColor != 0) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawableE.mutate();
            gradientDrawable.setColor(this.mBarCheckedColor);
            stateListDrawable.addState(new int[]{R.attr.state_checked, 16842910}, gradientDrawable);
        } else {
            stateListDrawable.addState(new int[]{R.attr.state_checked, 16842910}, drawableE);
        }
        if (this.mBarUnCheckedColor != 0) {
            GradientDrawable gradientDrawable2 = (GradientDrawable) drawableE2.mutate();
            gradientDrawable2.setColor(this.mBarUnCheckedColor);
            stateListDrawable.addState(new int[]{-16842912, 16842910}, gradientDrawable2);
        } else {
            stateListDrawable.addState(new int[]{-16842912, 16842910}, drawableE2);
        }
        if (this.mBarCheckedDisabledColor != 0) {
            GradientDrawable gradientDrawable3 = (GradientDrawable) drawableE3.mutate();
            gradientDrawable3.setColor(this.mBarCheckedDisabledColor);
            stateListDrawable.addState(new int[]{-16842910, R.attr.state_checked}, gradientDrawable3);
        } else {
            stateListDrawable.addState(new int[]{-16842910, R.attr.state_checked}, drawableE3);
        }
        if (this.mBarUncheckedDisabledColor != 0) {
            GradientDrawable gradientDrawable4 = (GradientDrawable) drawableE4.mutate();
            gradientDrawable4.setColor(this.mBarUncheckedDisabledColor);
            stateListDrawable.addState(new int[]{-16842910, -16842912}, gradientDrawable4);
        } else {
            stateListDrawable.addState(new int[]{-16842910, -16842912}, drawableE4);
        }
        setTrackDrawable(stateListDrawable);
    }

    public final void setBarUnCheckedColor(int i10) {
        this.mBarUnCheckedColor = i10;
        if (!isChecked()) {
            this.mBarTrackCurrentColor = this.mBarUnCheckedColor;
        }
        setBarStateListDrawable();
        invalidate();
    }

    public final void setBarUncheckedDisabledColor(int i10) {
        this.mBarUncheckedDisabledColor = i10;
        setBarStateListDrawable();
        invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        setChecked(z10, true);
    }

    public void setCheckedDrawable(Drawable drawable) {
        this.mCheckedDrawable = drawable;
    }

    public void setCircleScale(float f10) {
        this.mCircleScale = f10;
        invalidate();
    }

    public void setCircleScaleX(float f10) {
        this.mCircleScaleX = f10;
        invalidate();
    }

    public void setCircleTranslation(int i10) {
        this.mCircleTranslation = i10;
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (this.mOuterCirclePaint == null) {
            this.mOuterCirclePaint = new Paint(1);
        }
        if (z10) {
            setPaintShadowLayer();
        } else {
            this.mOuterCirclePaint.clearShadowLayer();
        }
    }

    @Override // android.view.View
    public void setHovered(boolean z10) {
        super.setHovered(z10);
        if (isEnabled()) {
            this.mHoverAnimator.animateToProgress(z10 ? 10000.0f : 0.0f, true);
        }
    }

    public void setInnerCircleAlpha(float f10) {
        this.mInnerCircleAlpha = f10;
        invalidate();
    }

    public void setInnerCircleColor(int i10) {
        this.mInnerCircleColor = i10;
    }

    public void setLoadingAlpha(float f10) {
        this.mLoadingAlpha = f10;
        invalidate();
    }

    public void setLoadingDrawable(Drawable drawable) {
        this.mLoadingDrawable = drawable;
    }

    public void setLoadingRotation(float f10) {
        this.mLoadingRotation = f10;
        invalidate();
    }

    public void setLoadingScale(float f10) {
        this.mLoadingScale = f10;
        invalidate();
    }

    public void setLoadingStyle(boolean z10) {
        this.mIsLoadingStyle = z10;
    }

    public void setOnLoadingStateChangedListener(OnLoadingStateChangedListener onLoadingStateChangedListener) {
        this.mOnLoadingStateChangedListener = onLoadingStateChangedListener;
    }

    public void setOuterCircleColor(int i10) {
        this.mOuterCircleColor = i10;
    }

    public void setOuterCircleStrokeWidth(int i10) {
        this.mOuterCircleStrokeWidth = i10;
    }

    public final void setOuterCircleUncheckedColor(int i10) {
        this.mOuterCircleUnCheckedColor = i10;
        invalidate();
    }

    public void setShouldPlaySound(boolean z10) {
        this.mShouldPlaySound = z10;
    }

    public void setTactileFeedbackEnabled(boolean z10) {
        this.mEnableHapticFeedback = z10;
    }

    public void setThemedLoadingCheckedBackground(Drawable drawable) {
        this.mThemedLoadingCheckedBackground = drawable;
    }

    public void setThemedLoadingUncheckedBackground(Drawable drawable) {
        this.mThemedLoadingUncheckedBackground = drawable;
    }

    public void setUncheckedDrawable(Drawable drawable) {
        this.mUncheckedDrawable = drawable;
    }

    public void startLoading() {
        if (this.mIsLoading) {
            return;
        }
        AccessibilityManager accessibilityManager = this.mManager;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            announceForAccessibility(this.mSwitchLoadingStr);
        }
        this.mIsLoading = true;
        if (this.mIsThemedEnabled) {
            this.mThemedLoadingAnimator.start();
        } else {
            this.mStartLoadingAnimator.start();
        }
        OnLoadingStateChangedListener onLoadingStateChangedListener = this.mOnLoadingStateChangedListener;
        if (onLoadingStateChangedListener != null) {
            onLoadingStateChangedListener.onStartLoading();
        }
        invalidate();
    }

    public void stopLoading() {
        AccessibilityManager accessibilityManager;
        if (this.mIsLoadingStyle && (accessibilityManager = this.mManager) != null && accessibilityManager.isEnabled()) {
            announceForAccessibility(isChecked() ? this.mSwitchOffStr : this.mSwitchOnStr);
        }
        AnimatorSet animatorSet = this.mStartLoadingAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mStartLoadingAnimator.cancel();
        }
        AnimatorSet animatorSet2 = this.mThemedLoadingAnimator;
        if (animatorSet2 != null && animatorSet2.isRunning()) {
            this.mThemedLoadingAnimator.cancel();
        }
        if (this.mIsLoading) {
            if (!this.mIsThemedEnabled) {
                this.mStopLoadingAnimator.start();
            }
            setCircleScale(1.0f);
            this.mIsLoading = false;
            toggle();
            OnLoadingStateChangedListener onLoadingStateChangedListener = this.mOnLoadingStateChangedListener;
            if (onLoadingStateChangedListener != null) {
                onLoadingStateChangedListener.onStopLoading();
            }
        }
    }

    public COUISwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiSwitchStyle);
    }

    public void setChecked(boolean z10, boolean z11) {
        if (z10 == isChecked()) {
            return;
        }
        super.setChecked(z10);
        if (!this.mIsThemedEnabled) {
            z10 = isChecked();
            AnimatorSet animatorSet = this.mToggleAnimator;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                this.mToggleAnimator.cancel();
                this.mToggleAnimator.end();
            }
            if (this.mIsAttachedToWindow && z11) {
                animateWhenStateChanged(z10);
            } else {
                if (isRtlMode()) {
                    setCircleTranslation(z10 ? 0 : this.mDefaultTranslation);
                } else {
                    setCircleTranslation(z10 ? this.mDefaultTranslation : 0);
                }
                setInnerCircleAlpha(z10 ? 0.0f : 1.0f);
                setBarColor(z10 ? this.mBarCheckedColor : this.mBarUnCheckedColor);
            }
        }
        if (this.mShouldPlaySound && this.mIsAttachedToWindow) {
            playSoundEffect(z10);
            this.mShouldPlaySound = false;
        }
        performFeedBack();
        invalidate();
    }

    public COUISwitch(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSwitchRect = new RectF();
        this.mIsLoading = false;
        this.mIsLoadingStyle = false;
        this.mToggleAnimator = new AnimatorSet();
        this.mOuterCircleRectF = new RectF();
        this.mInnerCircleRectF = new RectF();
        this.mCircleScaleX = 1.0f;
        this.mCircleScale = 1.0f;
        this.mIsMeasured = false;
        setSoundEffectsEnabled(false);
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        this.mManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (attributeSet != null && attributeSet.getStyleAttribute() != 0) {
            this.mStyle = attributeSet.getStyleAttribute();
        } else {
            this.mStyle = i10;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUISwitch, i10, 0);
        initAttr(typedArrayObtainStyledAttributes, context);
        typedArrayObtainStyledAttributes.recycle();
        initAnimator();
        initPaint();
        initResValue(context);
        initStateEffectBackground();
        configStateEffectAnimator();
        initOutLine();
    }
}
