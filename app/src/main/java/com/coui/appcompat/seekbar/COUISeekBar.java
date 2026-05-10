package com.coui.appcompat.seekbar;

import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.AbsSeekBar;
import androidx.core.view.m0;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.coui.appcompat.view.DescendantOffsetUtil;
import com.coui.appcompat.view.ViewUtil;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.graphics.OplusCanvas;
import com.oplus.graphics.OplusPathAdapter;
import com.oplus.os.LinearmotorVibrator;
import com.support.seekbar.R$attr;
import com.support.seekbar.R$color;
import com.support.seekbar.R$dimen;
import com.support.seekbar.R$string;
import com.support.seekbar.R$style;
import com.support.seekbar.R$styleable;
import d0.h;
import d7.i;
import d7.k;
import d7.l;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import u2.h;
import u2.j;

/* JADX INFO: loaded from: classes.dex */
public class COUISeekBar extends AbsSeekBar implements d7.a, d7.b {
    private static final float BACKGROUND_RADIUS_SCALE = 1.4f;
    private static final float CLICK_SPRING_RESPONSE = 0.3f;
    private static final int DAMPING_DISTANCE = 20;
    private static final int DEFORMATION_SCALE_FACTOR = 100000;
    private static final float DEFORMATION_SPRING_RESPONSE = 0.1f;
    protected static final int DIRECTION_180 = 180;
    protected static final int DIRECTION_90 = 90;
    private static final int DURATION_150 = 150;
    private static final int DURATION_483 = 483;
    private static final int FAST_MOVE_VELOCITY = 95;
    private static final int FLEXIBLE_FOLLOW_HAND_SCALE_FACTOR = 1000;
    private static final float FLEXIBLE_FOLLOW_HAND_SPRING_RESPONSE = 0.1f;
    private static final float GLITTER_EFFECT_SPRING_RESPONSE = 0.6f;
    private static final float MAX_FAST_MOVE_PERCENT = 0.95f;
    private static final float MAX_MOVE_DAMPING = 1.0f;
    private static final int MAX_VELOCITY = 8000;
    private static final float MIN_FAST_MOVE_PERCENT = 0.05f;
    public static final int MOVE_BY_DEFAULT = 0;
    public static final int MOVE_BY_DISTANCE = 2;
    public static final int MOVE_BY_FINGER = 1;
    private static final int ONE_SECOND_UNITS = 1000;
    private static final int PHYSICAL_VELOCITY_LIMIT = 100;
    protected static final int RELEASE_ANIM_DURATION = 183;
    private static final float SCALE_DEFORMATION_MAX = 2.0f;
    private static final float SCALE_DEFORMATION_MIN = -1.0f;
    private static final int SCALE_DEFORMATION_TIMES = 5;
    protected static final float SCALE_MAX = 1.0f;
    protected static final float SCALE_MIN = 0.0f;
    protected static final float SPRING_BOUNCE = 0.0f;
    private static final String TAG = "COUISeekBar";
    private static final float THUMB_SCALE_SPRING_RESPONSE = 0.2f;
    private static final int TOUCH_ANIMATION_ENLARGE_DURATION = 183;
    private static final int VELOCITY_COMPUTE_TIME = 100;
    protected int mBackgroundColor;
    ColorStateList mBackgroundColorStateList;
    protected float mBackgroundEnlargeScale;
    protected float mBackgroundHeight;
    private Path mBackgroundPath;
    protected float mBackgroundRadius;
    protected RectF mBackgroundRect;
    protected float mBackgroundRoundCornerWeight;
    protected SmoothRoundCornerHelper mBackgroundSmoothRoundCornerHelper;
    private Locale mCachedLocale;
    protected COUISpringAnimation mClickAnim;
    protected ValueAnimator mClickAnimator;
    protected AnimatorSet mClickAnimatorSet;
    protected Path mClipProgressPath;
    protected RectF mClipProgressRect;
    protected float mCurBackgroundHeight;
    protected float mCurBackgroundRadius;
    protected float mCurBottomDeformationValue;
    private int mCurGlitterEffectAlpha;
    private float mCurGlitterEffectValue;
    protected float mCurPaddingHorizontal;
    protected float mCurProgressHeight;
    protected float mCurProgressRadius;
    protected float mCurThumbRadius;
    protected float mCurTopDeformationValue;
    private float mDamping;
    private COUISpringAnimation mDeformationAnim;
    protected float mDrawProgressScale;
    protected boolean mEnableAdaptiveVibrator;
    protected boolean mEnableVibrator;
    private float mFastMoveScaleOffsetX;
    private u2.e mFastMoveSpring;
    private u2.f mFastMoveSpringConfig;
    private COUISpringAnimation mFlexibleFollowHandAnim;
    private i mFlingBehavior;
    private float mFlingDampingRatio;
    private float mFlingFrequency;
    private float mFlingLinearDamping;
    private k mFlingValueHolder;
    private float mFlingVelocity;
    private COUISpringAnimation mGlitterEffectAnim;
    private int mGlitterEffectMaxColor;
    private int mGlitterEffectMinColor;
    private Paint mGlitterEffectPaint;
    private androidx.dynamicanimation.animation.d mGlitterEffectTransition;
    protected boolean mHasMotorVibrator;
    protected float mHeightBottomDeformedDownValue;
    protected float mHeightBottomDeformedUpValue;
    protected float mHeightTopDeformedDownValue;
    protected float mHeightTopDeformedUpValue;
    protected float mHorizontalPaddingScale;
    private int mIncrement;
    protected boolean mIsBumpingEdges;
    protected boolean mIsDragging;
    private boolean mIsPhysicsEnable;
    private boolean mIsStartFromMiddle;
    private boolean mIsSupportDeformation;
    protected float mLabelX;
    protected COUIDynamicAnimation.OnAnimationEndListener mLastEndClickListener;
    protected float mLastX;
    protected Object mLinearMotorVibrator;
    protected int mMax;
    private float mMaxBackgroundHeight;
    private float mMaxHeightDeformedValue;
    private int mMaxMovingDistance;
    private LinearGradient mMaxToMinLinearGradient;
    private int mMaxWidth;
    private float mMaxWidthDeformedValue;
    protected int mMin;
    private LinearGradient mMinToMaxLinearGradient;
    private int mMoveType;
    protected int mOldProgress;
    private OnDeformedListener mOnDeformedListener;
    private OnSeekBarChangeListener mOnSeekBarChangeListener;
    protected float mPaddingHorizontal;
    protected Paint mPaint;
    private NumberFormat mPercentFormat;
    private l mPhysicalAnimator;
    private float mPixPerProgress;
    protected int mProgress;
    protected int mProgressColor;
    ColorStateList mProgressColorStateList;
    protected float mProgressEnlargeScale;
    protected float mProgressHeight;
    protected Path mProgressPath;
    protected float mProgressRadius;
    protected RectF mProgressRect;
    protected float mProgressRoundCornerWeight;
    protected Interpolator mProgressScaleInterpolator;
    protected float mProgressScaleRadius;
    protected SmoothRoundCornerHelper mProgressSmoothRoundCornerHelper;
    private int mRealProgress;
    private int mRefreshStyle;
    protected float mScale;
    private final String mSeekBarRoleDescription;
    private int mSeekbarMinHeight;
    protected int mShadowColor;
    private boolean mShowGlitterEffect;
    protected boolean mShowProgress;
    protected boolean mShowThumb;
    private boolean mStartDragging;
    protected RectF mTempRect;
    private TextDrawable mTextDrawable;
    protected Interpolator mThumbAnimateInterpolator;
    protected int mThumbColor;
    ColorStateList mThumbColorStateList;
    protected float mThumbMaxRadius;
    protected float mThumbOutHeight;
    protected float mThumbOutRadius;
    protected float mThumbOutRoundCornerWeight;
    protected float mThumbPosition;
    protected float mThumbRadius;
    private COUISpringAnimation mThumbScaleAnim;
    private androidx.dynamicanimation.animation.d mThumbScaleTransition;
    protected int mThumbShadowColor;
    protected float mThumbShadowOffsetY;
    protected int mThumbShadowRadiusSize;
    protected AnimatorSet mTouchAnimator;
    protected float mTouchDownX;
    protected ValueAnimator mTouchEnlargeAnimator;
    protected ValueAnimator mTouchReleaseAnimator;
    protected int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private ExecutorService mVibratorExecutor;
    protected float mWidthDeformedValue;
    protected static final Interpolator THUMB_ANIMATE_INTERPOLATOR = new COUIMoveEaseInterpolator();
    protected static final Interpolator PROGRESS_SCALE_INTERPOLATOR = new COUIEaseInterpolator();

    public interface OnDeformedListener {
        default void onHeightDeformedChanged(float f10, float f11) {
        }

        default void onScaleChanged(DeformedValueBean deformedValueBean) {
        }
    }

    public interface OnSeekBarChangeListener {
        void onProgressChanged(COUISeekBar cOUISeekBar, int i10, boolean z10);

        void onStartTrackingTouch(COUISeekBar cOUISeekBar);

