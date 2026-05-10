package com.coui.appcompat.progressbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.ProgressBar;
import androidx.appcompat.widget.o0;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.roundRect.COUIShapePath;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.tintimageview.COUITintUtil;
import com.oplus.graphics.OplusPathAdapter;
import com.support.appcompat.R$attr;
import com.support.progressbar.R$color;
import com.support.progressbar.R$dimen;
import com.support.progressbar.R$drawable;
import com.support.progressbar.R$string;
import com.support.progressbar.R$style;
import com.support.progressbar.R$styleable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUIInstallLoadProgress extends COUILoadProgress {
    private static final String CIRCLE_BRIGHTNESS_HOLDER = "circleBrightnessHolder";
    private static final String CIRCLE_IN_ALPHA_HOLDER = "circleInAlphaHolder";
    private static final int CIRCLE_MAX_ALPHA = 255;
    private static final String CIRCLE_OUT_ALPHA_HOLDER = "circleOutAlphaHolder";
    private static final String CIRCLE_RADIUS_HOLDER = "circleRadiusHolder";
    private static final float DEFAULT_BRIGHTNESS_MAX_VALUE = 0.8f;
    private static final float DEFAULT_MIN_PRESS_FEEDBACK = 0.005f;
    private static final float DEFAULT_NARROW_FINAL_VALUE = 0.92f;
    private static final float DEFAULT_SCALE_PARAMETER = 0.05f;
    private static final float DEFAULT_SCALE_PERCENT = 0.4f;
    private static final String HOLDER_BRIGHTNESS = "brightnessHolder";
    private static final String HOLDER_NARROW_FONT = "narrowHolderFont";
    private static final String HOLDER_NARROW_X = "narrowHolderX";
    private static final String HOLDER_NARROW_Y = "narrowHolderY";
    public static final int LOAD_STYLE_BIG_ROUND = 1;
    public static final int LOAD_STYLE_CIRCLE = 2;
    public static final int LOAD_STYLE_DEFAULT = 0;
    private static final int MAX_COLOR = 255;
    private static final int NORMAL_ANIMATOR_DURATION = 340;
    private static final float ONE_POINT_FIVE = 1.5f;
    private static final double POINT_FIVE = 0.5d;
    private static final int PRESS_ANIMATOR_DURATION = 200;
    private static final int[] mAttrArray = {R$attr.couiColorPrimary, R$attr.couiColorSecondary};
    private final boolean DEBUG;
    private final String TAG;
    private String mApostrophe;
    private int mBtnTextColor;
    private boolean mBtnTextColorChanged;
    private ColorStateList mBtnTextColorStateList;
    private Bitmap mCircleLoadBitmap;
    private Paint mCirclePaint;
    private Bitmap mCirclePauseBitmap;
    private Bitmap mCircleReloadBitmap;
    private float[] mColorHsl;
    private int mColorPrimary;
    private int mColorSecondary;
    private int mColorWhite;
    private Context mContext;
    private float mCurrentBrightness;
    private float mCurrentCircleRadius;
    private int mCurrentInBitmapAlpha;
    private int mCurrentOutBitmapAlpha;
    private int mCurrentRoundBorderRadius;
    private int mDefaultCircleRadius;
    private ColorStateList mDefaultTextColor;
    private int mDefaultTextSize;
    private int mDefaultWidth;
    private int mDisabledColor;
    private String mDownloadingContentDecrpition;
    private int mExpandOffsetX;
    private int mExpandOffsetY;
    private Paint.FontMetricsInt mFmi;
    private boolean mHasBrightness;
    private Paint mInBitmapPaint;
    private Drawable mInstallGiftBg;
    private boolean mIsChangeTextColor;
    private boolean mIsNeedVibrate;
    private int mLoadStyle;
    private Locale mLocale;
    private float mMaxBrightness;
    private float mNarrowOffsetFont;
    private Interpolator mNormalAnimationInterpolator;
    private ValueAnimator mNormalAnimator;
    private OplusPathAdapter mOplusPath;
    private Paint mOutBitmapPaint;
    private Interpolator mPressAnimationInterpolator;
    private ValueAnimator mPressedAnimator;
    private float mRadiusOffset;
    private Paint mRoundRectPaint;
    private Path mRoundRectPath;
    private int mSpace;
    private int mStyle;
    private int mSurpassProgressColor;
    private int mTextColor;
    private int mTextPadding;
    private TextPaint mTextPaint;
    private String mTextView;
    private int mThemeColor;
    private ColorStateList mThemeColorStateList;
    private int mThemeSecondaryColor;
    private ColorStateList mThemeSecondaryColorStateList;
    private int mTouchModeCircleRadius;
    private int mTouchModeHeight;
    private int mTouchModeWidth;
    private int mUserTextColor;
    private int mUserTextSize;

    public COUIInstallLoadProgress(Context context) {
        this(context, null);
    }

    private void addApostrophe() {
        String displayText = getDisplayText(this.mTextView, this.mDefaultWidth);
        if (displayText.length() <= 0 || displayText.length() >= this.mTextView.length()) {
            return;
        }
        this.mTextView = isEnglish(getDisplayText(displayText, (this.mDefaultWidth - (this.mTextPadding * 2)) - ((int) this.mTextPaint.measureText(this.mApostrophe)))) + this.mApostrophe;
    }

    private void cancelAnim(ValueAnimator valueAnimator) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        valueAnimator.cancel();
    }

    private int dip2px(Context context, float f10) {
        return (int) (((double) (f10 * context.getResources().getDisplayMetrics().density)) + POINT_FIVE);
    }

    private Bitmap getBitmapFromVectorDrawable(int i10) {
        Drawable drawable = getContext().getDrawable(i10);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private int getCurrentColor(int i10) {
        if (!isEnabled()) {
            return this.mDisabledColor;
        }
        u.d.k(i10, this.mColorHsl);
        float[] fArr = this.mColorHsl;
        fArr[2] = fArr[2] * this.mCurrentBrightness;
        int iA = u.d.a(fArr);
        int iRed = Color.red(iA);
        int iGreen = Color.green(iA);
        int iBlue = Color.blue(iA);
        int iAlpha = Color.alpha(i10);
        if (iRed > 255) {
            iRed = 255;
        }
        if (iGreen > 255) {
            iGreen = 255;
        }
        if (iBlue > 255) {
            iBlue = 255;
        }
        return Color.argb(iAlpha, iRed, iGreen, iBlue);
    }

    private int getDefaultSize(int i10, float f10, boolean z10) {
        return i10 - (z10 ? dip2px(getContext(), f10) : dip2px(getContext(), f10) * 2);
    }

    private String getDisplayText(String str, int i10) {
        int iBreakText = this.mTextPaint.breakText(str, true, i10, null);
        return (iBreakText == 0 || iBreakText == str.length()) ? str : str.substring(0, iBreakText - 1);
    }

    private void init() {
        if (this.mLoadStyle == 2) {
            return;
        }
        TextPaint textPaint = new TextPaint(1);
        this.mTextPaint = textPaint;
        textPaint.setAntiAlias(true);
        int i10 = this.mUserTextSize;
        if (i10 == 0) {
            i10 = this.mDefaultTextSize;
        }
        int i11 = this.mUserTextColor;
        this.mTextColor = i11;
        if (i11 == -1) {
            this.mTextColor = this.mDefaultTextColor.getColorForState(getDrawableState(), COUIContextUtil.getAttrColor(getContext(), R$attr.couiDefaultTextColor, 0));
        }
        this.mTextPaint.setTextSize(i10);
        COUIChangeTextUtil.adaptBoldAndMediumFont((Paint) this.mTextPaint, true);
        this.mFmi = this.mTextPaint.getFontMetricsInt();
        addApostrophe();
    }

    private static boolean isChinese(String str) {
        int i10 = 0;
        for (int i11 = 0; i11 < str.length(); i11++) {
            if (Character.toString(str.charAt(i11)).matches("^[一-龥]{1}$")) {
                i10++;
            }
        }
        return i10 > 0;
    }

    private String isEnglish(String str) {
        int iLastIndexOf;
        return (isChinese(str) || (iLastIndexOf = str.lastIndexOf(32)) <= 0) ? str : str.substring(0, iLastIndexOf);
    }

    private boolean isOs16() {
        return RoundCornerUtil.getSmoothStyleType() == 1;
    }

    private boolean isZhLanguage(Locale locale) {
        return "zh".equalsIgnoreCase(locale.getLanguage());
    }

    private void onDrawButtonDrawable(Canvas canvas, float f10, float f11, float f12, float f13) {
        Drawable drawable = this.mButtonDrawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.mButtonDrawable.getIntrinsicHeight();
            int i10 = ((int) (f12 - intrinsicWidth)) / 2;
            int i11 = ((int) (f13 - intrinsicHeight)) / 2;
            int i12 = intrinsicWidth + i10;
            int i13 = intrinsicHeight + i11;
            this.mButtonDrawable.setBounds(i10, i11, i12, i13);
            Drawable drawable2 = this.mButtonDrawable;
            int i14 = this.mTextColor;
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            drawable2.setColorFilter(i14, mode);
            this.mButtonDrawable.draw(canvas);
            if (this.mIsChangeTextColor) {
                canvas.save();
                this.mButtonDrawableReverseColor.setBounds(i10, i11, i12, i13);
                this.mButtonDrawableReverseColor.setColorFilter(this.mSurpassProgressColor, mode);
                if (o0.b(this)) {
                    canvas.clipRect(f12 - this.mSpace, f11, f12, f13);
                } else {
                    canvas.clipRect(f10, f11, this.mSpace, f13);
                }
                this.mButtonDrawableReverseColor.draw(canvas);
                canvas.restore();
                this.mIsChangeTextColor = false;
            }
        }
    }

    private void onDrawCircle(Canvas canvas, float f10, float f11, boolean z10, Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.mCirclePaint.setColor(this.mThemeColorStateList == null ? getCurrentColor(this.mColorPrimary) : this.mThemeColor);
        if (!z10) {
            this.mCirclePaint.setColor(this.mThemeSecondaryColorStateList == null ? getCurrentColor(this.mColorSecondary) : this.mThemeSecondaryColor);
        }
        int width = (this.mTouchModeWidth - bitmap.getWidth()) / 2;
        int height = (this.mTouchModeHeight - bitmap.getHeight()) / 2;
        this.mInBitmapPaint.setAlpha(this.mCurrentInBitmapAlpha);
        this.mOutBitmapPaint.setAlpha(this.mCurrentOutBitmapAlpha);
        canvas.save();
        canvas.clipPath(this.mRoundRectPath);
        canvas.drawColor(this.mCirclePaint.getColor());
        float f12 = width;
        float f13 = height;
        canvas.drawBitmap(bitmap, f12, f13, this.mInBitmapPaint);
        canvas.drawBitmap(bitmap2, f12, f13, this.mOutBitmapPaint);
        canvas.restore();
        canvas.save();
    }

    private void onDrawRoundRect(Canvas canvas, float f10, float f11, float f12, float f13, boolean z10, float f14, float f15) {
        canvas.translate(f14, f15);
        this.mRoundRectPaint.setColor(this.mThemeColorStateList == null ? getCurrentColor(this.mColorPrimary) : this.mThemeColor);
        if (!z10) {
            this.mRoundRectPaint.setColor(this.mThemeSecondaryColorStateList == null ? getCurrentColor(this.mColorSecondary) : this.mThemeSecondaryColor);
        }
        canvas.drawPath(this.mRoundRectPath, this.mRoundRectPaint);
        canvas.translate(-f14, -f15);
    }

    private void onDrawText(Canvas canvas, float f10, float f11, float f12, float f13) {
        if (this.mTextView != null) {
            this.mTextPaint.setTextSize(this.mDefaultTextSize * this.mNarrowOffsetFont);
            float fMeasureText = this.mTextPaint.measureText(this.mTextView);
            float f14 = this.mTextPadding + (((f12 - fMeasureText) - (r1 * 2)) / 2.0f);
            Paint.FontMetricsInt fontMetricsInt = this.mFmi;
            float f15 = ((f13 - fontMetricsInt.descent) - fontMetricsInt.ascent) / 2.0f;
            canvas.drawText(this.mTextView, f14, f15, this.mTextPaint);
            if (this.mIsChangeTextColor) {
                this.mTextPaint.setColor(this.mSurpassProgressColor);
                canvas.save();
                if (o0.b(this)) {
                    canvas.clipRect(f12 - this.mSpace, f11, f12, f13);
                } else {
                    canvas.clipRect(f10, f11, this.mSpace, f13);
                }
                canvas.drawText(this.mTextView, f14, f15, this.mTextPaint);
                canvas.restore();
                this.mIsChangeTextColor = false;
            }
        }
    }

    private void performHapticFeedback() {
        if (this.mIsNeedVibrate) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    private void performTouchEndAnim(final boolean z10) {
        performHapticFeedback();
        if (this.mHasBrightness) {
            cancelAnim(this.mPressedAnimator);
            int i10 = this.mLoadStyle;
            if (i10 == 0 || i10 == 1) {
                ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(HOLDER_BRIGHTNESS, this.mCurrentBrightness, 1.0f), PropertyValuesHolder.ofFloat(HOLDER_NARROW_X, this.mExpandOffsetX, 0.0f), PropertyValuesHolder.ofFloat(HOLDER_NARROW_Y, this.mExpandOffsetY, 0.0f), PropertyValuesHolder.ofFloat(HOLDER_NARROW_FONT, this.mNarrowOffsetFont, 1.0f));
                this.mNormalAnimator = valueAnimatorOfPropertyValuesHolder;
                valueAnimatorOfPropertyValuesHolder.setInterpolator(this.mNormalAnimationInterpolator);
                this.mNormalAnimator.setDuration(340L);
                this.mNormalAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        COUIInstallLoadProgress.this.mCurrentBrightness = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_BRIGHTNESS)).floatValue();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_X)).floatValue();
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_Y)).floatValue();
                        COUIInstallLoadProgress.this.mNarrowOffsetFont = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_FONT)).floatValue();
                        COUIInstallLoadProgress.this.mExpandOffsetX = (int) (((double) fFloatValue) + COUIInstallLoadProgress.POINT_FIVE);
                        COUIInstallLoadProgress.this.mExpandOffsetY = (int) (((double) fFloatValue2) + COUIInstallLoadProgress.POINT_FIVE);
                        COUIInstallLoadProgress.this.updateRoundRectPath();
                        COUIInstallLoadProgress.this.invalidate();
                    }
                });
                this.mNormalAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z10) {
                            COUIInstallLoadProgress.super.performClick();
                        }
                    }
                });
                this.mNormalAnimator.start();
            } else if (i10 == 2) {
                ValueAnimator valueAnimatorOfPropertyValuesHolder2 = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(CIRCLE_RADIUS_HOLDER, this.mCurrentCircleRadius, this.mDefaultCircleRadius), PropertyValuesHolder.ofFloat(CIRCLE_BRIGHTNESS_HOLDER, this.mCurrentBrightness, 1.0f), PropertyValuesHolder.ofInt(CIRCLE_IN_ALPHA_HOLDER, 0, 255), PropertyValuesHolder.ofInt(CIRCLE_OUT_ALPHA_HOLDER, 255, 0));
                this.mNormalAnimator = valueAnimatorOfPropertyValuesHolder2;
                valueAnimatorOfPropertyValuesHolder2.setInterpolator(this.mNormalAnimationInterpolator);
                this.mNormalAnimator.setDuration(340L);
                this.mNormalAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.6
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        COUIInstallLoadProgress.this.mCurrentCircleRadius = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_RADIUS_HOLDER)).floatValue();
                        COUIInstallLoadProgress.this.mCurrentBrightness = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_BRIGHTNESS_HOLDER)).floatValue();
                        COUIInstallLoadProgress.this.mCurrentInBitmapAlpha = ((Integer) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_IN_ALPHA_HOLDER)).intValue();
                        COUIInstallLoadProgress.this.mCurrentOutBitmapAlpha = ((Integer) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_OUT_ALPHA_HOLDER)).intValue();
                        COUIInstallLoadProgress.this.invalidate();
                    }
                });
                this.mNormalAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        COUIInstallLoadProgress.super.performClick();
                    }
                });
                this.mNormalAnimator.start();
            }
            this.mHasBrightness = false;
        }
    }

    private void performTouchStartAnim() {
        if (this.mHasBrightness) {
            return;
        }
        cancelAnim(this.mNormalAnimator);
        int i10 = this.mLoadStyle;
        if (i10 == 0 || i10 == 1) {
            ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(HOLDER_BRIGHTNESS, 1.0f, this.mMaxBrightness), PropertyValuesHolder.ofFloat(HOLDER_NARROW_X, 0.0f, getMeasuredWidth() * DEFAULT_SCALE_PARAMETER), PropertyValuesHolder.ofFloat(HOLDER_NARROW_Y, 0.0f, getMeasuredHeight() * DEFAULT_SCALE_PARAMETER), PropertyValuesHolder.ofFloat(HOLDER_NARROW_FONT, 1.0f, DEFAULT_NARROW_FINAL_VALUE));
            this.mPressedAnimator = valueAnimatorOfPropertyValuesHolder;
            valueAnimatorOfPropertyValuesHolder.setInterpolator(this.mPressAnimationInterpolator);
            this.mPressedAnimator.setDuration(200L);
            this.mPressedAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    COUIInstallLoadProgress.this.mCurrentBrightness = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_BRIGHTNESS)).floatValue();
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_X)).floatValue();
                    float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_Y)).floatValue();
                    float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.HOLDER_NARROW_FONT)).floatValue();
                    if (fFloatValue < COUIInstallLoadProgress.this.getMeasuredWidth() * COUIInstallLoadProgress.DEFAULT_MIN_PRESS_FEEDBACK && fFloatValue2 < COUIInstallLoadProgress.this.getMeasuredHeight() * COUIInstallLoadProgress.DEFAULT_MIN_PRESS_FEEDBACK) {
                        fFloatValue = COUIInstallLoadProgress.this.getMeasuredWidth() * COUIInstallLoadProgress.DEFAULT_MIN_PRESS_FEEDBACK;
                        fFloatValue2 = COUIInstallLoadProgress.this.getMeasuredHeight() * COUIInstallLoadProgress.DEFAULT_MIN_PRESS_FEEDBACK;
                    }
                    COUIInstallLoadProgress.this.mExpandOffsetX = (int) (((double) fFloatValue) + COUIInstallLoadProgress.POINT_FIVE);
                    COUIInstallLoadProgress.this.mExpandOffsetY = (int) (((double) fFloatValue2) + COUIInstallLoadProgress.POINT_FIVE);
                    COUIInstallLoadProgress.this.mNarrowOffsetFont = fFloatValue3;
                    COUIInstallLoadProgress.this.updateRoundRectPath();
                    COUIInstallLoadProgress.this.invalidate();
                }
            });
            this.mPressedAnimator.start();
        } else if (i10 == 2) {
            ValueAnimator valueAnimatorOfPropertyValuesHolder2 = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(CIRCLE_RADIUS_HOLDER, this.mCurrentCircleRadius, this.mDefaultCircleRadius * 0.9f), PropertyValuesHolder.ofFloat(CIRCLE_BRIGHTNESS_HOLDER, this.mCurrentBrightness, this.mMaxBrightness));
            this.mPressedAnimator = valueAnimatorOfPropertyValuesHolder2;
            valueAnimatorOfPropertyValuesHolder2.setInterpolator(this.mPressAnimationInterpolator);
            this.mPressedAnimator.setDuration(200L);
            this.mPressedAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    COUIInstallLoadProgress.this.mCurrentCircleRadius = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_RADIUS_HOLDER)).floatValue();
                    COUIInstallLoadProgress.this.mCurrentBrightness = ((Float) valueAnimator.getAnimatedValue(COUIInstallLoadProgress.CIRCLE_BRIGHTNESS_HOLDER)).floatValue();
                    COUIInstallLoadProgress.this.invalidate();
                }
            });
            this.mPressedAnimator.start();
        }
        this.mHasBrightness = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRoundRectPath() {
        if (this.mLoadStyle == 2) {
            float f10 = (float) ((((double) this.mTouchModeWidth) * 1.0d) / 2.0d);
            float f11 = (float) ((((double) this.mTouchModeHeight) * 1.0d) / 2.0d);
            float f12 = this.mCurrentCircleRadius;
            COUIShapePath.getRoundRectPath(this.mRoundRectPath, new RectF(f10 - f12, f11 - f12, f10 + f12, f11 + f12), this.mCurrentRoundBorderRadius);
            return;
        }
        float f13 = this.mExpandOffsetX;
        float f14 = this.mExpandOffsetY;
        float width = getWidth() - this.mExpandOffsetX;
        float height = getHeight() - this.mExpandOffsetY;
        RectF rectF = new RectF(f13, f14, width, height);
        if (!isOs16()) {
            COUIShapePath.getRoundRectPath(this.mRoundRectPath, rectF, ((height - f14) / 2.0f) - this.mRadiusOffset);
        } else {
            this.mRoundRectPath.reset();
            this.mOplusPath.addSmoothRoundRect(rectF, (rectF.height() * getScaleY()) / 2.0f, (rectF.height() * getScaleY()) / 2.0f, Path.Direction.CCW);
            invalidateOutline();
        }
    }

    @Override // com.coui.appcompat.progressbar.COUILoadProgress, androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ProgressBar.class.getName();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mLoadStyle == 2) {
            Bitmap bitmap = this.mCircleLoadBitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                Bitmap bitmapFromVectorDrawable = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_load);
                this.mCircleLoadBitmap = bitmapFromVectorDrawable;
                this.mCircleLoadBitmap = COUITintUtil.tintBitmap(bitmapFromVectorDrawable, this.mThemeColorStateList == null ? this.mColorPrimary : this.mThemeColor);
            }
            Bitmap bitmap2 = this.mCircleReloadBitmap;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                this.mCircleReloadBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_reload);
            }
            Bitmap bitmap3 = this.mCirclePauseBitmap;
            if (bitmap3 == null || bitmap3.isRecycled()) {
                this.mCirclePauseBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_pause);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Locale locale = Locale.getDefault();
        if (this.mLoadStyle != 0 || this.mLocale.getLanguage().equalsIgnoreCase(locale.getLanguage())) {
            return;
        }
        this.mLocale = locale;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_width_in_foreign_language);
        if (isZhLanguage(this.mLocale)) {
            this.mTouchModeWidth -= dimensionPixelSize;
            this.mDefaultWidth -= dimensionPixelSize;
        } else {
            this.mTouchModeWidth += dimensionPixelSize;
            this.mDefaultWidth += dimensionPixelSize;
        }
        invalidate();
    }

    @Override // com.coui.appcompat.progressbar.COUILoadProgress, android.view.View
    protected void onDetachedFromWindow() {
        if (this.mLoadStyle == 2) {
            Bitmap bitmap = this.mCircleLoadBitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.mCircleLoadBitmap.recycle();
            }
            Bitmap bitmap2 = this.mCirclePauseBitmap;
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                this.mCirclePauseBitmap.recycle();
            }
            Bitmap bitmap3 = this.mCircleReloadBitmap;
            if (bitmap3 != null && !bitmap3.isRecycled()) {
                this.mCircleReloadBitmap.recycle();
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // com.coui.appcompat.progressbar.COUILoadProgress, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        float f10;
        float f11;
        int i11;
        int i12;
        float f12;
        super.onDraw(canvas);
        float f13 = this.mExpandOffsetX;
        float f14 = this.mExpandOffsetY;
        float width = getWidth() - this.mExpandOffsetX;
        float height = getHeight() - this.mExpandOffsetY;
        int i13 = this.mState;
        if (i13 == 3) {
            if (this.mLoadStyle == 2) {
                onDrawCircle(canvas, (float) ((((double) this.mTouchModeWidth) * 1.0d) / 2.0d), (float) ((((double) this.mTouchModeHeight) * 1.0d) / 2.0d), true, this.mCircleReloadBitmap, this.mCirclePauseBitmap);
                return;
            }
            onDrawRoundRect(canvas, f13, f14, width, height, true, 0.0f, 0.0f);
            this.mTextPaint.setColor(this.mBtnTextColorChanged ? this.mBtnTextColor : this.mColorWhite);
            this.mIsChangeTextColor = false;
            if (this.mButtonDrawable == null) {
                onDrawText(canvas, f13, f14, this.mTouchModeWidth, this.mTouchModeHeight);
                return;
            } else {
                onDrawButtonDrawable(canvas, f13, f14, this.mTouchModeWidth, this.mTouchModeHeight);
                return;
            }
        }
        if (i13 == 0) {
            int i14 = this.mLoadStyle;
            if (i14 == 2) {
                i10 = 1;
                onDrawCircle(canvas, (float) ((((double) this.mTouchModeWidth) * 1.0d) / 2.0d), (float) ((((double) this.mTouchModeHeight) * 1.0d) / 2.0d), false, this.mCircleLoadBitmap, this.mCirclePauseBitmap);
                f10 = 0.0f;
            } else {
                i10 = 1;
                if (i14 == 1) {
                    f10 = 0.0f;
                    onDrawRoundRect(canvas, f13, f14, width, height, true, 0.0f, 0.0f);
                } else {
                    f10 = 0.0f;
                    onDrawRoundRect(canvas, f13, f14, width, height, false, 0.0f, 0.0f);
                }
            }
            int i15 = this.mLoadStyle;
            if (i15 == i10) {
                this.mTextPaint.setColor(this.mBtnTextColorChanged ? this.mBtnTextColor : this.mColorWhite);
            } else if (i15 == 0) {
                this.mTextPaint.setColor(this.mBtnTextColorStateList == null ? this.mColorPrimary : this.mBtnTextColor);
            }
        } else {
            i10 = 1;
            f10 = 0.0f;
        }
        int i16 = this.mState;
        if (i16 != i10 && i16 != 2) {
            i12 = 2;
        } else if (this.mLoadStyle == 2) {
            if (i16 == i10) {
                onDrawCircle(canvas, (float) ((((double) this.mTouchModeWidth) * 1.0d) / 2.0d), (float) ((((double) this.mTouchModeHeight) * 1.0d) / 2.0d), true, this.mCirclePauseBitmap, this.mCircleReloadBitmap);
            } else if (i16 == 2) {
                onDrawCircle(canvas, (float) ((((double) this.mTouchModeWidth) * 1.0d) / 2.0d), (float) ((((double) this.mTouchModeHeight) * 1.0d) / 2.0d), true, this.mCircleReloadBitmap, this.mCirclePauseBitmap);
            }
            i12 = 2;
        } else {
            if (this.mIsUpdateWithAnimation) {
                f11 = this.mVisualProgress;
                i11 = this.mMax;
            } else {
                f11 = this.mProgress;
                i11 = this.mMax;
            }
            float f15 = f11 / i11;
            int i17 = this.mTouchModeWidth;
            this.mSpace = ((int) (f15 * (i17 - (r2 * 2)))) + this.mExpandOffsetX;
            i12 = 2;
            onDrawRoundRect(canvas, f13, f14, width, height, false, f10, 0.0f);
            canvas.save();
            if (o0.b(this)) {
                f12 = f10;
                canvas.translate(f12, 0.0f);
                canvas.clipRect((width - this.mSpace) + f12, f14, width, this.mTouchModeHeight);
                canvas.translate(-0.0f, 0.0f);
            } else {
                canvas.clipRect(f13, f14, this.mSpace, this.mTouchModeHeight);
                f12 = f10;
            }
            if (this.mLoadStyle != 2) {
                onDrawRoundRect(canvas, f13, f14, width, height, true, f12, 0.0f);
                canvas.restore();
            }
            this.mIsChangeTextColor = true;
            this.mTextPaint.setColor(this.mBtnTextColorStateList == null ? this.mColorPrimary : this.mBtnTextColor);
        }
        if (this.mLoadStyle != i12) {
            if (this.mButtonDrawable == null) {
                onDrawText(canvas, f13, f14, this.mTouchModeWidth, this.mTouchModeHeight);
            } else {
                onDrawButtonDrawable(canvas, f13, f14, this.mTouchModeWidth, this.mTouchModeHeight);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setItemCount(this.mMax);
        accessibilityEvent.setCurrentItemIndex(this.mProgress);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        String str;
        String str2;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        int i10 = this.mState;
        if ((i10 == 0 || i10 == 3 || i10 == 2) && (str = this.mTextView) != null) {
            accessibilityNodeInfo.setContentDescription(str);
        } else {
            if (i10 != 1 || (str2 = this.mDownloadingContentDecrpition) == null) {
                return;
            }
            accessibilityNodeInfo.setContentDescription(str2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(this.mTouchModeWidth, this.mTouchModeHeight);
        init();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        updateRoundRectPath();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            boolean z10 = false;
            if (action == 1) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (x10 >= 0.0f && x10 <= this.mTouchModeWidth && y10 >= 0.0f && y10 <= this.mTouchModeHeight) {
                    z10 = true;
                }
                performTouchEndAnim(z10);
            } else if (action == 3) {
                performTouchEndAnim(false);
            }
        } else {
            performHapticFeedback();
            performTouchStartAnim();
        }
        return true;
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(mAttrArray);
        this.mColorPrimary = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.mColorSecondary = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes2 = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, R$styleable.COUIInstallLoadProgress, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, R$styleable.COUIInstallLoadProgress, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes2 != null) {
            this.mDisabledColor = typedArrayObtainStyledAttributes2.getColor(R$styleable.COUIInstallLoadProgress_disabledColor, 0);
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    @Deprecated
    public void setBtnTextColor(int i10) {
        this.mBtnTextColor = i10;
        this.mBtnTextColorChanged = true;
        invalidate();
    }

    public void setBtnTextColorBySurpassProgress(int i10) {
        this.mSurpassProgressColor = i10;
        invalidate();
    }

    public void setBtnTextColorStateList(ColorStateList colorStateList) {
        this.mBtnTextColorStateList = colorStateList;
        if (colorStateList == null) {
            setBtnTextColor(-1);
        } else {
            setBtnTextColor(colorStateList.getDefaultColor());
        }
    }

    public void setDefaultTextSize(int i10) {
        this.mDefaultTextSize = i10;
    }

    public void setDisabledColor(int i10) {
        this.mDisabledColor = i10;
    }

    public void setDownloadingContentDecrpition(String str) {
        this.mDownloadingContentDecrpition = str;
    }

    public void setIsNeedVibrate(boolean z10) {
        this.mIsNeedVibrate = z10;
    }

    public void setLoadStyle(int i10) {
        if (i10 != 2) {
            this.mLoadStyle = i10;
            this.mRoundRectPaint = new Paint(1);
            return;
        }
        this.mLoadStyle = 2;
        Paint paint = new Paint(1);
        this.mCirclePaint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint(1);
        this.mInBitmapPaint = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint(1);
        this.mOutBitmapPaint = paint3;
        paint3.setAntiAlias(true);
        this.mCircleLoadBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_load);
        this.mCircleReloadBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_reload);
        this.mCirclePauseBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_pause);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_default_circle_radius);
        this.mTouchModeCircleRadius = dimensionPixelSize;
        int defaultSize = getDefaultSize(dimensionPixelSize, ONE_POINT_FIVE, true);
        this.mDefaultCircleRadius = defaultSize;
        this.mCurrentCircleRadius = defaultSize;
    }

    public void setMaxBrightness(int i10) {
        this.mMaxBrightness = i10;
    }

    public void setText(String str) {
        if (str.equals(this.mTextView)) {
            return;
        }
        this.mTextView = str;
        if (this.mTextPaint != null) {
            addApostrophe();
        }
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        if (i10 != 0) {
            this.mUserTextColor = i10;
        }
    }

    public void setTextId(int i10) {
        setText(getResources().getString(i10));
    }

    public void setTextPadding(int i10) {
        this.mTextPadding = i10;
    }

    public void setTextSize(int i10) {
        if (i10 != 0) {
            this.mUserTextSize = i10;
        }
    }

    @Deprecated
    public void setThemeColor(int i10) {
        this.mThemeColor = i10;
        Bitmap bitmap = this.mCircleLoadBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            this.mCircleLoadBitmap = getBitmapFromVectorDrawable(R$drawable.coui_install_load_progress_circle_load);
        }
        this.mCircleLoadBitmap = COUITintUtil.tintBitmap(this.mCircleLoadBitmap, this.mThemeColor);
        invalidate();
    }

    public void setThemeColorStateList(ColorStateList colorStateList) {
        this.mThemeColorStateList = colorStateList;
        if (colorStateList == null) {
            setThemeColor(-1);
        } else {
            setThemeColor(colorStateList.getDefaultColor());
        }
    }

    @Deprecated
    public void setThemeSecondaryColor(int i10) {
        this.mThemeSecondaryColor = i10;
        invalidate();
    }

    public void setThemeSecondaryColorStateList(ColorStateList colorStateList) {
        this.mThemeSecondaryColorStateList = colorStateList;
        if (colorStateList == null) {
            setThemeSecondaryColor(-1);
        } else {
            setThemeSecondaryColor(colorStateList.getDefaultColor());
        }
    }

    public void setTouchModeHeight(int i10) {
        this.mTouchModeHeight = i10;
    }

    public void setTouchModeWidth(int i10) {
        this.mTouchModeWidth = i10;
    }

    public COUIInstallLoadProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.support.progressbar.R$attr.couiInstallLoadProgressStyle);
    }

    public COUIInstallLoadProgress(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_COUILoadProgress_InstallDownload);
    }

    public COUIInstallLoadProgress(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.TAG = "COUIInstallLoadProgress";
        this.DEBUG = true;
        this.mTextPaint = null;
        this.mUserTextSize = 0;
        this.mTextPadding = 0;
        this.mApostrophe = null;
        this.mFmi = null;
        this.mCurrentRoundBorderRadius = 0;
        this.mRoundRectPaint = null;
        this.mSpace = 0;
        this.mIsChangeTextColor = false;
        this.mRoundRectPath = new Path();
        this.mTouchModeCircleRadius = 0;
        this.mDefaultCircleRadius = 0;
        this.mCurrentCircleRadius = 0.0f;
        this.mCurrentInBitmapAlpha = 255;
        this.mCurrentOutBitmapAlpha = 0;
        this.mCirclePaint = null;
        this.mInBitmapPaint = null;
        this.mOutBitmapPaint = null;
        this.mInstallGiftBg = null;
        this.mLoadStyle = 0;
        this.mBtnTextColorChanged = false;
        this.mCurrentBrightness = 1.0f;
        this.mUserTextColor = -1;
        this.mExpandOffsetY = 0;
        this.mExpandOffsetX = 0;
        this.mNarrowOffsetFont = 1.0f;
        this.mColorHsl = new float[3];
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        if (attributeSet != null && attributeSet.getStyleAttribute() != 0) {
            this.mStyle = attributeSet.getStyleAttribute();
        } else {
            this.mStyle = i10;
        }
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(mAttrArray);
        this.mColorPrimary = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.mColorSecondary = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mLocale = Locale.getDefault();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUILoadProgress, i10, i11);
        this.mColorWhite = getResources().getColor(R$color.coui_install_load_progress_text_color_in_progress);
        this.mSurpassProgressColor = getResources().getColor(R$color.coui_install_load_progress_text_color_in_progress);
        this.mIsNeedVibrate = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUILoadProgress_loadingButtonNeedVibrate, false);
        Drawable drawable = typedArrayObtainStyledAttributes2.getDrawable(R$styleable.COUILoadProgress_couiDefaultDrawable);
        if (drawable != null) {
            setButtonDrawable(drawable);
        }
        setState(typedArrayObtainStyledAttributes2.getInteger(R$styleable.COUILoadProgress_couiState, 0));
        typedArrayObtainStyledAttributes2.recycle();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_textsize);
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, R$styleable.COUIInstallLoadProgress, i10, i11);
        setLoadStyle(typedArrayObtainStyledAttributes3.getInteger(R$styleable.COUIInstallLoadProgress_couiStyle, 0));
        this.mInstallGiftBg = typedArrayObtainStyledAttributes3.getDrawable(R$styleable.COUIInstallLoadProgress_couiInstallGiftBg);
        this.mTouchModeHeight = typedArrayObtainStyledAttributes3.getDimensionPixelSize(R$styleable.COUIInstallLoadProgress_couiInstallViewHeight, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes3.getDimensionPixelOffset(R$styleable.COUIInstallLoadProgress_couiInstallViewWidth, 0);
        this.mTouchModeWidth = dimensionPixelOffset;
        this.mDefaultWidth = getDefaultSize(dimensionPixelOffset, ONE_POINT_FIVE, false);
        this.mMaxBrightness = typedArrayObtainStyledAttributes3.getFloat(R$styleable.COUIInstallLoadProgress_brightness, DEFAULT_BRIGHTNESS_MAX_VALUE);
        this.mDisabledColor = typedArrayObtainStyledAttributes3.getColor(R$styleable.COUIInstallLoadProgress_disabledColor, 0);
        this.mPressAnimationInterpolator = new COUIMoveEaseInterpolator();
        this.mNormalAnimationInterpolator = new COUIMoveEaseInterpolator();
        int i12 = this.mLoadStyle;
        if (i12 != 2) {
            if (i12 == 1) {
                this.mCurrentRoundBorderRadius = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_round_border_radius);
            } else {
                this.mCurrentRoundBorderRadius = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_round_border_radius_small);
                if (!isZhLanguage(this.mLocale)) {
                    int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_width_in_foreign_language);
                    this.mTouchModeWidth += dimensionPixelSize2;
                    this.mDefaultWidth += dimensionPixelSize2;
                }
            }
            this.mDefaultTextColor = typedArrayObtainStyledAttributes3.getColorStateList(R$styleable.COUIInstallLoadProgress_couiInstallDefaultColor);
            this.mTextPadding = typedArrayObtainStyledAttributes3.getDimensionPixelOffset(R$styleable.COUIInstallLoadProgress_couiInstallPadding, 0);
            this.mTextView = typedArrayObtainStyledAttributes3.getString(R$styleable.COUIInstallLoadProgress_couiInstallTextview);
            this.mDefaultTextSize = typedArrayObtainStyledAttributes3.getDimensionPixelSize(R$styleable.COUIInstallLoadProgress_couiInstallTextsize, dimensionPixelSize);
            this.mDefaultTextSize = (int) COUIChangeTextUtil.getSuitableFontSize(this.mDefaultTextSize, getResources().getConfiguration().fontScale, 2);
            if (this.mApostrophe == null) {
                this.mApostrophe = getResources().getString(R$string.coui_install_load_progress_apostrophe);
            }
        } else {
            this.mCurrentRoundBorderRadius = getResources().getDimensionPixelSize(R$dimen.coui_install_download_progress_circle_round_border_radius);
        }
        setThemeColorStateList(typedArrayObtainStyledAttributes3.getColorStateList(R$styleable.COUIInstallLoadProgress_couiThemeColor));
        setThemeSecondaryColorStateList(typedArrayObtainStyledAttributes3.getColorStateList(R$styleable.COUIInstallLoadProgress_couiThemeColorSecondary));
        setBtnTextColorStateList(typedArrayObtainStyledAttributes3.getColorStateList(R$styleable.COUIInstallLoadProgress_couiThemeTextColor));
        typedArrayObtainStyledAttributes3.recycle();
        this.mRadiusOffset = getResources().getDimension(R$dimen.coui_install_download_progress_round_border_radius_offset);
        if (isOs16()) {
            this.mOplusPath = new OplusPathAdapter(this.mRoundRectPath, 1);
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.progressbar.COUIInstallLoadProgress.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setPath(COUIInstallLoadProgress.this.mRoundRectPath);
                }
            });
            setClipToOutline(true);
        }
    }
}