        void onStopTrackingTouch(COUISeekBar cOUISeekBar);
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.seekbar.COUISeekBar.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int mSaveProgress;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mSaveProgress);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mSaveProgress = parcel.readInt();
        }
    }

    protected final class SmoothRoundCornerHelper {
        private OplusPathAdapter mPathAdapter;
        private final int mSmoothStyleType;

        SmoothRoundCornerHelper(Path path) {
            this.mPathAdapter = null;
            int smoothStyleType = RoundCornerUtil.getSmoothStyleType();
            this.mSmoothStyleType = smoothStyleType;
            if (smoothStyleType == 1) {
                this.mPathAdapter = new OplusPathAdapter(path, smoothStyleType);
            }
        }

        OplusPathAdapter getPathAdapter() {
            return this.mPathAdapter;
        }

        int getSmoothStyleType() {
            return this.mSmoothStyleType;
        }
    }

    public COUISeekBar(Context context) {
        this(context, null);
    }

    private void attemptClaimDrag() {
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).requestDisallowInterceptTouchEvent(true);
        }
    }

    private boolean bottomDeformedChange() {
        if (!this.mIsSupportDeformation) {
            return false;
        }
        float heightBottomDeformedValue = getHeightBottomDeformedValue();
        if (this.mCurBottomDeformationValue == heightBottomDeformedValue) {
            return false;
        }
        this.mCurBottomDeformationValue = heightBottomDeformedValue;
        return true;
    }

    private float calculateDamping() {
        float f10 = this.mDamping;
        if (f10 != 0.0f) {
            return f10;
        }
        return 1.0f;
    }

    private void calculateFlingDeformationValue(float f10) {
        if (f10 > 1.0f) {
            this.mDeformationAnim.animateToFinalPosition((f10 - 1.0f) * 100000.0f);
        } else if (f10 >= 0.0f) {
            resetDeformationValue();
        } else {
            this.mDeformationAnim.animateToFinalPosition(Math.abs(f10) * 100000.0f);
        }
    }

    private void clearDeformationValue() {
        float f10 = this.mScale;
        if (f10 <= 0.0f || f10 >= 1.0f) {
            return;
        }
        resetDeformationValue();
    }

    private int computeGlitterEffectAlpha(float f10) {
        return (int) Math.round((1.0d - Math.exp((-(Math.log(85.0d) / 360.0d)) * ((double) f10))) * 255.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float computeValue(double d10, float f10) {
        return (float) (((double) f10) * (1.0d - Math.exp(d10 * (-11.5d))));
    }

    private void drawProgress(Canvas canvas) {
        if (this.mShowProgress) {
            int smoothStyleType = this.mProgressSmoothRoundCornerHelper.getSmoothStyleType();
            if (smoothStyleType == 0) {
                this.mPaint.setColor(this.mProgressColor);
                if (this.mProgressRoundCornerWeight == 0.0f) {
                    RectF rectF = this.mProgressRect;
                    float f10 = this.mProgressHeight;
                    canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.mPaint);
                    return;
                } else {
                    OplusCanvas oplusCanvas = new OplusCanvas(canvas);
                    RectF rectF2 = this.mProgressRect;
                    float f11 = this.mProgressHeight;
                    oplusCanvas.drawSmoothRoundRect(rectF2, f11 / 2.0f, f11 / 2.0f, this.mPaint, this.mProgressRoundCornerWeight);
                    return;
                }
            }
            if (smoothStyleType != 1) {
                this.mPaint.setColor(this.mProgressColor);
                RectF rectF3 = this.mProgressRect;
                float f12 = this.mProgressHeight;
                canvas.drawRoundRect(rectF3, f12 / 2.0f, f12 / 2.0f, this.mPaint);
                return;
            }
            this.mProgressPath.reset();
            canvas.save();
            OplusPathAdapter pathAdapter = this.mProgressSmoothRoundCornerHelper.getPathAdapter();
            RectF rectF4 = this.mProgressRect;
            float f13 = this.mProgressHeight;
            pathAdapter.addSmoothRoundRect(rectF4, f13 / 2.0f, f13 / 2.0f, Path.Direction.CCW);
            canvas.clipPath(this.mProgressPath);
            canvas.drawColor(this.mProgressColor);
            canvas.restore();
        }
    }

    private void drawThumb(Canvas canvas) {
        if (this.mShowThumb) {
            int seekBarCenterY = getSeekBarCenterY();
            float f10 = this.mThumbPosition;
            float f11 = this.mCurThumbRadius;
            float f12 = f10 - f11;
            float f13 = f10 + f11;
            if (this.mThumbShadowRadiusSize > 0 && isEnabled()) {
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setShadowLayer(this.mThumbShadowRadiusSize, 0.0f, this.mThumbShadowOffsetY, this.mThumbShadowColor);
            }
            this.mPaint.setColor(this.mThumbColor);
            float f14 = seekBarCenterY;
            float f15 = this.mCurThumbRadius;
            canvas.drawRoundRect(f12, f14 - f15, f13, f14 + f15, f15, f15, this.mPaint);
            if (this.mThumbShadowRadiusSize <= 0 || !isEnabled()) {
                return;
            }
            this.mPaint.clearShadowLayer();
        }
    }

    private void ensureSize() {
        this.mCurBackgroundHeight = this.mBackgroundHeight;
        this.mCurThumbRadius = this.mThumbRadius;
        float f10 = this.mProgressHeight;
        this.mCurProgressRadius = f10 / 2.0f;
        this.mThumbOutRadius = f10 / 2.0f;
        this.mCurPaddingHorizontal = this.mPaddingHorizontal;
        COUILog.i(TAG, "COUISeekBar ensureSize : mPaddingHorizontal:" + this.mPaddingHorizontal + ",mBackgroundHeight:" + this.mBackgroundHeight + ",mBackgroundEnlargeScale" + this.mBackgroundEnlargeScale + ",mProgressHeight:" + this.mProgressHeight + ",mThumbRadius" + this.mThumbRadius);
        updateBehavior();
    }

    private void executeFlingGlitterEffectAnim(d7.d dVar, float f10) {
        float fMin = Math.min(a7.a.c(dVar.p().f109a), 8000.0f);
        if (!this.mIsStartFromMiddle) {
            if (this.mScale < 1.0f || this.mIsBumpingEdges || f10 >= 1.0f) {
                return;
            }
            startGlitterEffectAnim(fMin);
            return;
        }
        float f11 = this.mScale;
        if (f11 >= 1.0f && !this.mIsBumpingEdges && f10 < 1.0f) {
            startGlitterEffectAnim(fMin);
        } else {
            if (f11 > 0.0f || this.mIsBumpingEdges || f10 <= 0.0f) {
                return;
            }
            startGlitterEffectAnim(fMin);
        }
    }

    private void flingBehaviorAfterDeformationDrag() {
        if (this.mFlingValueHolder == null || this.mFlingBehavior == null || !this.mIsSupportDeformation) {
            return;
        }
        float f10 = this.mScale;
        if (f10 > 1.0f || f10 < 0.0f) {
            int seekBarWidth = getSeekBarWidth();
            int i10 = this.mMax - this.mMin;
            float f11 = i10 > 0 ? seekBarWidth / i10 : 0.0f;
            if (isLayoutRtl()) {
                this.mFlingValueHolder.c((this.mMax - (getDeformationFlingScale() * i10)) * f11);
            } else {
                this.mFlingValueHolder.c(getDeformationFlingScale() * i10 * f11);
            }
            this.mFlingBehavior.n0();
        }
    }

    private void flingBehaviorAfterEndDrag(float f10) {
        if (this.mFlingValueHolder == null || this.mFlingBehavior == null) {
            return;
        }
        int seekBarWidth = getSeekBarWidth();
        int i10 = this.mMax - this.mMin;
        float f11 = i10 > 0 ? seekBarWidth / i10 : 0.0f;
        if (isLayoutRtl()) {
            if (this.mIsSupportDeformation) {
                this.mFlingValueHolder.c((this.mMax - (getDeformationFlingScale() * i10)) * f11);
            } else {
                this.mFlingValueHolder.c(((this.mMax - this.mProgress) + this.mMin) * f11);
            }
        } else if (this.mIsSupportDeformation) {
            this.mFlingValueHolder.c(getDeformationFlingScale() * i10 * f11);
        } else {
            this.mFlingValueHolder.c((this.mProgress - this.mMin) * f11);
        }
        this.mFlingBehavior.o0(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatStateDescription(int i10) {
        Locale locale = getResources().getConfiguration().getLocales().get(0);
        if (locale != null && !locale.equals(this.mCachedLocale)) {
            this.mCachedLocale = locale;
            this.mPercentFormat = NumberFormat.getPercentInstance(locale);
        }
        NumberFormat numberFormat = this.mPercentFormat;
        return numberFormat != null ? numberFormat.format(getPercent(i10)) : Integer.toString(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurGlitterEffectValue() {
        return this.mCurGlitterEffectValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurThumbRadius() {
        return this.mCurThumbRadius;
    }

    private float getDeformationFlingScale() {
        float f10 = this.mScale;
        return f10 > 1.0f ? ((f10 - 1.0f) / 5.0f) + 1.0f : f10 < 0.0f ? f10 / 5.0f : f10;
    }

    private ValueAnimator getEnlargeAnimator(long j10, Interpolator interpolator) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(j10);
        valueAnimator.setInterpolator(interpolator);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.seekbar.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f7356a.lambda$getEnlargeAnimator$0(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    private u2.e getFastMoveSpring() {
        if (this.mFastMoveSpring == null) {
            initFastMoveAnimation();
        }
        return this.mFastMoveSpring;
    }

    private float getHeightBottomDeformedValue() {
        float f10;
        float f11;
        if (isLayoutRtl()) {
            f10 = this.mHeightBottomDeformedDownValue;
            f11 = this.mHeightBottomDeformedUpValue;
        } else {
            f10 = this.mHeightBottomDeformedUpValue;
            f11 = this.mHeightBottomDeformedDownValue;
        }
        return f10 - f11;
    }

    private float getHeightTopDeformedValue() {
        float f10;
        float f11;
        if (isLayoutRtl()) {
            f10 = this.mHeightTopDeformedDownValue;
            f11 = this.mHeightTopDeformedUpValue;
        } else {
            f10 = this.mHeightTopDeformedUpValue;
            f11 = this.mHeightTopDeformedDownValue;
        }
        return f10 - f11;
    }

    private float getPercent(int i10) {
        float max = getMax();
        float min = getMin();
        float f10 = i10;
        float f11 = max - min;
        if (f11 <= 0.0f) {
            return 0.0f;
        }
        return Math.max(0.0f, Math.min(1.0f, (f10 - min) / f11));
    }

    private int getProgressLimit(int i10) {
        int i11 = this.mMax;
        int i12 = this.mMin;
        int i13 = i11 - i12;
        return Math.max(i12 - i13, Math.min(i10, i11 + i13));
    }

    private int getRealProgress(int i10) {
        return Math.max(this.mMin, Math.min(i10, this.mMax));
    }

    private float getRealScale(float f10) {
        return Math.max(0.0f, Math.min(f10, 1.0f));
    }

    private ValueAnimator getReleaseAnimator(long j10, Interpolator interpolator) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(j10);
        valueAnimator.setInterpolator(interpolator);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.seekbar.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f7357a.lambda$getReleaseAnimator$1(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void heightDeformedChanged() {
        if (this.mOnDeformedListener != null) {
            boolean z10 = topDeformedChange();
            boolean zBottomDeformedChange = bottomDeformedChange();
            if (z10 || zBottomDeformedChange) {
                this.mOnDeformedListener.onHeightDeformedChanged(this.mCurTopDeformationValue, this.mCurBottomDeformationValue);
            }
        }
    }

    private void initAnim() {
        initEnlargeAnim();
        initThumbScaleAnim();
        initGlitterEffectAnim();
        initFlexibleFollowHandAnim();
        initClickAnim();
        initDeformationAnim();
    }

    private void initClickAnim() {
        if (this.mClickAnim != null) {
            return;
        }
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e(0.0f);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(0.3f);
        COUISpringAnimation spring = new COUISpringAnimation(eVar).setSpring(cOUISpringForce);
        this.mClickAnim = spring;
        spring.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISeekBar.4
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                COUISeekBar.this.onClickAnimationUpdate(f10);
            }
        });
    }

    private void initDeformationAnim() {
        if (this.mDeformationAnim != null) {
            return;
        }
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e(0.0f);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(0.1f);
        COUISpringAnimation spring = new COUISpringAnimation(eVar).setSpring(cOUISpringForce);
        this.mDeformationAnim = spring;
        spring.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISeekBar.5
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                float f12 = f10 / 100000.0f;
                COUISeekBar cOUISeekBar = COUISeekBar.this;
                float f13 = cOUISeekBar.mScale;
                if (f13 > 1.0f) {
                    double d10 = f12;
                    cOUISeekBar.mHeightBottomDeformedUpValue = cOUISeekBar.computeValue(d10, cOUISeekBar.mMaxMovingDistance);
                    COUISeekBar cOUISeekBar2 = COUISeekBar.this;
                    cOUISeekBar2.mHeightTopDeformedUpValue = cOUISeekBar2.computeValue(d10, cOUISeekBar2.mMaxMovingDistance + COUISeekBar.this.mMaxHeightDeformedValue);
                    COUISeekBar cOUISeekBar3 = COUISeekBar.this;
                    cOUISeekBar3.mWidthDeformedValue = cOUISeekBar3.computeValue(d10, cOUISeekBar3.mMaxWidthDeformedValue);
                    COUISeekBar.this.heightDeformedChanged();
                    COUISeekBar.this.invalidate();
                    return;
                }
                if (f13 < 0.0f) {
                    double d11 = f12;
                    cOUISeekBar.mHeightTopDeformedDownValue = cOUISeekBar.computeValue(d11, cOUISeekBar.mMaxMovingDistance);
                    COUISeekBar cOUISeekBar4 = COUISeekBar.this;
                    cOUISeekBar4.mHeightBottomDeformedDownValue = cOUISeekBar4.computeValue(d11, cOUISeekBar4.mMaxMovingDistance + COUISeekBar.this.mMaxHeightDeformedValue);
                    COUISeekBar cOUISeekBar5 = COUISeekBar.this;
                    cOUISeekBar5.mWidthDeformedValue = cOUISeekBar5.computeValue(d11, cOUISeekBar5.mMaxWidthDeformedValue);
                    COUISeekBar.this.heightDeformedChanged();
                    COUISeekBar.this.invalidate();
                }
            }
        });
    }

    private void initEnlargeAnim() {
        ValueAnimator valueAnimator = this.mTouchEnlargeAnimator;
        if (valueAnimator == null) {
            this.mTouchEnlargeAnimator = getEnlargeAnimator(183L, PROGRESS_SCALE_INTERPOLATOR);
        } else {
            cancelAnim(valueAnimator);
        }
        setEnlargeAnimatorValues(this.mTouchEnlargeAnimator);
    }

    private void initFastMoveAnimation() {
        if (this.mFastMoveSpring != null) {
            return;
        }
        u2.e eVarC = j.g().c();
        this.mFastMoveSpring = eVarC;
        eVarC.o(this.mFastMoveSpringConfig);
        this.mFastMoveSpring.a(new h() { // from class: com.coui.appcompat.seekbar.COUISeekBar.7
            @Override // u2.h
            public void onSpringActivate(u2.e eVar) {
            }

            @Override // u2.h
            public void onSpringAtRest(u2.e eVar) {
            }

            @Override // u2.h
            public void onSpringEndStateChange(u2.e eVar) {
            }

            @Override // u2.h
            public void onSpringUpdate(u2.e eVar) {
                if (COUISeekBar.this.mFastMoveScaleOffsetX != eVar.e()) {
                    if (COUISeekBar.this.isEnabled()) {
                        COUISeekBar.this.mFastMoveScaleOffsetX = (float) eVar.c();
                    } else {
                        COUISeekBar.this.mFastMoveScaleOffsetX = 0.0f;
                    }
                    COUISeekBar.this.invalidate();
                }
            }
        });
    }

    private void initFlexibleFollowHandAnim() {
        if (this.mFlexibleFollowHandAnim != null) {
            return;
        }
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e(0.0f);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(0.1f);
        COUISpringAnimation spring = new COUISpringAnimation(eVar).setSpring(cOUISpringForce);
        this.mFlexibleFollowHandAnim = spring;
        spring.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISeekBar.3
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
                COUISeekBar cOUISeekBar = COUISeekBar.this;
                cOUISeekBar.mDrawProgressScale = f10 / 1000.0f;
                cOUISeekBar.invalidate();
            }
        });
    }

    private void initGlitterEffectAnim() {
        if (this.mGlitterEffectAnim != null) {
            return;
        }
        this.mGlitterEffectAnim = new COUISpringAnimation(this, this.mGlitterEffectTransition);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(0.6f);
        this.mGlitterEffectAnim.setSpring(cOUISpringForce);
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initPhysicsAnimator(Context context) {
        this.mPhysicalAnimator = l.j(context);
        this.mFlingValueHolder = new k(0.0f);
        int seekBarWidth = getSeekBarWidth();
        COUILog.i(TAG, "COUISeekBar initPhysicsAnimator : setActiveFrame:" + seekBarWidth);
        i iVar = (i) ((i) new i(4, 0.0f, (float) seekBarWidth).K(this.mFlingValueHolder)).B(this.mFlingFrequency, this.mFlingDampingRatio).c(null);
        this.mFlingBehavior = iVar;
        iVar.m0(this.mFlingLinearDamping);
        this.mPhysicalAnimator.d(this.mFlingBehavior);
        this.mPhysicalAnimator.a(this.mFlingBehavior, this);
        this.mPhysicalAnimator.c(this.mFlingBehavior, this);
    }

    private void initThumbScaleAnim() {
        if (this.mThumbScaleAnim != null) {
            return;
        }
        this.mThumbScaleAnim = new COUISpringAnimation(this, this.mThumbScaleTransition);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(0.2f);
        this.mThumbScaleAnim.setSpring(cOUISpringForce);
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void initView() {
        setIndeterminate(true);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        m0.j0(this, new androidx.core.view.a() { // from class: com.coui.appcompat.seekbar.COUISeekBar.6
            @Override // androidx.core.view.a
            public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
                super.onInitializeAccessibilityNodeInfo(view, hVar);
                hVar.b(h.a.L);
                hVar.z0(h.g.a(1, COUISeekBar.this.getMin(), COUISeekBar.this.getMax(), COUISeekBar.this.getProgress()));
                hVar.A0(COUISeekBar.this.mSeekBarRoleDescription);
                COUISeekBar cOUISeekBar = COUISeekBar.this;
                hVar.H0(cOUISeekBar.formatStateDescription(cOUISeekBar.mProgress));
                if (COUISeekBar.this.isEnabled()) {
                    int progress = COUISeekBar.this.getProgress();
                    if (progress > COUISeekBar.this.getMin()) {
                        hVar.a(ConfigPackage.FRAME_SIZE_6);
                    }
                    if (progress < COUISeekBar.this.getMax()) {
                        hVar.a(ConfigPackage.FRAME_SIZE_5);
                    }
                }
            }

            @Override // androidx.core.view.a
            public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
                if (super.performAccessibilityAction(view, i10, bundle)) {
                    return true;
                }
                if (!COUISeekBar.this.isEnabled()) {
                    return false;
                }
                if (i10 == 4096) {
                    COUISeekBar cOUISeekBar = COUISeekBar.this;
                    cOUISeekBar.setProgress(cOUISeekBar.getProgress() + COUISeekBar.this.mIncrement, false, true);
                    COUISeekBar cOUISeekBar2 = COUISeekBar.this;
                    cOUISeekBar2.announceForAccessibility(cOUISeekBar2.formatStateDescription(cOUISeekBar2.getProgress()));
                    return true;
                }
                if (i10 != 8192) {
                    return false;
                }
                COUISeekBar cOUISeekBar3 = COUISeekBar.this;
                cOUISeekBar3.setProgress(cOUISeekBar3.getProgress() - COUISeekBar.this.mIncrement, false, true);
                COUISeekBar cOUISeekBar4 = COUISeekBar.this;
                cOUISeekBar4.announceForAccessibility(cOUISeekBar4.formatStateDescription(cOUISeekBar4.getProgress()));
                return true;
            }
        });
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setDither(true);
        TextPaint textPaint = new TextPaint(1);
        this.mGlitterEffectPaint = textPaint;
        textPaint.setColor(-16777216);
        this.mBackgroundSmoothRoundCornerHelper = new SmoothRoundCornerHelper(this.mBackgroundPath);
        this.mProgressSmoothRoundCornerHelper = new SmoothRoundCornerHelper(this.mProgressPath);
    }

    private void invalidateProgress(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        setTouchScale(isLayoutRtl() ? (((getWidth() - x10) - getEnd()) - this.mPaddingHorizontal) / getSeekBarWidth() : ((x10 - getStart()) - this.mPaddingHorizontal) / getSeekBarWidth(), true);
        this.mFlexibleFollowHandAnim.animateToFinalPosition(this.mScale * 1000.0f);
        int progressLimit = getProgressLimit(Math.round((this.mScale * (getMax() - getMin())) + getMin()));
        int i10 = this.mProgress;
        int i11 = this.mRealProgress;
        setLocalProgress(progressLimit);
        if (i10 != this.mProgress) {
            OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onProgressChanged(this, this.mRealProgress, true);
            }
            if (i11 != this.mRealProgress) {
                performFeedback();
            }
        }
    }

    private boolean isDeformationFling() {
        l lVar;
        if (this.mIsSupportDeformation) {
            float f10 = this.mScale;
            if ((f10 > 1.0f || f10 < 0.0f) && (lVar = this.mPhysicalAnimator) != null && lVar.v()) {
                return true;
            }
        }
        return false;
    }

    private boolean isMoveFollowHand() {
        return this.mMoveType != 2;
    }

    private boolean isWithinThumbBounds(float f10, float f11) {
        int seekBarCenterY = getSeekBarCenterY();
        float f12 = this.mThumbPosition;
        float f13 = this.mPaddingHorizontal;
        if (f10 >= f12 - f13 && f10 <= f12 + f13) {
            float f14 = seekBarCenterY;
            if (f11 >= f14 - f13 && f11 <= f14 + f13) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getEnlargeAnimator$0(ValueAnimator valueAnimator) {
        getCurAnimatorValues(valueAnimator);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getReleaseAnimator$1(ValueAnimator valueAnimator) {
        getCurAnimatorValues(valueAnimator);
        invalidate();
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurGlitterEffectValue(float f10) {
        this.mCurGlitterEffectValue = f10;
        this.mCurGlitterEffectAlpha = computeGlitterEffectAlpha(f10);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurThumbRadius(float f10) {
        this.mCurThumbRadius = f10;
        invalidate();
    }

    private void setDeformationScale(float f10) {
        if (f10 > 1.0f) {
            f10 = ((f10 - 1.0f) * 5.0f) + 1.0f;
        } else if (f10 < 0.0f) {
            f10 *= 5.0f;
        }
        float fMax = Math.max(-1.0f, Math.min(f10, 2.0f));
        this.mScale = fMax;
        this.mDrawProgressScale = fMax;
    }

    private void setFlingScale(float f10) {
        if (!this.mIsSupportDeformation) {
            float fMax = Math.max(0.0f, Math.min(f10, 1.0f));
            this.mScale = fMax;
            this.mDrawProgressScale = fMax;
            return;
        }
        calculateFlingDeformationValue(f10);
        setDeformationScale(f10);
        if (this.mOnDeformedListener != null) {
            DeformedValueBean deformedValueBean = new DeformedValueBean(this.mHeightBottomDeformedUpValue, this.mHeightTopDeformedUpValue, this.mWidthDeformedValue, this.mHeightBottomDeformedDownValue, this.mHeightTopDeformedDownValue, this.mProgress);
            deformedValueBean.setScale(this.mScale);
            deformedValueBean.setDrawProgressScale(this.mDrawProgressScale);
            this.mOnDeformedListener.onScaleChanged(deformedValueBean);
        }
    }

    private void setMaxToMinLinearGradient() {
        if (this.mMaxToMinLinearGradient == null) {
            RectF rectF = this.mProgressRect;
            this.mMaxToMinLinearGradient = new LinearGradient(rectF.left, 0.0f, rectF.right, 0.0f, this.mGlitterEffectMaxColor, this.mGlitterEffectMinColor, Shader.TileMode.CLAMP);
        }
        this.mGlitterEffectPaint.setShader(this.mMaxToMinLinearGradient);
    }

    private void setMinToMaxLinearGradient() {
        if (this.mMinToMaxLinearGradient == null) {
            RectF rectF = this.mProgressRect;
            this.mMinToMaxLinearGradient = new LinearGradient(rectF.left, 0.0f, rectF.right, 0.0f, this.mGlitterEffectMinColor, this.mGlitterEffectMaxColor, Shader.TileMode.CLAMP);
        }
        this.mGlitterEffectPaint.setShader(this.mMinToMaxLinearGradient);
    }

    @SuppressLint({"RestrictedApi"})
    private void setValueForLabel(TextDrawable textDrawable, String str) {
        textDrawable.setText(str);
        if (isLayoutRtl()) {
            int start = getStart();
            textDrawable.setBounds(start, 0 - textDrawable.getIntrinsicHeight(), textDrawable.getIntrinsicWidth() + start, 0);
        } else {
            int width = getWidth() - getEnd();
            textDrawable.setBounds(width, 0 - textDrawable.getIntrinsicHeight(), width - textDrawable.getIntrinsicWidth(), 0);
        }
        Rect rect = new Rect(textDrawable.getBounds());
        DescendantOffsetUtil.offsetDescendantRect(ViewUtil.getContentView(this), this, rect);
        textDrawable.setBounds(rect);
        ViewUtil.getContentViewOverlay(this).add(textDrawable);
    }

    private void startFastMoveAnimation(float f10) {
        u2.e fastMoveSpring = getFastMoveSpring();
        if (fastMoveSpring.c() == fastMoveSpring.e()) {
            int i10 = this.mMax - this.mMin;
            if (f10 >= 95.0f) {
                int i11 = this.mProgress;
                float f11 = i10;
                if (i11 > MAX_FAST_MOVE_PERCENT * f11 || i11 < f11 * MIN_FAST_MOVE_PERCENT) {
                    return;
                }
                fastMoveSpring.n(1.0d);
                return;
            }
            if (f10 > -95.0f) {
                fastMoveSpring.n(0.0d);
                return;
            }
            int i12 = this.mProgress;
            float f12 = i10;
            if (i12 > MAX_FAST_MOVE_PERCENT * f12 || i12 < f12 * MIN_FAST_MOVE_PERCENT) {
                return;
            }
            fastMoveSpring.n(-1.0d);
        }
    }

    private void startGlitterEffectAnim(float f10) {
        this.mIsBumpingEdges = true;
        this.mGlitterEffectAnim.setStartValue(this.mCurGlitterEffectValue);
        this.mGlitterEffectAnim.animateToFinalPosition(0.0f);
        this.mGlitterEffectAnim.setStartVelocity(Math.abs(f10));
    }

    private void stopDeformationFling() {
        if (isDeformationFling()) {
            stopPhysicsMove();
        }
    }

    private boolean topDeformedChange() {
        if (!this.mIsSupportDeformation) {
            return false;
        }
        float heightTopDeformedValue = getHeightTopDeformedValue();
        if (this.mCurTopDeformationValue == heightTopDeformedValue) {
            return false;
        }
        this.mCurTopDeformationValue = heightTopDeformedValue;
        return true;
    }

    private void trackTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float f10 = x10 - this.mLastX;
        int i10 = this.mMax - this.mMin;
        if (isLayoutRtl()) {
            f10 = -f10;
        }
        float f11 = i10;
        setTouchScale((this.mProgress / f11) + ((f10 * calculateDamping()) / getSeekBarWidth()), false);
        executeTouchGlitterEffectAnim();
        this.mFlexibleFollowHandAnim.animateToFinalPosition(this.mScale * 1000.0f);
        int progressLimit = getProgressLimit(Math.round((this.mScale * f11) + getMin()));
        int i11 = this.mProgress;
        int i12 = this.mRealProgress;
        setLocalProgress(progressLimit);
        if (i11 != this.mProgress) {
            this.mLastX = x10;
            OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onProgressChanged(this, this.mRealProgress, true);
            }
            if (i12 != this.mRealProgress) {
                performFeedback();
            }
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(100);
            startFastMoveAnimation(this.mVelocityTracker.getXVelocity());
        }
    }

    private void trackTouchEventByFinger(MotionEvent motionEvent) {
        float start;
        int seekBarWidth;
        int iRound = Math.round(((motionEvent.getX() - this.mLastX) * calculateDamping()) + this.mLastX);
        if (isLayoutRtl()) {
            start = ((getWidth() - iRound) - getEnd()) - this.mPaddingHorizontal;
            seekBarWidth = getSeekBarWidth();
        } else {
            start = (iRound - getStart()) - this.mPaddingHorizontal;
            seekBarWidth = getSeekBarWidth();
        }
        setTouchScale(start / seekBarWidth, false);
        executeTouchGlitterEffectAnim();
        this.mFlexibleFollowHandAnim.animateToFinalPosition(this.mScale * 1000.0f);
        int progressLimit = getProgressLimit(Math.round((this.mScale * (getMax() - getMin())) + getMin()));
        int i10 = this.mProgress;
        int i11 = this.mRealProgress;
        setLocalProgress(progressLimit);
        if (i10 != this.mProgress) {
            this.mLastX = iRound;
            OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onProgressChanged(this, this.mRealProgress, true);
            }
            if (i11 != this.mRealProgress) {
                performFeedback();
            }
        }
    }

    private void updateBehavior() {
        if (!this.mIsPhysicsEnable || this.mPhysicalAnimator == null || this.mFlingBehavior == null) {
            return;
        }
        int seekBarWidth = getSeekBarWidth();
        COUILog.i(TAG, "COUISeekBar updateBehavior : setActiveFrame:" + seekBarWidth);
        this.mFlingBehavior.k0(0.0f, (float) seekBarWidth);
    }

    private void updatePixPerProgress() {
        int seekBarWidth = getSeekBarWidth();
        int i10 = this.mMax - this.mMin;
        this.mPixPerProgress = i10 > 0 ? seekBarWidth / i10 : 0.0f;
    }

    private void updateScale() {
        int i10 = this.mMax - this.mMin;
        float f10 = i10 > 0 ? (this.mProgress - r1) / i10 : 0.0f;
        this.mScale = f10;
        this.mDrawProgressScale = f10;
    }

    protected void animForClick(float f10) {
        float seekBarWidth = getSeekBarWidth();
        float f11 = this.mProgressHeight;
        float f12 = seekBarWidth + ((f11 / 2.0f) * 2.0f);
        float f13 = this.mPaddingHorizontal - (f11 / 2.0f);
        float width = isLayoutRtl() ? (((getWidth() - f10) - getStart()) - f13) / f12 : ((f10 - getStart()) - f13) / f12;
        clearDeformationValue();
        startTransitionAnim(getProgressLimit(Math.round((width * (getMax() - getMin())) + getMin())), true);
    }

    protected void calculateTouchDeformationValue() {
        float f10 = this.mScale;
        if (f10 > 1.0f) {
            this.mDeformationAnim.animateToFinalPosition(((f10 - 1.0f) / 5.0f) * 100000.0f);
        } else if (f10 < 0.0f) {
            this.mDeformationAnim.animateToFinalPosition((Math.abs(f10) / 5.0f) * 100000.0f);
        }
    }

    protected void cancelAnim(ValueAnimator valueAnimator) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        valueAnimator.cancel();
    }

    protected void checkThumbPosChange(int i10) {
        checkThumbPosChange(i10, true, true);
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        setBackgroundRect();
        setProgressRect();
        super.draw(canvas);
    }

    protected void drawActiveTrack(Canvas canvas, float f10) {
        drawProgress(canvas);
        drawGlitterEffect(canvas);
        drawThumb(canvas);
    }

    protected void drawGlitterEffect(Canvas canvas) {
        if (this.mShowGlitterEffect) {
            if (this.mIsStartFromMiddle) {
                if (isLayoutRtl()) {
                    float f10 = this.mScale;
                    if (f10 >= 1.0f) {
                        setMaxToMinLinearGradient();
                    } else if (f10 <= 0.0f) {
                        setMinToMaxLinearGradient();
                    }
                } else {
                    float f11 = this.mScale;
                    if (f11 >= 1.0f) {
                        setMinToMaxLinearGradient();
                    } else if (f11 <= 0.0f) {
                        setMaxToMinLinearGradient();
                    }
                }
            } else if (isLayoutRtl()) {
                if (this.mScale >= 1.0f) {
                    setMaxToMinLinearGradient();
                }
            } else if (this.mScale >= 1.0f) {
                setMinToMaxLinearGradient();
            }
            this.mGlitterEffectPaint.setAlpha(this.mCurGlitterEffectAlpha);
            RectF rectF = this.mProgressRect;
            float f12 = this.mProgressHeight;
            canvas.drawRoundRect(rectF, f12 / 2.0f, f12 / 2.0f, this.mGlitterEffectPaint);
        }
    }

    protected void drawInactiveTrack(Canvas canvas) {
        int smoothStyleType = this.mBackgroundSmoothRoundCornerHelper.getSmoothStyleType();
        if (smoothStyleType == 0) {
            this.mPaint.setColor(this.mBackgroundColor);
            if (this.mBackgroundRoundCornerWeight == 0.0f) {
                RectF rectF = this.mBackgroundRect;
                float f10 = this.mCurBackgroundHeight;
                canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.mPaint);
                return;
            } else {
                OplusCanvas oplusCanvas = new OplusCanvas(canvas);
                RectF rectF2 = this.mBackgroundRect;
                float f11 = this.mCurBackgroundHeight;
                oplusCanvas.drawSmoothRoundRect(rectF2, f11 / 2.0f, f11 / 2.0f, this.mPaint, this.mBackgroundRoundCornerWeight);
                return;
            }
        }
        if (smoothStyleType != 1) {
            this.mPaint.setColor(this.mBackgroundColor);
            RectF rectF3 = this.mBackgroundRect;
            float f12 = this.mCurBackgroundHeight;
            canvas.drawRoundRect(rectF3, f12 / 2.0f, f12 / 2.0f, this.mPaint);
            return;
        }
        this.mBackgroundPath.reset();
        canvas.save();
        OplusPathAdapter pathAdapter = this.mBackgroundSmoothRoundCornerHelper.getPathAdapter();
        RectF rectF4 = this.mBackgroundRect;
        float f13 = this.mCurBackgroundHeight;
        pathAdapter.addSmoothRoundRect(rectF4, f13 / 2.0f, f13 / 2.0f, Path.Direction.CCW);
        canvas.clipPath(this.mBackgroundPath);
        canvas.drawColor(this.mBackgroundColor);
        canvas.restore();
    }

    public void ensureLabelsAdded(String str) {
        setValueForLabel(this.mTextDrawable, str);
    }

    @SuppressLint({"RestrictedApi"})
    public void ensureLabelsRemoved() {
        ViewUtil.getContentViewOverlay(this).remove(this.mTextDrawable);
    }

    protected void executeThumbScaleAnim(MotionEvent motionEvent) {
        if (this.mShowThumb && isWithinThumbBounds(motionEvent.getX(), motionEvent.getY())) {
            this.mThumbScaleAnim.setStartValue(this.mCurThumbRadius);
            this.mThumbScaleAnim.animateToFinalPosition(this.mThumbMaxRadius);
        }
    }

    protected void executeTouchGlitterEffectAnim() {
        this.mVelocityTracker.computeCurrentVelocity(1000, 8000.0f);
        float xVelocity = this.mVelocityTracker.getXVelocity();
        if (!this.mIsStartFromMiddle) {
            if (isLayoutRtl()) {
                if (this.mScale < 1.0f || this.mIsBumpingEdges || xVelocity >= 0.0f) {
                    return;
                }
                startGlitterEffectAnim(xVelocity);
                return;
            }
            if (this.mScale < 1.0f || this.mIsBumpingEdges || xVelocity <= 0.0f) {
                return;
            }
            startGlitterEffectAnim(xVelocity);
            return;
        }
        if (isLayoutRtl()) {
            float f10 = this.mScale;
            if (f10 <= 0.0f && !this.mIsBumpingEdges && xVelocity > 0.0f) {
                startGlitterEffectAnim(xVelocity);
                return;
            } else {
                if (f10 < 1.0f || this.mIsBumpingEdges || xVelocity >= 0.0f) {
                    return;
                }
                startGlitterEffectAnim(xVelocity);
                return;
            }
        }
        float f11 = this.mScale;
        if (f11 <= 0.0f && !this.mIsBumpingEdges && xVelocity < 0.0f) {
            startGlitterEffectAnim(xVelocity);
        } else {
            if (f11 < 1.0f || this.mIsBumpingEdges || xVelocity <= 0.0f) {
                return;
            }
            startGlitterEffectAnim(xVelocity);
        }
    }

    protected int getColor(View view, ColorStateList colorStateList, int i10) {
        return colorStateList == null ? i10 : colorStateList.getColorForState(view.getDrawableState(), i10);
    }

    protected void getCurAnimatorValues(ValueAnimator valueAnimator) {
        this.mCurBackgroundHeight = ((Float) valueAnimator.getAnimatedValue("backgroundHeight")).floatValue();
    }

    protected int getEnd() {
        return getPaddingEnd();
    }

    public int getLabelHeight() {
        return this.mTextDrawable.getIntrinsicHeight();
    }

    @Override // android.widget.ProgressBar
    public int getMax() {
        return this.mMax;
    }

    @Override // android.widget.ProgressBar
    public int getMin() {
        return this.mMin;
    }

    public float getMoveDamping() {
        return this.mDamping;
    }

    public int getMoveType() {
        return this.mMoveType;
    }

    @Deprecated
    protected int getNormalSeekBarWidth() {
        return getSeekBarWidth();
    }

    @Override // android.widget.ProgressBar
    public int getProgress() {
        return this.mRealProgress;
    }

    protected int getSeekBarCenterY() {
        return getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) >> 1);
    }

    protected int getSeekBarWidth() {
        return (int) (((getWidth() - getStart()) - getEnd()) - (this.mPaddingHorizontal * 2.0f));
    }

    protected int getStart() {
        return getPaddingStart();
    }

    protected void handleMotionEventDown(MotionEvent motionEvent) {
        this.mTouchDownX = motionEvent.getX();
        this.mLastX = motionEvent.getX();
        this.mIsBumpingEdges = false;
        executeThumbScaleAnim(motionEvent);
    }

    protected void handleMotionEventMove(MotionEvent motionEvent) {
        float seekBarWidth = getSeekBarWidth();
        int i10 = this.mMax;
        int i11 = this.mMin;
        int i12 = i10 - i11;
        float f10 = (i12 > 0 ? (this.mProgress * seekBarWidth) / i12 : 0.0f) + i11;
        if (this.mIsStartFromMiddle && Float.compare(f10, seekBarWidth / 2.0f) == 0 && Math.abs(motionEvent.getX() - this.mLastX) < 20.0f) {
            return;
        }
        if (this.mIsDragging && this.mStartDragging) {
            int i13 = this.mMoveType;
            if (i13 != 0) {
                if (i13 == 1) {
                    trackTouchEventByFinger(motionEvent);
                    return;
                } else if (i13 != 2) {
                    return;
                }
            }
            trackTouchEvent(motionEvent);
            return;
        }
        if (isToucheInSeekBar(motionEvent)) {
            float x10 = motionEvent.getX();
            if (Math.abs(x10 - this.mTouchDownX) > this.mTouchSlop) {
                COUILog.i(TAG, "start drag mScale = " + this.mScale);
                this.mClickAnim.cancel();
                stopDeformationFling();
                startDrag();
                touchAnim();
                this.mLastX = x10;
                this.mFlexibleFollowHandAnim.setStartValue(this.mScale * 1000.0f);
                if (isMoveFollowHand()) {
                    invalidateProgress(motionEvent);
                }
            }
        }
    }

    protected void handleMotionEventUp(MotionEvent motionEvent) {
        OnSeekBarChangeListener onSeekBarChangeListener;
        releaseThumbScaleAnim();
        getFastMoveSpring().n(0.0d);
        if (!this.mIsDragging) {
            if (isEnabled() && touchInSeekBar(motionEvent, this) && isMoveFollowHand()) {
                stopDeformationFling();
                animForClick(motionEvent.getX());
                return;
            }
            return;
        }
        this.mIsDragging = false;
        this.mStartDragging = false;
        COUILog.i(TAG, "handleMotionEventUp mFlingVelocity = " + this.mFlingVelocity);
        if (!this.mIsPhysicsEnable || Math.abs(this.mFlingVelocity) < 100.0f) {
            float f10 = this.mScale;
            if (f10 >= 0.0f && f10 <= 1.0f && (onSeekBarChangeListener = this.mOnSeekBarChangeListener) != null) {
                onSeekBarChangeListener.onStopTrackingTouch(this);
            }
            flingBehaviorAfterDeformationDrag();
        } else {
            flingBehaviorAfterEndDrag(this.mFlingVelocity);
        }
        setPressed(false);
        releaseAnim();
    }

    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    protected boolean isToucheInSeekBar(MotionEvent motionEvent) {
        return touchInSeekBar(motionEvent, this);
    }

    @Override // d7.a
    public void onAnimationCancel(d7.d dVar) {
        onStopTrackingTouch(true);
    }

    @Override // d7.a
    public void onAnimationEnd(d7.d dVar) {
        OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (onSeekBarChangeListener != null) {
            onSeekBarChangeListener.onStopTrackingTouch(this);
        }
    }

    public /* bridge */ /* synthetic */ void onAnimationStart(d7.d dVar) {
        super.onAnimationStart(dVar);
    }

    @Override // d7.b
    public void onAnimationUpdate(d7.d dVar) {
        float f10;
        float f11 = this.mScale;
        Object objO = dVar.o();
        if (objO == null) {
            return;
        }
        float fFloatValue = ((Float) objO).floatValue();
        int seekBarWidth = getSeekBarWidth();
        if (isLayoutRtl()) {
            float f12 = seekBarWidth;
            f10 = (f12 - fFloatValue) / f12;
        } else {
            f10 = fFloatValue / seekBarWidth;
        }
        setFlingScale(f10);
        executeFlingGlitterEffectAnim(dVar, f11);
        float f13 = this.mProgress;
        setLocalProgress(getProgressLimit(Math.round((this.mMax - this.mMin) * this.mScale) + this.mMin));
        invalidate();
        if (f13 != this.mProgress) {
            this.mLastX = fFloatValue + getStart();
            OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onProgressChanged(this, this.mRealProgress, true);
            }
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        VibrateUtils.registerHapticObserver(getContext());
    }

    protected void onClickAnimationUpdate(float f10) {
        float f11 = this.mPixPerProgress;
        if (f11 > 0.0f) {
            setLocalProgress((int) (f10 / f11));
            float seekBarWidth = getSeekBarWidth() > 0 ? (f10 - (this.mMin * this.mPixPerProgress)) / getSeekBarWidth() : 0.0f;
            this.mScale = seekBarWidth;
            this.mDrawProgressScale = seekBarWidth;
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopPhysicsMove();
        VibrateUtils.unRegisterHapticObserver();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        drawInactiveTrack(canvas);
        drawActiveTrack(canvas, getSeekBarWidth());
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        int paddingTop = this.mSeekbarMinHeight + getPaddingTop() + getPaddingBottom();
        if (1073741824 != mode || size < paddingTop) {
            size = paddingTop;
        }
        int i12 = this.mMaxWidth;
        if (i12 > 0 && size2 > i12) {
            size2 = i12;
        }
        setMeasuredDimension(size2, size);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setProgress(savedState.mSaveProgress);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mSaveProgress = this.mProgress;
        return savedState;
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mMaxToMinLinearGradient = null;
        this.mMinToMaxLinearGradient = null;
        this.mStartDragging = false;
        stopPhysicsMove();
        updateBehavior();
        updatePixPerProgress();
    }

    void onStartTrackingTouch() {
        onStartTrackingTouch(true);
    }

    void onStopTrackingTouch() {
        onStopTrackingTouch(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    @Override // android.widget.AbsSeekBar, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            r1 = 3
            r2 = 0
            r3 = 1
            if (r0 != 0) goto L1b
            int r0 = r5.getAction()
            if (r0 == r3) goto L17
            int r0 = r5.getAction()
            if (r0 != r1) goto L16
            goto L17
        L16:
            return r2
        L17:
            r4.handleMotionEventUp(r5)
            return r3
        L1b:
            int r0 = r5.getAction()
            if (r0 == 0) goto L78
            if (r0 == r3) goto L3c
            r2 = 2
            if (r0 == r2) goto L2a
            if (r0 == r1) goto L3c
            goto L9f
        L2a:
            r4.resetBumpingEdges()
            r4.clearDeformationValue()
            r4.initVelocityTrackerIfNotExists()
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            r0.addMovement(r5)
            r4.handleMotionEventMove(r5)
            goto L9f
        L3c:
            com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation r0 = r4.mClickAnim
            r0.cancel()
            com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation r0 = r4.mFlexibleFollowHandAnim
            r0.cancel()
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            if (r0 == 0) goto L71
            r1 = 1000(0x3e8, float:1.401E-42)
            r2 = 1174011904(0x45fa0000, float:8000.0)
            r0.computeCurrentVelocity(r1, r2)
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            float r0 = r0.getXVelocity()
            r4.mFlingVelocity = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "onTouchEvent ACTION_UP mFlingVelocity = "
            r0.append(r1)
            float r1 = r4.mFlingVelocity
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "COUISeekBar"
            com.coui.appcompat.log.COUILog.i(r1, r0)
        L71:
            r4.recycleVelocityTracker()
            r4.handleMotionEventUp(r5)
            goto L9f
        L78:
            boolean r0 = r4.isDeformationFling()
            if (r0 != 0) goto L81
            r4.stopPhysicsMove()
        L81:
            boolean r0 = r4.mIsPhysicsEnable
            if (r0 == 0) goto L90
            d7.l r0 = r4.mPhysicalAnimator
            if (r0 != 0) goto L90
            android.content.Context r0 = r4.getContext()
            r4.initPhysicsAnimator(r0)
        L90:
            r4.initOrResetVelocityTracker()
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            r0.addMovement(r5)
            r4.mIsDragging = r2
            r4.mStartDragging = r2
            r4.handleMotionEventDown(r5)
        L9f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.seekbar.COUISeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    protected boolean performAdaptiveFeedback() {
        if (this.mLinearMotorVibrator == null) {
            LinearmotorVibrator linearMotorVibrator = VibrateUtils.getLinearMotorVibrator(getContext());
            this.mLinearMotorVibrator = linearMotorVibrator;
            this.mHasMotorVibrator = linearMotorVibrator != null;
        }
        if (this.mLinearMotorVibrator == null) {
            return false;
        }
        if (this.mRealProgress == getMax() || this.mRealProgress == getMin()) {
            LinearmotorVibrator linearmotorVibrator = (LinearmotorVibrator) this.mLinearMotorVibrator;
            int i10 = this.mRealProgress;
            int i11 = this.mMin;
            VibrateUtils.setLinearMotorVibratorStrength(linearmotorVibrator, VibrateUtils.TYPE_STEPABLE_EDGE, i10 - i11, this.mMax - i11, VibrateUtils.STRENGTH_MIN_EDGE, 1200);
        } else {
            if (this.mVibratorExecutor == null) {
                this.mVibratorExecutor = Executors.newSingleThreadExecutor();
            }
            this.mVibratorExecutor.execute(new Runnable() { // from class: com.coui.appcompat.seekbar.COUISeekBar.10
                @Override // java.lang.Runnable
                public void run() {
                    COUISeekBar cOUISeekBar = COUISeekBar.this;
                    if (cOUISeekBar.mIsDragging) {
                        LinearmotorVibrator linearmotorVibrator2 = (LinearmotorVibrator) cOUISeekBar.mLinearMotorVibrator;
                        int i12 = cOUISeekBar.mProgress;
                        int i13 = cOUISeekBar.mMin;
                        VibrateUtils.setLinearMotorVibratorStrength(linearmotorVibrator2, VibrateUtils.TYPE_STEPABLE_REGULATE, i12 - i13, cOUISeekBar.mMax - i13, 200, VibrateUtils.STRENGTH_MAX_STEP);
                    }
                }
            });
        }
        return true;
    }

    protected void performFeedback() {
        if (this.mEnableVibrator) {
            if (this.mHasMotorVibrator && this.mEnableAdaptiveVibrator && performAdaptiveFeedback()) {
                return;
            }
            if (this.mRealProgress == getMax() || this.mRealProgress == getMin()) {
                performHapticFeedback(COUIHapticFeedbackConstants.EDGE_SHORT_VIBRATE, 0);
                return;
            }
            if (this.mVibratorExecutor == null) {
                this.mVibratorExecutor = Executors.newSingleThreadExecutor();
            }
            this.mVibratorExecutor.execute(new Runnable() { // from class: com.coui.appcompat.seekbar.COUISeekBar.9
                @Override // java.lang.Runnable
                public void run() {
                    COUISeekBar cOUISeekBar = COUISeekBar.this;
                    if (cOUISeekBar.mIsDragging) {
                        cOUISeekBar.performHapticFeedback(COUIHapticFeedbackConstants.STEPPING_SHORT_VIBRATE, 0);
                    }
                }
            });
        }
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mRefreshStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if (TextUtils.equals(resourceTypeName, "attr")) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUISeekBar, this.mRefreshStyle, 0);
        } else if (TextUtils.equals(resourceTypeName, "style")) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUISeekBar, 0, this.mRefreshStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mProgressColor = getColor(this, typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarProgressColor), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_selector));
            this.mBackgroundColor = getColor(this, typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarBackgroundColor), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_selector));
            this.mThumbColor = getColor(this, typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarThumbColor), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_selector));
            this.mThumbShadowColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarThumbShadowColor, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_shadow_color));
            invalidate();
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    protected void releaseAnim() {
        cancelAnim(this.mTouchEnlargeAnimator);
        ValueAnimator valueAnimator = this.mTouchReleaseAnimator;
        if (valueAnimator == null) {
            this.mTouchReleaseAnimator = getReleaseAnimator(183L, PROGRESS_SCALE_INTERPOLATOR);
        } else {
            cancelAnim(valueAnimator);
        }
        setReleaseAnimatorValues(this.mTouchReleaseAnimator);
        this.mTouchReleaseAnimator.start();
    }

    protected void releaseThumbScaleAnim() {
        if (this.mShowThumb) {
            float f10 = this.mCurThumbRadius;
            if (f10 != this.mThumbRadius) {
                this.mThumbScaleAnim.setStartValue(f10);
                this.mThumbScaleAnim.animateToFinalPosition(this.mThumbRadius);
            }
        }
    }

    protected void resetBumpingEdges() {
        if (!this.mIsStartFromMiddle) {
            if (this.mScale < 1.0f) {
                this.mIsBumpingEdges = false;
            }
        } else {
            float f10 = this.mScale;
            if (f10 >= 1.0f || f10 <= 0.0f) {
                return;
            }
            this.mIsBumpingEdges = false;
        }
    }

    protected void resetDeformationValue() {
        if (this.mIsSupportDeformation) {
            this.mHeightTopDeformedUpValue = 0.0f;
            this.mHeightBottomDeformedUpValue = 0.0f;
            this.mWidthDeformedValue = 0.0f;
            this.mHeightTopDeformedDownValue = 0.0f;
            this.mHeightBottomDeformedDownValue = 0.0f;
            heightDeformedChanged();
        }
    }

    @Deprecated
    public void setBackgroundEnlargeScale(float f10) {
    }

    @Deprecated
    public void setBackgroundHeight(float f10) {
    }

    @Deprecated
    public void setBackgroundRadius(float f10) {
    }

    protected void setBackgroundRect() {
        int seekBarCenterY = getSeekBarCenterY();
        float start = (getStart() + this.mPaddingHorizontal) - (this.mCurBackgroundHeight / 2.0f);
        float width = ((getWidth() - getEnd()) - this.mPaddingHorizontal) + (this.mCurBackgroundHeight / 2.0f);
        if (isLayoutRtl()) {
            RectF rectF = this.mBackgroundRect;
            float f10 = (start - this.mHeightTopDeformedUpValue) + this.mHeightTopDeformedDownValue;
            float f11 = seekBarCenterY;
            float f12 = this.mCurBackgroundHeight;
            float f13 = this.mWidthDeformedValue;
            rectF.set(f10, f11 - ((f12 / 2.0f) - f13), (width - this.mHeightBottomDeformedUpValue) + this.mHeightBottomDeformedDownValue, f11 + ((f12 / 2.0f) - f13));
            return;
        }
        RectF rectF2 = this.mBackgroundRect;
        float f14 = (start - this.mHeightBottomDeformedDownValue) + this.mHeightBottomDeformedUpValue;
        float f15 = seekBarCenterY;
        float f16 = this.mCurBackgroundHeight;
        float f17 = this.mWidthDeformedValue;
        rectF2.set(f14, f15 - ((f16 / 2.0f) - f17), (width + this.mHeightTopDeformedUpValue) - this.mHeightTopDeformedDownValue, f15 + ((f16 / 2.0f) - f17));
    }

    public void setBackgroundRoundCornerWeight(float f10) {
        this.mBackgroundRoundCornerWeight = f10;
        invalidate();
    }

    @Deprecated
    public void setCustomProgressAnimDuration(float f10) {
    }

    @Deprecated
    public void setCustomProgressAnimInterpolator(Interpolator interpolator) {
    }

    public void setDeformedListener(OnDeformedListener onDeformedListener) {
        this.mOnDeformedListener = onDeformedListener;
    }

    public void setDeformedParams(DeformedValueBean deformedValueBean) {
        this.mScale = deformedValueBean.getScale();
        this.mDrawProgressScale = deformedValueBean.getDrawProgressScale();
        this.mProgress = deformedValueBean.getProgress();
        this.mHeightBottomDeformedUpValue = deformedValueBean.getHeightBottomDeformedUpValue();
        this.mHeightTopDeformedUpValue = deformedValueBean.getHeightTopDeformedUpValue();
        this.mWidthDeformedValue = deformedValueBean.getWidthDeformedValue();
        this.mHeightBottomDeformedDownValue = deformedValueBean.getHeightBottomDeformedDownValue();
        this.mHeightTopDeformedDownValue = deformedValueBean.getHeightTopDeformedDownValue();
        invalidate();
    }

    public void setEnableAdaptiveVibrator(boolean z10) {
        this.mEnableAdaptiveVibrator = z10;
    }

    public void setEnableVibrator(boolean z10) {
        this.mEnableVibrator = z10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.mProgressColor = getColor(this, this.mProgressColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_selector));
        this.mBackgroundColor = getColor(this, this.mBackgroundColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_selector));
        this.mThumbColor = getColor(this, this.mThumbColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_selector));
    }

    protected void setEnlargeAnimatorValues(ValueAnimator valueAnimator) {
        valueAnimator.setValues(PropertyValuesHolder.ofFloat("backgroundHeight", this.mBackgroundHeight, this.mMaxBackgroundHeight));
    }

    public void setFlingLinearDamping(float f10) {
        i iVar;
        if (this.mIsPhysicsEnable) {
            this.mFlingLinearDamping = f10;
            if (this.mPhysicalAnimator == null || (iVar = this.mFlingBehavior) == null) {
                return;
            }
            iVar.m0(f10);
        }
    }

    public void setFlingProperty(float f10, float f11) {
        i iVar;
        if (this.mIsPhysicsEnable) {
            this.mFlingFrequency = f10;
            this.mFlingDampingRatio = f11;
            if (this.mPhysicalAnimator == null || (iVar = this.mFlingBehavior) == null) {
                return;
            }
            iVar.B(f10, f11);
        }
    }

    public void setIncrement(int i10) {
        this.mIncrement = Math.abs(i10);
    }

    @Override // android.widget.ProgressBar
    @Deprecated
    public void setInterpolator(Interpolator interpolator) {
    }

    protected void setLocalMax(int i10) {
        this.mMax = i10;
        updatePixPerProgress();
        updateScale();
        super.setMax(i10);
    }

    protected void setLocalMin(int i10) {
        this.mMin = i10;
        updatePixPerProgress();
        updateScale();
        super.setMin(i10);
    }

    protected void setLocalProgress(int i10) {
        this.mProgress = i10;
        this.mRealProgress = getRealProgress(i10);
        super.setProgress(i10);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar
    public void setMax(int i10) {
        if (i10 < getMin()) {
            int min = getMin();
            Log.e(TAG, "setMax : the input params is lower than min. (inputMax:" + i10 + ",mMin:" + this.mMin + ")");
            i10 = min;
        }
        if (i10 != this.mMax) {
            setLocalMax(i10);
            if (this.mProgress > i10) {
                setProgress(i10);
            }
        }
        invalidate();
    }

    public void setMaxHeightDeformed(float f10) {
        this.mMaxHeightDeformedValue = f10;
    }

    public void setMaxMovingDistance(int i10) {
        this.mMaxMovingDistance = i10;
    }

    public void setMaxWidthDeformed(float f10) {
        this.mMaxWidthDeformedValue = f10;
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar
    public void setMin(int i10) {
        int max = i10 < 0 ? 0 : i10;
        if (i10 > getMax()) {
            max = getMax();
            Log.e(TAG, "setMin : the input params is greater than max. (inputMin:" + i10 + ",mMax:" + this.mMax + ")");
        }
        if (max != this.mMin) {
            setLocalMin(max);
            if (this.mProgress < max) {
                setProgress(max);
            }
        }
        invalidate();
    }

    public void setMoveDamping(float f10) {
        this.mDamping = f10;
    }

    public void setMoveType(int i10) {
        this.mMoveType = i10;
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener onSeekBarChangeListener) {
        this.mOnSeekBarChangeListener = onSeekBarChangeListener;
    }

    @Deprecated
    public void setPaddingHorizontal(float f10) {
    }

    public void setPhysicalEnabled(boolean z10) {
        if (z10 == this.mIsPhysicsEnable) {
            return;
        }
        if (z10) {
            this.mIsPhysicsEnable = true;
            updateBehavior();
        } else {
            stopPhysicsMove();
            this.mIsPhysicsEnable = false;
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i10) {
        setProgress(i10, false);
    }

    public void setProgressColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mProgressColorStateList = colorStateList;
            this.mProgressColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_selector));
            invalidate();
        }
    }

    @Deprecated
    public void setProgressContentDescription(String str) {
    }

    @Deprecated
    public void setProgressEnlargeScale(float f10) {
    }

    @Deprecated
    public void setProgressFull() {
    }

    @Deprecated
    public void setProgressHeight(float f10) {
    }

    @Deprecated
    public void setProgressRadius(float f10) {
    }

    protected void setProgressRect() {
        float start;
        float realScale;
        float start2;
        float realScale2;
        float f10;
        float f11;
        float seekBarWidth = getSeekBarWidth();
        int seekBarCenterY = getSeekBarCenterY();
        if (this.mIsStartFromMiddle) {
            if (isLayoutRtl()) {
                start2 = getWidth() / 2.0f;
                realScale2 = start2 - ((getRealScale(this.mDrawProgressScale) - 0.5f) * seekBarWidth);
                f10 = start2;
                f11 = realScale2;
            } else {
                start = getWidth() / 2.0f;
                realScale = start + ((getRealScale(this.mDrawProgressScale) - 0.5f) * seekBarWidth);
                f10 = realScale;
                realScale2 = start;
                f11 = f10;
            }
        } else if (isLayoutRtl()) {
            start2 = getStart() + this.mPaddingHorizontal + seekBarWidth;
            realScale2 = start2 - (getRealScale(this.mDrawProgressScale) * seekBarWidth);
            f10 = start2;
            f11 = realScale2;
        } else {
            start = getStart() + this.mPaddingHorizontal;
            realScale = start + (getRealScale(this.mDrawProgressScale) * seekBarWidth);
            f10 = realScale;
            realScale2 = start;
            f11 = f10;
        }
        if (!this.mIsStartFromMiddle || realScale2 <= f10) {
            if (isLayoutRtl()) {
                RectF rectF = this.mProgressRect;
                float f12 = realScale2 - this.mHeightTopDeformedUpValue;
                float f13 = this.mHeightBottomDeformedDownValue;
                float f14 = seekBarCenterY;
                float f15 = this.mProgressHeight;
                float f16 = this.mWidthDeformedValue;
                rectF.set(f12 + f13, f14 - ((f15 / 2.0f) - f16), (f10 - this.mHeightBottomDeformedUpValue) + f13, f14 + ((f15 / 2.0f) - f16));
            } else {
                RectF rectF2 = this.mProgressRect;
                float f17 = this.mHeightBottomDeformedDownValue;
                float f18 = (realScale2 - f17) + this.mHeightBottomDeformedUpValue;
                float f19 = seekBarCenterY;
                float f20 = this.mProgressHeight;
                float f21 = this.mWidthDeformedValue;
                rectF2.set(f18, f19 - ((f20 / 2.0f) - f21), (f10 + this.mHeightTopDeformedUpValue) - f17, f19 + ((f20 / 2.0f) - f21));
            }
        } else if (isLayoutRtl()) {
            RectF rectF3 = this.mProgressRect;
            float f22 = f10 - this.mHeightTopDeformedUpValue;
            float f23 = this.mHeightBottomDeformedDownValue;
            float f24 = seekBarCenterY;
            float f25 = this.mProgressHeight;
            float f26 = this.mWidthDeformedValue;
            rectF3.set(f22 + f23, f24 - ((f25 / 2.0f) - f26), (realScale2 - this.mHeightBottomDeformedUpValue) + f23, f24 + ((f25 / 2.0f) - f26));
        } else {
            RectF rectF4 = this.mProgressRect;
            float f27 = this.mHeightBottomDeformedDownValue;
            float f28 = (f10 - f27) + this.mHeightBottomDeformedUpValue;
            float f29 = seekBarCenterY;
            float f30 = this.mProgressHeight;
            float f31 = this.mWidthDeformedValue;
            rectF4.set(f28, f29 - ((f30 / 2.0f) - f31), (realScale2 + this.mHeightTopDeformedUpValue) - f27, f29 + ((f30 / 2.0f) - f31));
        }
        RectF rectF5 = this.mProgressRect;
        float f32 = rectF5.left;
        float f33 = this.mProgressHeight;
        rectF5.left = f32 - (f33 / 2.0f);
        rectF5.right += f33 / 2.0f;
        float f34 = this.mHeightTopDeformedUpValue - this.mHeightBottomDeformedDownValue;
        if (isLayoutRtl()) {
            f34 = -f34;
        }
        this.mThumbPosition = f11 + f34;
    }

    public void setProgressRoundCornerWeight(float f10) {
        this.mProgressRoundCornerWeight = f10;
        ensureSize();
        invalidate();
    }

    protected void setReleaseAnimatorValues(ValueAnimator valueAnimator) {
        valueAnimator.setValues(PropertyValuesHolder.ofFloat("backgroundHeight", this.mCurBackgroundHeight, this.mBackgroundHeight));
    }

    public void setSeekBarBackgroundColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mBackgroundColorStateList = colorStateList;
            this.mBackgroundColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_selector));
            invalidate();
        }
    }

    public void setStartFromMiddle(boolean z10) {
        this.mIsStartFromMiddle = z10;
    }

    public void setSupportDeformation(boolean z10) {
        this.mIsSupportDeformation = z10;
    }

    @Deprecated
    public void setText(String str) {
    }

    public void setThumbColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mThumbColorStateList = colorStateList;
            this.mThumbColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_selector));
            invalidate();
        }
    }

    protected void setTouchScale(float f10, boolean z10) {
        if (!this.mIsSupportDeformation) {
            if (!z10) {
                this.mScale = Math.max(0.0f, Math.min(f10, 1.0f));
                return;
            }
            float fMax = Math.max(0.0f, Math.min(f10, 1.0f));
            this.mScale = fMax;
            this.mDrawProgressScale = fMax;
            return;
        }
        if (z10) {
            float fMax2 = Math.max(-1.0f, Math.min(f10, 2.0f));
            this.mScale = fMax2;
            this.mDrawProgressScale = fMax2;
        } else {
            this.mScale = Math.max(-1.0f, Math.min(f10, 2.0f));
        }
        calculateTouchDeformationValue();
        if (this.mOnDeformedListener != null) {
            DeformedValueBean deformedValueBean = new DeformedValueBean(this.mHeightBottomDeformedUpValue, this.mHeightTopDeformedUpValue, this.mWidthDeformedValue, this.mHeightBottomDeformedDownValue, this.mHeightTopDeformedDownValue, this.mProgress);
            deformedValueBean.setScale(this.mScale);
            deformedValueBean.setDrawProgressScale(this.mDrawProgressScale);
            this.mOnDeformedListener.onScaleChanged(deformedValueBean);
        }
    }

    @Deprecated
    public void showText(boolean z10) {
    }

    protected void startDrag() {
        setPressed(true);
        onStartTrackingTouch(true);
        attemptClaimDrag();
    }

    protected void startTransitionAnim(int i10, final boolean z10) {
        COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener = new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.seekbar.COUISeekBar.8
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z11, float f10, float f11) {
                if (COUISeekBar.this.mOnSeekBarChangeListener != null) {
                    OnSeekBarChangeListener onSeekBarChangeListener = COUISeekBar.this.mOnSeekBarChangeListener;
                    COUISeekBar cOUISeekBar = COUISeekBar.this;
                    onSeekBarChangeListener.onProgressChanged(cOUISeekBar, cOUISeekBar.mRealProgress, z10);
                }
                COUISeekBar.this.onStopTrackingTouch(z10);
            }
        };
        float max = (this.mScale * (getMax() - getMin())) + getMin();
        this.mClickAnim.cancel();
        COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener2 = this.mLastEndClickListener;
        if (onAnimationEndListener2 != null) {
            this.mClickAnim.removeEndListener(onAnimationEndListener2);
        }
        this.mClickAnim.addEndListener(onAnimationEndListener);
        this.mClickAnim.setStartValue(max * this.mPixPerProgress);
        onStartTrackingTouch(z10);
        this.mClickAnim.animateToFinalPosition(i10 * this.mPixPerProgress);
        this.mLastEndClickListener = onAnimationEndListener;
    }

    public void stopPhysicsMove() {
        i iVar;
        if (!this.mIsPhysicsEnable || this.mPhysicalAnimator == null || (iVar = this.mFlingBehavior) == null) {
            return;
        }
        iVar.q0();
    }

    protected float subtract(float f10, float f11) {
        return new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Float.toString(f11))).floatValue();
    }

    protected void touchAnim() {
        cancelAnim(this.mTouchEnlargeAnimator);
        this.mTouchEnlargeAnimator.start();
    }

    protected boolean touchInSeekBar(MotionEvent motionEvent, View view) {
        float y10 = motionEvent.getY();
        return this.mTouchDownX >= ((float) view.getPaddingStart()) && this.mTouchDownX <= ((float) (view.getWidth() - view.getPaddingEnd())) && y10 >= 0.0f && y10 <= ((float) view.getHeight());
    }

    public COUISeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiSeekBarStyle);
    }

    protected void checkThumbPosChange(int i10, boolean z10, boolean z11) {
        if (this.mProgress != i10) {
            int i11 = this.mRealProgress;
            setLocalProgress(i10);
            OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onProgressChanged(this, this.mRealProgress, z11);
            }
            if (!z10 || i11 == this.mRealProgress) {
                return;
            }
            performFeedback();
        }
    }

    public void ensureLabelsAdded() {
        setValueForLabel(this.mTextDrawable, Integer.toString(this.mRealProgress));
    }

    void onStartTrackingTouch(boolean z10) {
        OnSeekBarChangeListener onSeekBarChangeListener;
        this.mIsDragging = true;
        this.mStartDragging = true;
        if (!z10 || (onSeekBarChangeListener = this.mOnSeekBarChangeListener) == null) {
            return;
        }
        onSeekBarChangeListener.onStartTrackingTouch(this);
    }

    protected void onStopTrackingTouch(boolean z10) {
        OnSeekBarChangeListener onSeekBarChangeListener;
        this.mIsDragging = false;
        this.mStartDragging = false;
        if (!z10 || (onSeekBarChangeListener = this.mOnSeekBarChangeListener) == null) {
            return;
        }
        onSeekBarChangeListener.onStopTrackingTouch(this);
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i10, boolean z10) {
        setProgress(i10, z10, false);
    }

    public COUISeekBar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.COUISeekBar);
    }

    public void setProgress(int i10, boolean z10, boolean z11) {
        COUISpringAnimation cOUISpringAnimation = this.mFlexibleFollowHandAnim;
        if (cOUISpringAnimation != null) {
            cOUISpringAnimation.cancel();
        }
        this.mOldProgress = this.mProgress;
        int iMax = Math.max(this.mMin, Math.min(i10, this.mMax));
        if (this.mOldProgress != iMax) {
            if (z10) {
                startTransitionAnim(iMax, z11);
            } else {
                setLocalProgress(iMax);
                this.mOldProgress = iMax;
                updateScale();
                OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onProgressChanged(this, getRealProgress(iMax), z11);
                }
                invalidate();
            }
            resetDeformationValue();
        }
    }

    public COUISeekBar(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mSeekBarRoleDescription = getResources().getString(R$string.coui_seek_bar_role_description);
        this.mDrawProgressScale = 0.0f;
        this.mScale = 0.0f;
        this.mEnableVibrator = true;
        this.mEnableAdaptiveVibrator = true;
        this.mHasMotorVibrator = true;
        this.mLinearMotorVibrator = null;
        this.mTouchSlop = 0;
        this.mProgress = 0;
        this.mOldProgress = 0;
        this.mMax = 100;
        this.mMin = 0;
        this.mIsDragging = false;
        this.mProgressColorStateList = null;
        this.mBackgroundColorStateList = null;
        this.mThumbColorStateList = null;
        this.mBackgroundRect = new RectF();
        this.mProgressRect = new RectF();
        this.mShowProgress = false;
        this.mShowThumb = false;
        this.mBackgroundPath = new Path();
        this.mProgressPath = new Path();
        this.mIncrement = 1;
        this.mStartDragging = false;
        this.mMoveType = 1;
        this.mFastMoveSpringConfig = u2.f.b(500.0d, 30.0d);
        this.mIsStartFromMiddle = false;
        this.mDamping = 0.0f;
        this.mIsPhysicsEnable = false;
        this.mFlingVelocity = 0.0f;
        this.mFlingFrequency = 2.8f;
        this.mFlingDampingRatio = 1.0f;
        this.mFlingLinearDamping = 15.0f;
        this.mMaxMovingDistance = 30;
        this.mMaxHeightDeformedValue = 28.5f;
        this.mMaxWidthDeformedValue = 4.7f;
        this.mThumbScaleTransition = new androidx.dynamicanimation.animation.d("thumbScaleTransition") { // from class: com.coui.appcompat.seekbar.COUISeekBar.1
            @Override // androidx.dynamicanimation.animation.d
            public float getValue(COUISeekBar cOUISeekBar) {
                return cOUISeekBar.getCurThumbRadius();
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(COUISeekBar cOUISeekBar, float f10) {
                cOUISeekBar.setCurThumbRadius(f10);
            }
        };
        this.mGlitterEffectTransition = new androidx.dynamicanimation.animation.d("glitterEffectTransition") { // from class: com.coui.appcompat.seekbar.COUISeekBar.2
            @Override // androidx.dynamicanimation.animation.d
            public float getValue(COUISeekBar cOUISeekBar) {
                return cOUISeekBar.getCurGlitterEffectValue();
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(COUISeekBar cOUISeekBar, float f10) {
                cOUISeekBar.setCurGlitterEffectValue(f10);
            }
        };
        this.mClipProgressPath = new Path();
        this.mClipProgressRect = new RectF();
        this.mTouchAnimator = new AnimatorSet();
        this.mProgressScaleInterpolator = e0.a.a(0.33f, 0.0f, 0.67f, 1.0f);
        this.mThumbAnimateInterpolator = e0.a.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.mTempRect = new RectF();
        if (attributeSet != null) {
            this.mRefreshStyle = attributeSet.getStyleAttribute();
        }
        if (this.mRefreshStyle == 0) {
            this.mRefreshStyle = i10;
        }
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUISeekBar, i10, i11);
        this.mEnableVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarEnableVibrator, true);
        this.mEnableAdaptiveVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarAdaptiveVibrator, false);
        this.mIsPhysicsEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarPhysicsEnable, true);
        this.mShowProgress = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarShowProgress, true);
        this.mShowThumb = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarShowThumb, true);
        this.mShowGlitterEffect = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarShowGlitterEffect, true);
        this.mIsStartFromMiddle = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarStartMiddle, false);
        this.mBackgroundColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarBackgroundColor);
        this.mProgressColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarProgressColor);
        this.mThumbColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarThumbColor);
        this.mBackgroundColor = getColor(this, this.mBackgroundColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_selector));
        this.mProgressColor = getColor(this, this.mProgressColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_selector));
        this.mThumbColor = getColor(this, this.mThumbColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_selector));
        this.mThumbShadowColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarThumbShadowColor, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_shadow_color));
        this.mThumbShadowOffsetY = getResources().getDimension(R$dimen.coui_seekbar_shadow_offset_y);
        this.mThumbRadius = getResources().getDimension(R$dimen.coui_seekbar_thumb_radius);
        this.mThumbMaxRadius = getResources().getDimension(R$dimen.coui_seekbar_thumb_max_radius);
        this.mGlitterEffectMinColor = getResources().getColor(R$color.coui_seekbar_glitter_effect_min_color);
        this.mGlitterEffectMaxColor = getResources().getColor(R$color.coui_seekbar_glitter_effect_max_color);
        this.mBackgroundRoundCornerWeight = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarBackgroundRoundCornerWeight, 0.0f);
        this.mProgressRoundCornerWeight = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarProgressRoundCornerWeight, 0.0f);
        this.mThumbShadowRadiusSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarThumbShadowSize, 0);
        this.mBackgroundHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarBackgroundHeight, getResources().getDimension(R$dimen.coui_seekbar_background_height));
        this.mProgressHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarProgressHeight, getResources().getDimension(R$dimen.coui_seekbar_progress_height));
        this.mSeekbarMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarMinHeight, getResources().getDimensionPixelSize(R$dimen.coui_seekbar_view_min_height));
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarMaxWidth, 0);
        this.mBackgroundEnlargeScale = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarBackGroundEnlargeScale, BACKGROUND_RADIUS_SCALE);
        this.mIsSupportDeformation = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarDeformation, true);
        typedArrayObtainStyledAttributes.recycle();
        this.mTextDrawable = new TextDrawable(getContext());
        this.mHasMotorVibrator = VibrateUtils.isLinearMotorVersion(context);
        float f10 = this.mBackgroundHeight * this.mBackgroundEnlargeScale;
        this.mMaxBackgroundHeight = f10;
        this.mPaddingHorizontal = f10 / 2.0f;
        initView();
        ensureSize();
        initAnim();
    }
}
