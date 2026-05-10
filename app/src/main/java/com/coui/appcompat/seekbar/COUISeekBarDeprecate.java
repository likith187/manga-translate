package com.coui.appcompat.seekbar;

import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
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
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.AbsSeekBar;
import androidx.core.view.m0;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
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
import com.oplus.graphics.OplusPath;
import com.oplus.os.LinearmotorVibrator;
import com.support.seekbar.R$attr;
import com.support.seekbar.R$color;
import com.support.seekbar.R$dimen;
import com.support.seekbar.R$style;
import com.support.seekbar.R$styleable;
import d0.h;
import d7.i;
import d7.k;
import d7.l;
import java.math.BigDecimal;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import u2.j;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class COUISeekBarDeprecate extends AbsSeekBar implements d7.a, d7.b {
    private static final float BACKGROUND_RADIUS_SCALE = 6.0f;
    private static final int DAMPING_DISTANCE = 20;
    private static final double DEFORMATION_FORMULA_CONSTANT = -11.5d;
    protected static final int DIRECTION_180 = 180;
    private static final int DIRECTION_360 = 360;
    protected static final int DIRECTION_90 = 90;
    private static final int DURATION_150 = 150;
    private static final int DURATION_483 = 483;
    private static final int FAST_MOVE_VELOCITY = 95;
    private static final float MAX_FAST_MOVE_PERCENT = 0.95f;
    private static final float MAX_MOVE_DAMPING = 0.4f;
    private static final int MAX_VELOCITY = 8000;
    private static final float MIN_FAST_MOVE_PERCENT = 0.05f;
    public static final int MOVE_BY_DEFAULT = 0;
    public static final int MOVE_BY_DISTANCE = 2;
    public static final int MOVE_BY_FINGER = 1;
    private static final int ONE_SECOND_UNITS = 1000;
    private static final int PHYSICAL_VELOCITY_LIMIT = 100;
    private static final float PROGRESS_RADIUS_SCALE = 4.0f;
    protected static final int RELEASE_ANIM_DURATION = 183;
    private static final float SCALE_DEFORMATION_MAX = 2.0f;
    private static final float SCALE_DEFORMATION_MIN = -1.0f;
    private static final int SCALE_DEFORMATION_TIMES = 5;
    private static final float SCALE_MAX = 1.0f;
    private static final float SCALE_MIN = 0.0f;
    private static final String TAG = "COUISeekBarDeprecate";
    private static final float TEXT_SHADOW_DX = 0.0f;
    private static final float TEXT_SHADOW_DY = 8.0f;
    private static final float TEXT_SHADOW_RADIUS = 25.0f;
    private static final int THUMB_SHADOW_OFFSET = 8;
    private static final int TOUCH_ANIMATION_ENLARGE_DURATION = 183;
    private static final int VELOCITY_COMPUTE_TIME = 100;
    protected int mBackgroundColor;
    ColorStateList mBackgroundColorStateList;
    protected float mBackgroundEnlargeScale;
    protected float mBackgroundHeight;
    protected float mBackgroundRadius;
    private RectF mBackgroundRect;
    protected float mBackgroundRoundCornerWeight;
    protected AnimatorSet mClickAnimatorSet;
    protected Path mClipProgressPath;
    protected RectF mClipProgressRect;
    protected float mCurBackgroundHeight;
    protected float mCurBackgroundRadius;
    private float mCurBottomDeformationValue;
    protected float mCurPaddingHorizontal;
    protected float mCurProgressHeight;
    protected float mCurProgressRadius;
    private float mCurTopDeformationValue;
    private float mCustomProgressAnimDuration;
    private Interpolator mCustomProgressAnimInterpolator;
    private float mDamping;
    protected boolean mEnableAdaptiveVibrator;
    protected boolean mEnableVibrator;
    private PatternExploreByTouchHelper mExploreByTouchHelper;
    private float mFastMoveScaleOffsetX;
    private u2.e mFastMoveSpring;
    private u2.f mFastMoveSpringConfig;
    private i mFlingBehavior;
    private float mFlingDampingRatio;
    private float mFlingFrequency;
    private float mFlingLinearDamping;
    private k mFlingValueHolder;
    private float mFlingVelocity;
    private Paint.FontMetricsInt mFmi;
    protected boolean mHasMotorVibrator;
    private float mHeightBottomDeformedDownValue;
    private float mHeightBottomDeformedUpValue;
    private float mHeightTopDeformedDownValue;
    private float mHeightTopDeformedUpValue;
    protected float mHorizontalPaddingScale;
    private int mIncrement;
    private int mInnerShadowRadiusSize;
    private Interpolator mInterpolator;
    protected boolean mIsDragging;
    private boolean mIsPhysicsEnable;
    private boolean mIsProgressFull;
    private boolean mIsStartFromMiddle;
    private boolean mIsSupportDeformation;
    private boolean mIsSupportSmoothRoundCorner;
    protected float mLabelX;
    protected float mLastX;
    protected Object mLinearMotorVibrator;
    protected int mMax;
    private float mMaxHeightDeformedValue;
    private int mMaxMovingDistance;
    private int mMaxWidth;
    private float mMaxWidthDeformedValue;
    protected int mMin;
    private int mMoveType;
    protected int mOldProgress;
    private OnDeformedListener mOnDeformedListener;
    private OnSeekBarChangeListener mOnSeekBarChangeListener;
    protected float mPaddingHorizontal;
    protected Paint mPaint;
    private l mPhysicalAnimator;
    protected int mProgress;
    protected int mProgressColor;
    ColorStateList mProgressColorStateList;
    private String mProgressContentDescription;
    protected float mProgressEnlargeScale;
    protected float mProgressHeight;
    protected float mProgressRadius;
    protected RectF mProgressRect;
    protected float mProgressRoundCornerWeight;
    protected Interpolator mProgressScaleInterpolator;
    protected float mProgressScaleRadius;
    private int mRealProgress;
    private int mRefreshStyle;
    protected float mScale;
    private int mSeekbarMinHeight;
    private int mShadowColor;
    private int mShadowRadiusSize;
    protected boolean mShowProgress;
    private boolean mShowText;
    protected boolean mShowThumb;
    private boolean mStartDragging;
    protected RectF mTempRect;
    private int mTextColor;
    private String mTextContent;
    private TextDrawable mTextDrawable;
    private float mTextMarginTop;
    private TextPaint mTextPaint;
    protected Interpolator mThumbAnimateInterpolator;
    private Bitmap mThumbBitmap;
    protected int mThumbColor;
    ColorStateList mThumbColorStateList;
    protected float mThumbOutHeight;
    protected float mThumbOutRadius;
    protected float mThumbOutRoundCornerWeight;
    protected int mThumbShadowColor;
    private int mThumbShadowRadiusSize;
    protected AnimatorSet mTouchAnimator;
    protected float mTouchDownX;
    protected int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private ExecutorService mVibratorExecutor;
    private float mWidthDeformedValue;
    protected static final Interpolator THUMB_ANIMATE_INTERPOLATOR = new COUIMoveEaseInterpolator();
    protected static final Interpolator PROGRESS_SCALE_INTERPOLATOR = new COUIEaseInterpolator();

    public interface OnDeformedListener {
        default void onHeightDeformedChanged(float f10, float f11) {
        }

        default void onScaleChanged(DeformedValueBean deformedValueBean) {
        }
    }

    public interface OnSeekBarChangeListener {
        void onProgressChanged(COUISeekBarDeprecate cOUISeekBarDeprecate, int i10, boolean z10);

        void onStartTrackingTouch(COUISeekBarDeprecate cOUISeekBarDeprecate);

        void onStopTrackingTouch(COUISeekBarDeprecate cOUISeekBarDeprecate);
    }

    private final class PatternExploreByTouchHelper extends androidx.customview.widget.a {
        private Rect mTempRect;

        public PatternExploreByTouchHelper(View view) {
            super(view);
            this.mTempRect = new Rect();
        }

        private Rect getBoundsForVirtualView(int i10) {
            Rect rect = this.mTempRect;
            rect.left = 0;
            rect.top = 0;
            rect.right = COUISeekBarDeprecate.this.getWidth();
            rect.bottom = COUISeekBarDeprecate.this.getHeight();
            return rect;
        }

        @Override // androidx.customview.widget.a
        protected int getVirtualViewAt(float f10, float f11) {
            return (f10 < 0.0f || f10 > ((float) COUISeekBarDeprecate.this.getWidth()) || f11 < 0.0f || f11 > ((float) COUISeekBarDeprecate.this.getHeight())) ? -1 : 0;
        }

        @Override // androidx.customview.widget.a
        protected void getVisibleVirtualViews(List<Integer> list) {
            list.add(0);
        }

        @Override // androidx.customview.widget.a, androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.b(h.a.L);
            hVar.z0(h.g.a(1, COUISeekBarDeprecate.this.getMin(), COUISeekBarDeprecate.this.getMax(), COUISeekBarDeprecate.this.mProgress));
            if (COUISeekBarDeprecate.this.isEnabled()) {
                int progress = COUISeekBarDeprecate.this.getProgress();
                if (progress > COUISeekBarDeprecate.this.getMin()) {
                    hVar.a(ConfigPackage.FRAME_SIZE_6);
                }
                if (progress < COUISeekBarDeprecate.this.getMax()) {
                    hVar.a(ConfigPackage.FRAME_SIZE_5);
                }
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            sendEventForVirtualView(i10, 4);
            return false;
        }

        @Override // androidx.core.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateEventForVirtualView(int i10, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.getText().add(PatternExploreByTouchHelper.class.getSimpleName());
            accessibilityEvent.setItemCount(COUISeekBarDeprecate.this.getMax() - COUISeekBarDeprecate.this.getMin());
            accessibilityEvent.setCurrentItemIndex(COUISeekBarDeprecate.this.getProgress());
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForVirtualView(int i10, h hVar) {
            hVar.l0("");
            hVar.h0(COUISeekBarDeprecate.class.getName());
            hVar.c0(getBoundsForVirtualView(i10));
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            if (!COUISeekBarDeprecate.this.isEnabled()) {
                return false;
            }
            if (i10 == 4096) {
                COUISeekBarDeprecate cOUISeekBarDeprecate = COUISeekBarDeprecate.this;
                cOUISeekBarDeprecate.setProgress(cOUISeekBarDeprecate.getProgress() + COUISeekBarDeprecate.this.mIncrement, false, true);
                COUISeekBarDeprecate cOUISeekBarDeprecate2 = COUISeekBarDeprecate.this;
                cOUISeekBarDeprecate2.announceForAccessibility(cOUISeekBarDeprecate2.mProgressContentDescription);
                return true;
            }
            if (i10 != 8192) {
                return false;
            }
            COUISeekBarDeprecate cOUISeekBarDeprecate3 = COUISeekBarDeprecate.this;
            cOUISeekBarDeprecate3.setProgress(cOUISeekBarDeprecate3.getProgress() - COUISeekBarDeprecate.this.mIncrement, false, true);
            COUISeekBarDeprecate cOUISeekBarDeprecate4 = COUISeekBarDeprecate.this;
            cOUISeekBarDeprecate4.announceForAccessibility(cOUISeekBarDeprecate4.mProgressContentDescription);
            return true;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.SavedState.1
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

    public COUISeekBarDeprecate(Context context) {
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

    private float calculateDamping(float f10) {
        float f11 = this.mDamping;
        if (f11 != 0.0f) {
            return f11;
        }
        float seekBarWidth = getSeekBarWidth();
        float f12 = seekBarWidth / 2.0f;
        float interpolation = 1.0f - this.mInterpolator.getInterpolation(Math.abs(f10 - f12) / f12);
        return (f10 > seekBarWidth - ((float) getPaddingRight()) || f10 < ((float) getPaddingLeft()) || interpolation < MAX_MOVE_DAMPING) ? MAX_MOVE_DAMPING : interpolation;
    }

    private void calculateFlingDeformationValue(float f10) {
        if (f10 > 1.0f) {
            double d10 = f10 - 1.0f;
            this.mHeightBottomDeformedUpValue = computeValue(d10, this.mMaxMovingDistance);
            this.mHeightTopDeformedUpValue = computeValue(d10, this.mMaxMovingDistance + this.mMaxHeightDeformedValue);
            this.mWidthDeformedValue = computeValue(d10, this.mMaxWidthDeformedValue);
            heightDeformedChanged();
            return;
        }
        if (f10 >= 0.0f) {
            resetDeformationValue();
            return;
        }
        double dAbs = Math.abs(f10);
        this.mHeightTopDeformedDownValue = computeValue(dAbs, this.mMaxMovingDistance);
        this.mHeightBottomDeformedDownValue = computeValue(dAbs, this.mMaxMovingDistance + this.mMaxHeightDeformedValue);
        this.mWidthDeformedValue = computeValue(dAbs, this.mMaxWidthDeformedValue);
        heightDeformedChanged();
    }

    private void calculateTouchDeformationValue() {
        float f10 = this.mScale;
        if (f10 > 1.0f) {
            double d10 = (f10 - 1.0f) / 5.0f;
            this.mHeightBottomDeformedUpValue = computeValue(d10, this.mMaxMovingDistance);
            this.mHeightTopDeformedUpValue = computeValue(d10, this.mMaxMovingDistance + this.mMaxHeightDeformedValue);
            this.mWidthDeformedValue = computeValue(d10, this.mMaxWidthDeformedValue);
            heightDeformedChanged();
            return;
        }
        if (f10 < 0.0f) {
            double dAbs = Math.abs(f10) / 5.0f;
            this.mHeightTopDeformedDownValue = computeValue(dAbs, this.mMaxMovingDistance);
            this.mHeightBottomDeformedDownValue = computeValue(dAbs, this.mMaxMovingDistance + this.mMaxHeightDeformedValue);
            this.mWidthDeformedValue = computeValue(dAbs, this.mMaxWidthDeformedValue);
            heightDeformedChanged();
        }
    }

    private void clearDeformationValue() {
        int i10 = this.mProgress;
        if (i10 <= this.mMin || i10 >= this.mMax) {
            return;
        }
        resetDeformationValue();
    }

    private float computeValue(double d10, float f10) {
        return (float) (((double) f10) * (1.0d - Math.exp(d10 * DEFORMATION_FORMULA_CONSTANT)));
    }

    private void drawProgress(Canvas canvas, int i10, float f10, float f11) {
        boolean z10 = this.mIsSupportSmoothRoundCorner && this.mProgressRoundCornerWeight != 0.0f;
        if (this.mInnerShadowRadiusSize > 0 && this.mCurProgressRadius > this.mProgressRadius) {
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(0.0f);
            this.mPaint.setColor(0);
            this.mPaint.setShadowLayer(this.mInnerShadowRadiusSize, 0.0f, 0.0f, this.mShadowColor);
            RectF rectF = this.mProgressRect;
            int i11 = this.mInnerShadowRadiusSize;
            float f12 = this.mCurProgressRadius;
            float f13 = i10;
            float f14 = this.mCurProgressHeight;
            rectF.set((f10 - (i11 / 2)) - f12, (f13 - (f14 / 2.0f)) - (i11 / 2), (i11 / 2) + f11 + f12, f13 + (f14 / 2.0f) + (i11 / 2));
            if (z10) {
                OplusCanvas oplusCanvas = new OplusCanvas(canvas);
                RectF rectF2 = this.mProgressRect;
                float f15 = this.mCurProgressRadius;
                oplusCanvas.drawSmoothRoundRect(rectF2, f15, f15, this.mPaint, this.mProgressRoundCornerWeight);
            } else {
                RectF rectF3 = this.mProgressRect;
                float f16 = this.mCurProgressRadius;
                canvas.drawRoundRect(rectF3, f16, f16, this.mPaint);
            }
            this.mPaint.clearShadowLayer();
            this.mPaint.setStyle(Paint.Style.FILL);
        }
        this.mPaint.setColor(this.mProgressColor);
        if (this.mIsStartFromMiddle && f10 > f11) {
            RectF rectF4 = this.mProgressRect;
            float f17 = i10;
            float f18 = this.mCurProgressHeight;
            rectF4.set(f11, f17 - (f18 / 2.0f), f10, f17 + (f18 / 2.0f));
        } else if (isLayoutRtl()) {
            RectF rectF5 = this.mProgressRect;
            float f19 = f10 - this.mHeightTopDeformedUpValue;
            float f20 = this.mHeightBottomDeformedDownValue;
            float f21 = i10;
            float f22 = this.mCurProgressHeight;
            float f23 = this.mWidthDeformedValue;
            rectF5.set(f19 + f20, f21 - ((f22 / 2.0f) - f23), (f11 - this.mHeightBottomDeformedUpValue) + f20, f21 + ((f22 / 2.0f) - f23));
        } else {
            RectF rectF6 = this.mProgressRect;
            float f24 = this.mHeightBottomDeformedDownValue;
            float f25 = (f10 - f24) + this.mHeightBottomDeformedUpValue;
            float f26 = i10;
            float f27 = this.mCurProgressHeight;
            float f28 = this.mWidthDeformedValue;
            rectF6.set(f25, f26 - ((f27 / 2.0f) - f28), (f11 + this.mHeightTopDeformedUpValue) - f24, f26 + ((f27 / 2.0f) - f28));
        }
        this.mClipProgressPath.reset();
        if (z10) {
            OplusPath oplusPath = new OplusPath(this.mClipProgressPath);
            RectF rectF7 = this.mClipProgressRect;
            float f29 = this.mCurProgressRadius;
            oplusPath.addSmoothRoundRect(rectF7, f29, f29, this.mProgressRoundCornerWeight, Path.Direction.CCW);
        } else {
            Path path = this.mClipProgressPath;
            RectF rectF8 = this.mClipProgressRect;
            float f30 = this.mCurProgressRadius;
            path.addRoundRect(rectF8, f30, f30, Path.Direction.CCW);
        }
        canvas.save();
        canvas.clipPath(this.mClipProgressPath);
        if (this.mShowThumb) {
            RectF rectF9 = this.mProgressRect;
            float f31 = rectF9.left;
            float f32 = this.mThumbOutHeight;
            rectF9.left = f31 - (f32 / 2.0f);
            rectF9.right += f32 / 2.0f;
            if (z10) {
                OplusCanvas oplusCanvas2 = new OplusCanvas(canvas);
                RectF rectF10 = this.mProgressRect;
                float f33 = this.mCurProgressRadius;
                oplusCanvas2.drawSmoothRoundRect(rectF10, f33, f33, this.mPaint, this.mProgressRoundCornerWeight);
            } else {
                float f34 = this.mCurProgressRadius;
                canvas.drawRoundRect(rectF9, f34, f34, this.mPaint);
            }
        } else {
            canvas.drawRect(this.mProgressRect, this.mPaint);
        }
        canvas.restore();
    }

    private void drawText(Canvas canvas, int i10) {
        if (TextUtils.isEmpty(this.mTextContent)) {
            return;
        }
        this.mTextPaint.setColor(this.mTextColor);
        canvas.save();
        float fMeasureText = this.mTextPaint.measureText(this.mTextContent);
        Paint.FontMetricsInt fontMetricsInt = this.mFmi;
        float f10 = fontMetricsInt.descent - fontMetricsInt.ascent;
        int i11 = fontMetricsInt.bottom;
        int i12 = fontMetricsInt.top;
        float f11 = (((i10 * 2) - (i11 - i12)) / 2) - i12;
        canvas.translate(isLayoutRtl() ? (((((getStart() + this.mCurPaddingHorizontal) - this.mCurBackgroundRadius) + this.mTextMarginTop) - ((fMeasureText / 2.0f) - (f10 / 2.0f))) - this.mHeightTopDeformedUpValue) + this.mHeightTopDeformedDownValue : (((((((getWidth() - getEnd()) - this.mCurPaddingHorizontal) + this.mCurBackgroundRadius) - this.mTextMarginTop) - (f10 / 2.0f)) - (fMeasureText / 2.0f)) + this.mHeightTopDeformedUpValue) - this.mHeightTopDeformedDownValue, 0.0f);
        canvas.rotate(-getRotation(), fMeasureText / 2.0f, i10);
        canvas.drawText(this.mTextContent, 0.0f, f11, this.mTextPaint);
        canvas.restore();
    }

    private void drawThumb(Canvas canvas, int i10, float f10, float f11) {
        Bitmap bitmap;
        if (this.mThumbShadowRadiusSize > 0 && this.mCurProgressRadius < this.mThumbOutRadius) {
            this.mPaint.setStyle(Paint.Style.FILL);
            this.mPaint.setShadowLayer(this.mThumbShadowRadiusSize, 0.0f, TEXT_SHADOW_DY, this.mShadowColor);
        }
        if (getThumb() == null || (bitmap = this.mThumbBitmap) == null) {
            this.mPaint.setColor(this.mThumbColor);
            if (!this.mIsSupportSmoothRoundCorner || this.mThumbOutRoundCornerWeight == 0.0f) {
                float f12 = i10;
                float f13 = this.mThumbOutHeight;
                float f14 = this.mThumbOutRadius;
                canvas.drawRoundRect(f10, f12 - (f13 / 2.0f), f11, f12 + (f13 / 2.0f), f14, f14, this.mPaint);
            } else {
                OplusCanvas oplusCanvas = new OplusCanvas(canvas);
                float f15 = i10;
                float f16 = this.mThumbOutHeight;
                float f17 = this.mThumbOutRadius;
                oplusCanvas.drawSmoothRoundRect(f10, f15 - (f16 / 2.0f), f11, f15 + (f16 / 2.0f), f17, f17, this.mPaint, this.mThumbOutRoundCornerWeight);
            }
        } else {
            canvas.drawBitmap(bitmap, f10, i10 - (this.mThumbOutHeight / 2.0f), this.mPaint);
        }
        this.mPaint.clearShadowLayer();
    }

    private Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int iMax = Math.max(1, drawable.getIntrinsicHeight());
        int iMax2 = Math.max(1, drawable.getIntrinsicWidth());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax2, iMax, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, iMax2, iMax);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void ensureSize() {
        resetProgressSize();
        this.mHorizontalPaddingScale = this.mBackgroundEnlargeScale != 1.0f ? (getResources().getDimensionPixelSize(R$dimen.coui_seekbar_progress_pressed_padding_horizontal) + (this.mBackgroundRadius * this.mBackgroundEnlargeScale)) / this.mPaddingHorizontal : 1.0f;
        float f10 = this.mProgressRadius;
        this.mCurProgressRadius = f10;
        this.mCurBackgroundRadius = this.mBackgroundRadius;
        float f11 = this.mProgressEnlargeScale;
        this.mThumbOutRadius = f10 * f11;
        this.mThumbOutRoundCornerWeight = this.mProgressRoundCornerWeight;
        float f12 = this.mProgressHeight;
        this.mCurProgressHeight = f12;
        this.mCurBackgroundHeight = this.mBackgroundHeight;
        this.mThumbOutHeight = f12 * f11;
        this.mCurPaddingHorizontal = this.mPaddingHorizontal;
        COUILog.i(TAG, "COUISeekBarDeprecate ensureSize : mIsProgressFull:" + this.mIsProgressFull + ",mBackgroundRadius:" + this.mBackgroundRadius + ",mBackgroundHeight:" + this.mBackgroundHeight + ",mBackgroundEnlargeScale" + this.mBackgroundEnlargeScale + ",mProgressRadius:" + this.mProgressRadius + ",mProgressHeight:" + this.mProgressHeight + ",mProgressEnlargeScale" + this.mProgressEnlargeScale + ",mPaddingHorizontal" + this.mPaddingHorizontal);
        updateBehavior();
    }

    private void flingBehaviorAfterDeformationDrag() {
        if (this.mFlingValueHolder == null || this.mFlingBehavior == null || !this.mIsSupportDeformation) {
            return;
        }
        float f10 = this.mScale;
        if (f10 > 1.0f || f10 < 0.0f) {
            int normalSeekBarWidth = getNormalSeekBarWidth();
            int i10 = this.mMax - this.mMin;
            float f11 = i10 > 0 ? normalSeekBarWidth / i10 : 0.0f;
            if (isLayoutRtl()) {
                this.mFlingValueHolder.c((this.mMax - (getDeformationFlingScale() * i10)) * f11);
            } else {
                this.mFlingValueHolder.c(getDeformationFlingScale() * i10 * f11);
            }
            this.mFlingBehavior.n0();
        }
    }

    private void flingBehaviorAfterEndDrag(float f10) {
        int normalSeekBarWidth = getNormalSeekBarWidth();
        int i10 = this.mMax - this.mMin;
        float f11 = i10 > 0 ? normalSeekBarWidth / i10 : 0.0f;
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

    private float getDeformationFlingScale() {
        float f10 = this.mScale;
        return f10 > 1.0f ? ((f10 - 1.0f) / 5.0f) + 1.0f : f10 < 0.0f ? f10 / 5.0f : f10;
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

    private int getNormalSeekBarWidth() {
        return (int) (((getWidth() - getStart()) - getEnd()) - (this.mPaddingHorizontal * 2.0f));
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

    private void heightDeformedChanged() {
        if (this.mOnDeformedListener != null) {
            boolean z10 = topDeformedChange();
            boolean zBottomDeformedChange = bottomDeformedChange();
            if (z10 || zBottomDeformedChange) {
                this.mOnDeformedListener.onHeightDeformedChanged(this.mCurTopDeformationValue, this.mCurBottomDeformationValue);
            }
        }
    }

    private void initAnimation() {
        this.mTouchAnimator.setInterpolator(PROGRESS_SCALE_INTERPOLATOR);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(183L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUISeekBarDeprecate.this.onEnlargeAnimationUpdate(valueAnimator);
                COUISeekBarDeprecate.this.invalidate();
            }
        });
        this.mTouchAnimator.play(valueAnimatorOfFloat);
    }

    private void initFastMoveAnimation() {
        if (this.mFastMoveSpring != null) {
            return;
        }
        u2.e eVarC = j.g().c();
        this.mFastMoveSpring = eVarC;
        eVarC.o(this.mFastMoveSpringConfig);
        this.mFastMoveSpring.a(new u2.h() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.2
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
                if (COUISeekBarDeprecate.this.mFastMoveScaleOffsetX != eVar.e()) {
                    if (COUISeekBarDeprecate.this.isEnabled()) {
                        COUISeekBarDeprecate.this.mFastMoveScaleOffsetX = (float) eVar.c();
                    } else {
                        COUISeekBarDeprecate.this.mFastMoveScaleOffsetX = 0.0f;
                    }
                    COUISeekBarDeprecate.this.invalidate();
                }
            }
        });
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
        int normalSeekBarWidth = getNormalSeekBarWidth();
        COUILog.i(TAG, "COUISeekBarDeprecate initPhysicsAnimator : setActiveFrame:" + normalSeekBarWidth);
        i iVar = (i) ((i) new i(4, 0.0f, (float) normalSeekBarWidth).K(this.mFlingValueHolder)).B(this.mFlingFrequency, this.mFlingDampingRatio).c(null);
        this.mFlingBehavior = iVar;
        iVar.m0(this.mFlingLinearDamping);
        this.mPhysicalAnimator.d(this.mFlingBehavior);
        this.mPhysicalAnimator.a(this.mFlingBehavior, this);
        this.mPhysicalAnimator.c(this.mFlingBehavior, this);
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void initView() {
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        PatternExploreByTouchHelper patternExploreByTouchHelper = new PatternExploreByTouchHelper(this);
        this.mExploreByTouchHelper = patternExploreByTouchHelper;
        m0.j0(this, patternExploreByTouchHelper);
        m0.t0(this, 1);
        this.mExploreByTouchHelper.invalidateRoot();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setDither(true);
        TextPaint textPaint = new TextPaint(1);
        this.mTextPaint = textPaint;
        textPaint.setAntiAlias(true);
        this.mTextPaint.setTextSize(getResources().getDimensionPixelSize(R$dimen.coui_seekbar_text_size));
        this.mTextPaint.setShadowLayer(TEXT_SHADOW_RADIUS, 0.0f, TEXT_SHADOW_DY, this.mTextColor);
        this.mTextPaint.setTypeface(Typeface.DEFAULT_BOLD);
        this.mFmi = this.mTextPaint.getFontMetricsInt();
        setThumbBitmap();
    }

    private void invalidateProgress(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float seekBarWidth = getSeekBarWidth();
        float f10 = this.mCurProgressRadius;
        float f11 = seekBarWidth + (2.0f * f10);
        float f12 = this.mCurPaddingHorizontal - f10;
        this.mScale = Math.max(0.0f, Math.min(isLayoutRtl() ? (((getWidth() - x10) - getStart()) - f12) / f11 : ((x10 - getStart()) - f12) / f11, 1.0f));
        int progressLimit = getProgressLimit(Math.round((this.mScale * (getMax() - getMin())) + getMin()));
        int i10 = this.mProgress;
        int i11 = this.mRealProgress;
        setLocalProgress(progressLimit);
        invalidate();
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

    private boolean isToucheInSeekBar(MotionEvent motionEvent) {
        if (this.mIsSupportDeformation) {
            float f10 = this.mScale;
            if (f10 > 1.0f || f10 < 0.0f) {
                return touchInSeekBarWhenDeformation(motionEvent, this);
            }
        }
        return touchInSeekBar(motionEvent, this);
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void resetDeformationValue() {
        if (this.mIsSupportDeformation) {
            this.mHeightTopDeformedUpValue = 0.0f;
            this.mHeightBottomDeformedUpValue = 0.0f;
            this.mWidthDeformedValue = 0.0f;
            this.mHeightTopDeformedDownValue = 0.0f;
            this.mHeightBottomDeformedDownValue = 0.0f;
            heightDeformedChanged();
        }
    }

    private void resetProgressSize() {
        if (this.mIsProgressFull) {
            this.mProgressRadius = this.mBackgroundRadius;
            this.mProgressRoundCornerWeight = this.mBackgroundRoundCornerWeight;
            this.mProgressHeight = this.mBackgroundHeight;
            this.mProgressEnlargeScale = this.mBackgroundEnlargeScale;
        }
    }

    private void setDeformationScale(float f10) {
        if (f10 > 1.0f) {
            f10 = ((f10 - 1.0f) * 5.0f) + 1.0f;
        } else if (f10 < 0.0f) {
            f10 *= 5.0f;
        }
        this.mScale = Math.max(-1.0f, Math.min(f10, 2.0f));
    }

    private void setFlingScale(float f10) {
        if (!this.mIsSupportDeformation) {
            this.mScale = Math.max(0.0f, Math.min(f10, 1.0f));
            return;
        }
        calculateFlingDeformationValue(f10);
        setDeformationScale(f10);
        if (this.mOnDeformedListener != null) {
            DeformedValueBean deformedValueBean = new DeformedValueBean(this.mHeightBottomDeformedUpValue, this.mHeightTopDeformedUpValue, this.mWidthDeformedValue, this.mHeightBottomDeformedDownValue, this.mHeightTopDeformedDownValue, this.mProgress);
            deformedValueBean.setScale(this.mScale);
            this.mOnDeformedListener.onScaleChanged(deformedValueBean);
        }
    }

    private void setThumbBitmap() {
        if (getThumb() != null) {
            this.mThumbBitmap = drawableToBitmap(getThumb());
        }
    }

    private void setTouchScale(float f10) {
        if (!this.mIsSupportDeformation) {
            this.mScale = Math.max(0.0f, Math.min(f10, 1.0f));
            return;
        }
        this.mScale = Math.max(-1.0f, Math.min(f10, 2.0f));
        calculateTouchDeformationValue();
        if (this.mOnDeformedListener != null) {
            DeformedValueBean deformedValueBean = new DeformedValueBean(this.mHeightBottomDeformedUpValue, this.mHeightTopDeformedUpValue, this.mWidthDeformedValue, this.mHeightBottomDeformedDownValue, this.mHeightTopDeformedDownValue, this.mProgress);
            deformedValueBean.setScale(this.mScale);
            this.mOnDeformedListener.onScaleChanged(deformedValueBean);
        }
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

    private boolean touchInSeekBarWhenDeformation(MotionEvent motionEvent, View view) {
        float y10 = motionEvent.getY();
        return y10 >= 0.0f && y10 <= ((float) view.getHeight());
    }

    private void trackTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float f10 = x10 - this.mLastX;
        int i10 = this.mMax - this.mMin;
        if (isLayoutRtl()) {
            f10 = -f10;
        }
        float f11 = i10;
        setTouchScale((this.mProgress / f11) + ((f10 * calculateDamping(x10)) / getSeekBarWidth()));
        int progressLimit = getProgressLimit(Math.round((this.mScale * f11) + getMin()));
        int i11 = this.mProgress;
        int i12 = this.mRealProgress;
        setLocalProgress(progressLimit);
        invalidate();
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
        int start;
        float f10;
        int iRound = Math.round(((motionEvent.getX() - this.mLastX) * calculateDamping(motionEvent.getX())) + this.mLastX);
        int width = getWidth();
        int width2 = (getWidth() - getStart()) - getEnd();
        if (isLayoutRtl()) {
            if (iRound <= width - getStart()) {
                if (iRound >= getEnd()) {
                    start = (width - iRound) - getEnd();
                    f10 = start / width2;
                }
                f10 = 1.0f;
            }
            f10 = 0.0f;
        } else {
            if (iRound >= getStart()) {
                if (iRound <= width - getEnd()) {
                    start = iRound - getStart();
                    f10 = start / width2;
                }
                f10 = 1.0f;
            }
            f10 = 0.0f;
        }
        this.mScale = Math.max(0.0f, Math.min(f10, 1.0f));
        int progressLimit = getProgressLimit(Math.round((this.mScale * (getMax() - getMin())) + getMin()));
        int i10 = this.mProgress;
        int i11 = this.mRealProgress;
        setLocalProgress(progressLimit);
        invalidate();
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
        int normalSeekBarWidth = getNormalSeekBarWidth();
        COUILog.i(TAG, "COUISeekBarDeprecate updateBehavior : setActiveFrame:" + normalSeekBarWidth);
        this.mFlingBehavior.k0(0.0f, (float) normalSeekBarWidth);
    }

    private void updateScale() {
        int i10 = this.mMax - this.mMin;
        this.mScale = i10 > 0 ? (this.mProgress - r1) / i10 : 0.0f;
    }

    protected void animForClick(float f10) {
        float seekBarWidth = getSeekBarWidth();
        float f11 = this.mCurProgressRadius;
        float f12 = seekBarWidth + (2.0f * f11);
        float f13 = this.mCurPaddingHorizontal - f11;
        startTransitionAnim(getProgressLimit(Math.round(((isLayoutRtl() ? (((getWidth() - f10) - getStart()) - f13) / f12 : ((f10 - getStart()) - f13) / f12) * (getMax() - getMin())) + getMin())), true);
    }

    protected void checkThumbPosChange(int i10) {
        checkThumbPosChange(i10, true, true);
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    protected void drawActiveTrack(Canvas canvas, float f10) {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float width;
        float realScale;
        int seekBarCenterY = getSeekBarCenterY();
        if (this.mShowThumb) {
            float f16 = this.mCurPaddingHorizontal;
            float f17 = this.mThumbOutHeight;
            float f18 = this.mThumbOutRadius;
            f11 = ((f17 / 2.0f) - f18) + f16;
            float f19 = f10 - (f17 - (f18 * 2.0f));
            float f20 = this.mCurProgressRadius;
            float f21 = f16 - f20;
            f12 = f10 + (f20 * 2.0f);
            f13 = f19;
            f14 = f21;
        } else {
            float f22 = this.mCurPaddingHorizontal;
            float f23 = this.mCurProgressRadius;
            f13 = f10 + (f23 * 2.0f);
            f14 = f22 - f23;
            f11 = f14;
            f12 = f13;
        }
        RectF rectF = this.mClipProgressRect;
        float f24 = seekBarCenterY;
        float f25 = this.mCurProgressHeight;
        float f26 = this.mWidthDeformedValue;
        rectF.top = (f24 - (f25 / 2.0f)) + f26;
        rectF.bottom = (f24 + (f25 / 2.0f)) - f26;
        if (this.mIsStartFromMiddle) {
            if (isLayoutRtl()) {
                width = getWidth() / 2.0f;
                realScale = width - ((getRealScale(this.mScale) - 0.5f) * f13);
                RectF rectF2 = this.mClipProgressRect;
                float f27 = f12 / 2.0f;
                rectF2.left = width - f27;
                rectF2.right = f27 + width;
                f15 = realScale;
            } else {
                float width2 = getWidth() / 2.0f;
                float realScale2 = width2 + ((getRealScale(this.mScale) - 0.5f) * f13);
                RectF rectF3 = this.mClipProgressRect;
                float f28 = f12 / 2.0f;
                rectF3.left = width2 - f28;
                rectF3.right = f28 + width2;
                f15 = realScale2;
                realScale = width2;
                width = f15;
            }
        } else if (isLayoutRtl()) {
            float start = getStart() + f11 + f13;
            realScale = start - (getRealScale(this.mScale) * f13);
            RectF rectF4 = this.mClipProgressRect;
            float start2 = getStart() + f14 + f12;
            float f29 = this.mHeightBottomDeformedUpValue;
            rectF4.right = (start2 - f29) + this.mHeightBottomDeformedDownValue;
            RectF rectF5 = this.mClipProgressRect;
            rectF5.left = (rectF5.right - f12) - (this.mHeightTopDeformedUpValue - f29);
            f15 = realScale;
            width = start;
        } else {
            float start3 = f11 + getStart();
            float realScale3 = start3 + (getRealScale(this.mScale) * f13);
            RectF rectF6 = this.mClipProgressRect;
            float start4 = getStart() + f14;
            float f30 = this.mHeightBottomDeformedDownValue;
            float f31 = this.mHeightBottomDeformedUpValue;
            rectF6.left = (start4 - f30) + f31;
            RectF rectF7 = this.mClipProgressRect;
            rectF7.right = ((((rectF7.left + f12) + this.mHeightTopDeformedUpValue) - f31) + f30) - this.mHeightTopDeformedDownValue;
            f15 = realScale3;
            width = f15;
            realScale = start3;
        }
        if (this.mShowProgress) {
            drawProgress(canvas, seekBarCenterY, realScale, width);
        }
        float f32 = this.mThumbOutHeight;
        float f33 = f15 - (f32 / 2.0f);
        float f34 = f15 + (f32 / 2.0f);
        this.mLabelX = ((f34 - f33) / 2.0f) + f33;
        if (this.mShowThumb) {
            drawThumb(canvas, seekBarCenterY, f33, f34);
        }
        if (this.mShowText) {
            drawText(canvas, seekBarCenterY);
        }
    }

    protected void drawInactiveTrack(Canvas canvas) {
        float start = (getStart() + this.mCurPaddingHorizontal) - this.mCurBackgroundRadius;
        float width = ((getWidth() - getEnd()) - this.mCurPaddingHorizontal) + this.mCurBackgroundRadius;
        int seekBarCenterY = getSeekBarCenterY();
        boolean z10 = this.mIsSupportSmoothRoundCorner && this.mBackgroundRoundCornerWeight != 0.0f;
        if (this.mShadowRadiusSize > 0) {
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(0.0f);
            this.mPaint.setColor(0);
            this.mPaint.setShadowLayer(this.mShadowRadiusSize, 0.0f, 0.0f, this.mShadowColor);
            RectF rectF = this.mBackgroundRect;
            int i10 = this.mShadowRadiusSize;
            float f10 = seekBarCenterY;
            float f11 = this.mCurBackgroundHeight;
            rectF.set(start - (i10 / 2), (f10 - (f11 / 2.0f)) - (i10 / 2), (i10 / 2) + width, f10 + (f11 / 2.0f) + (i10 / 2));
            if (z10) {
                OplusCanvas oplusCanvas = new OplusCanvas(canvas);
                RectF rectF2 = this.mBackgroundRect;
                float f12 = this.mCurBackgroundRadius;
                oplusCanvas.drawSmoothRoundRect(rectF2, f12, f12, this.mPaint, this.mBackgroundRoundCornerWeight);
            } else {
                RectF rectF3 = this.mBackgroundRect;
                float f13 = this.mCurBackgroundRadius;
                canvas.drawRoundRect(rectF3, f13, f13, this.mPaint);
            }
            this.mPaint.clearShadowLayer();
            this.mPaint.setStyle(Paint.Style.FILL);
        }
        this.mPaint.setColor(this.mBackgroundColor);
        if (isLayoutRtl()) {
            RectF rectF4 = this.mBackgroundRect;
            float f14 = (start - this.mHeightTopDeformedUpValue) + this.mHeightTopDeformedDownValue;
            float f15 = seekBarCenterY;
            float f16 = this.mCurBackgroundHeight;
            float f17 = this.mWidthDeformedValue;
            rectF4.set(f14, f15 - ((f16 / 2.0f) - f17), (width - this.mHeightBottomDeformedUpValue) + this.mHeightBottomDeformedDownValue, f15 + ((f16 / 2.0f) - f17));
        } else {
            RectF rectF5 = this.mBackgroundRect;
            float f18 = (start - this.mHeightBottomDeformedDownValue) + this.mHeightBottomDeformedUpValue;
            float f19 = seekBarCenterY;
            float f20 = this.mCurBackgroundHeight;
            float f21 = this.mWidthDeformedValue;
            rectF5.set(f18, f19 - ((f20 / 2.0f) - f21), (width + this.mHeightTopDeformedUpValue) - this.mHeightTopDeformedDownValue, f19 + ((f20 / 2.0f) - f21));
        }
        if (!z10) {
            RectF rectF6 = this.mBackgroundRect;
            float f22 = this.mCurBackgroundRadius;
            canvas.drawRoundRect(rectF6, f22, f22, this.mPaint);
        } else {
            OplusCanvas oplusCanvas2 = new OplusCanvas(canvas);
            RectF rectF7 = this.mBackgroundRect;
            float f23 = this.mCurBackgroundRadius;
            oplusCanvas2.drawSmoothRoundRect(rectF7, f23, f23, this.mPaint, this.mBackgroundRoundCornerWeight);
        }
    }

    public void ensureLabelsAdded(String str) {
        setValueForLabel(this.mTextDrawable, str);
    }

    @SuppressLint({"RestrictedApi"})
    public void ensureLabelsRemoved() {
        ViewUtil.getContentViewOverlay(this).remove(this.mTextDrawable);
    }

    protected final int getColor(View view, ColorStateList colorStateList, int i10) {
        return colorStateList == null ? i10 : colorStateList.getColorForState(view.getDrawableState(), i10);
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

    @Override // android.widget.ProgressBar
    public int getProgress() {
        return this.mRealProgress;
    }

    protected int getSeekBarCenterY() {
        return getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) >> 1);
    }

    protected int getSeekBarWidth() {
        return (int) (((getWidth() - getStart()) - getEnd()) - (this.mCurPaddingHorizontal * 2.0f));
    }

    protected int getStart() {
        return getPaddingStart();
    }

    protected void handleMotionEventDown(MotionEvent motionEvent) {
        this.mTouchDownX = motionEvent.getX();
        this.mLastX = motionEvent.getX();
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
                stopDeformationFling();
                startDrag();
                touchAnim();
                this.mLastX = x10;
                if (isMoveFollowHand()) {
                    invalidateProgress(motionEvent);
                }
            }
        }
    }

    protected void handleMotionEventUp(MotionEvent motionEvent) {
        OnSeekBarChangeListener onSeekBarChangeListener;
        getFastMoveSpring().n(0.0d);
        if (!this.mIsDragging) {
            if (isEnabled() && touchInSeekBar(motionEvent, this) && isMoveFollowHand()) {
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
        Object objO = dVar.o();
        if (objO == null) {
            return;
        }
        float fFloatValue = ((Float) objO).floatValue();
        int normalSeekBarWidth = getNormalSeekBarWidth();
        if (isLayoutRtl()) {
            float f11 = normalSeekBarWidth;
            f10 = (f11 - fFloatValue) / f11;
        } else {
            f10 = fFloatValue / normalSeekBarWidth;
        }
        setFlingScale(f10);
        float f12 = this.mProgress;
        setLocalProgress(getProgressLimit(Math.round((this.mMax - this.mMin) * this.mScale) + this.mMin));
        invalidate();
        if (f12 != this.mProgress) {
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

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopPhysicsMove();
        VibrateUtils.unRegisterHapticObserver();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        float seekBarWidth = getSeekBarWidth();
        drawInactiveTrack(canvas);
        drawActiveTrack(canvas, seekBarWidth);
    }

    protected void onEnlargeAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f10 = this.mBackgroundRadius;
        float f11 = this.mBackgroundEnlargeScale;
        this.mCurBackgroundRadius = f10 + (((f10 * f11) - f10) * animatedFraction);
        float f12 = this.mProgressRadius;
        float f13 = this.mProgressEnlargeScale;
        this.mCurProgressRadius = f12 + (((f12 * f13) - f12) * animatedFraction);
        float f14 = this.mBackgroundHeight;
        this.mCurBackgroundHeight = f14 + (((f11 * f14) - f14) * animatedFraction);
        float f15 = this.mProgressHeight;
        this.mCurProgressHeight = f15 + (((f13 * f15) - f15) * animatedFraction);
        float f16 = this.mPaddingHorizontal;
        this.mCurPaddingHorizontal = f16 + (animatedFraction * ((this.mHorizontalPaddingScale * f16) - f16));
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
        this.mStartDragging = false;
        stopPhysicsMove();
        updateBehavior();
    }

    void onStartTrackingTouch() {
        onStartTrackingTouch(true);
    }

    void onStopTrackingTouch() {
        onStopTrackingTouch(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
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
            if (r0 == 0) goto L6b
            if (r0 == r3) goto L39
            r2 = 2
            if (r0 == r2) goto L2a
            if (r0 == r1) goto L39
            goto L9e
        L2a:
            r4.clearDeformationValue()
            r4.initVelocityTrackerIfNotExists()
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            r0.addMovement(r5)
            r4.handleMotionEventMove(r5)
            goto L9e
        L39:
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            if (r0 == 0) goto L64
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
            java.lang.String r1 = "COUISeekBarDeprecate"
            com.coui.appcompat.log.COUILog.i(r1, r0)
        L64:
            r4.recycleVelocityTracker()
            r4.handleMotionEventUp(r5)
            goto L9e
        L6b:
            android.animation.AnimatorSet r0 = r4.mClickAnimatorSet
            if (r0 == 0) goto L77
            r0.removeAllListeners()
            android.animation.AnimatorSet r0 = r4.mClickAnimatorSet
            r0.cancel()
        L77:
            boolean r0 = r4.isDeformationFling()
            if (r0 != 0) goto L80
            r4.stopPhysicsMove()
        L80:
            boolean r0 = r4.mIsPhysicsEnable
            if (r0 == 0) goto L8f
            d7.l r0 = r4.mPhysicalAnimator
            if (r0 != 0) goto L8f
            android.content.Context r0 = r4.getContext()
            r4.initPhysicsAnimator(r0)
        L8f:
            r4.initOrResetVelocityTracker()
            android.view.VelocityTracker r0 = r4.mVelocityTracker
            r0.addMovement(r5)
            r4.mIsDragging = r2
            r4.mStartDragging = r2
            r4.handleMotionEventDown(r5)
        L9e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.seekbar.COUISeekBarDeprecate.onTouchEvent(android.view.MotionEvent):boolean");
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
            this.mVibratorExecutor.execute(new Runnable() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.7
                @Override // java.lang.Runnable
                public void run() {
                    COUISeekBarDeprecate cOUISeekBarDeprecate = COUISeekBarDeprecate.this;
                    if (cOUISeekBarDeprecate.mIsDragging) {
                        LinearmotorVibrator linearmotorVibrator2 = (LinearmotorVibrator) cOUISeekBarDeprecate.mLinearMotorVibrator;
                        int i12 = cOUISeekBarDeprecate.mProgress;
                        int i13 = cOUISeekBarDeprecate.mMin;
                        VibrateUtils.setLinearMotorVibratorStrength(linearmotorVibrator2, VibrateUtils.TYPE_STEPABLE_REGULATE, i12 - i13, cOUISeekBarDeprecate.mMax - i13, 200, VibrateUtils.STRENGTH_MAX_STEP);
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
            this.mVibratorExecutor.execute(new Runnable() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.6
                @Override // java.lang.Runnable
                public void run() {
                    COUISeekBarDeprecate cOUISeekBarDeprecate = COUISeekBarDeprecate.this;
                    if (cOUISeekBarDeprecate.mIsDragging) {
                        cOUISeekBarDeprecate.performHapticFeedback(COUIHapticFeedbackConstants.STEPPING_SHORT_VIBRATE, 0);
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
            this.mProgressColor = getColor(this, typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarProgressColor), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
            this.mBackgroundColor = getColor(this, typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarBackgroundColor), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_color_normal));
            this.mThumbShadowColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarThumbShadowColor, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_shadow_color));
            this.mTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarTextColor, getResources().getColor(R$color.coui_seekbar_text_color));
            invalidate();
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    protected void releaseAnim() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setValues(PropertyValuesHolder.ofFloat("progressRadius", this.mCurProgressRadius, this.mProgressRadius), PropertyValuesHolder.ofFloat("backgroundRadius", this.mCurBackgroundRadius, this.mBackgroundRadius), PropertyValuesHolder.ofFloat("progressHeight", this.mCurProgressHeight, this.mProgressHeight), PropertyValuesHolder.ofFloat("backgroundHeight", this.mCurBackgroundHeight, this.mBackgroundHeight), PropertyValuesHolder.ofFloat("animatePadding", this.mCurPaddingHorizontal, this.mPaddingHorizontal));
        valueAnimator.setDuration(183L);
        valueAnimator.setInterpolator(PROGRESS_SCALE_INTERPOLATOR);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISeekBarDeprecate.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                COUISeekBarDeprecate.this.mCurProgressRadius = ((Float) valueAnimator2.getAnimatedValue("progressRadius")).floatValue();
                COUISeekBarDeprecate.this.mCurBackgroundRadius = ((Float) valueAnimator2.getAnimatedValue("backgroundRadius")).floatValue();
                COUISeekBarDeprecate.this.mCurProgressHeight = ((Float) valueAnimator2.getAnimatedValue("progressHeight")).floatValue();
                COUISeekBarDeprecate.this.mCurBackgroundHeight = ((Float) valueAnimator2.getAnimatedValue("backgroundHeight")).floatValue();
                COUISeekBarDeprecate.this.mCurPaddingHorizontal = ((Float) valueAnimator2.getAnimatedValue("animatePadding")).floatValue();
                COUISeekBarDeprecate.this.invalidate();
            }
        });
        this.mTouchAnimator.cancel();
        valueAnimator.start();
    }

    public void setBackgroundEnlargeScale(float f10) {
        this.mBackgroundEnlargeScale = f10;
        ensureSize();
        invalidate();
    }

    public void setBackgroundHeight(float f10) {
        this.mBackgroundHeight = f10;
        ensureSize();
        invalidate();
    }

    public void setBackgroundRadius(float f10) {
        this.mBackgroundRadius = f10;
        ensureSize();
        invalidate();
    }

    public void setBackgroundRoundCornerWeight(float f10) {
        this.mBackgroundRoundCornerWeight = f10;
        invalidate();
    }

    public void setCustomProgressAnimDuration(float f10) {
        if (f10 <= 0.0f) {
            return;
        }
        this.mCustomProgressAnimDuration = f10;
    }

    public void setCustomProgressAnimInterpolator(Interpolator interpolator) {
        this.mCustomProgressAnimInterpolator = interpolator;
    }

    public void setDeformedListener(OnDeformedListener onDeformedListener) {
        this.mOnDeformedListener = onDeformedListener;
    }

    public void setDeformedParams(DeformedValueBean deformedValueBean) {
        this.mScale = deformedValueBean.getScale();
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
        this.mProgressColor = getColor(this, this.mProgressColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
        this.mBackgroundColor = getColor(this, this.mBackgroundColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_color_normal));
        this.mThumbColor = getColor(this, this.mThumbColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
        if (z10) {
            this.mThumbShadowRadiusSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_seekbar_thumb_shadow_size);
        } else {
            this.mThumbShadowRadiusSize = 0;
        }
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
    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    protected void setLocalMax(int i10) {
        this.mMax = i10;
        updateScale();
        super.setMax(i10);
    }

    protected void setLocalMin(int i10) {
        this.mMin = i10;
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

    public void setPaddingHorizontal(float f10) {
        this.mPaddingHorizontal = f10;
        ensureSize();
        invalidate();
    }

    public void setPhysicalEnabled(boolean z10) {
        if (z10 == this.mIsPhysicsEnable) {
            return;
        }
        if (z10) {
            this.mIsPhysicsEnable = z10;
            updateBehavior();
        } else {
            stopPhysicsMove();
            this.mIsPhysicsEnable = z10;
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i10) {
        setProgress(i10, false);
    }

    public void setProgressColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mProgressColorStateList = colorStateList;
            this.mProgressColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
            invalidate();
        }
    }

    public void setProgressContentDescription(String str) {
        this.mProgressContentDescription = str;
    }

    public void setProgressEnlargeScale(float f10) {
        this.mProgressEnlargeScale = f10;
        ensureSize();
        invalidate();
    }

    public void setProgressFull() {
        this.mIsProgressFull = true;
        ensureSize();
    }

    public void setProgressHeight(float f10) {
        this.mProgressHeight = f10;
        ensureSize();
        invalidate();
    }

    public void setProgressRadius(float f10) {
        this.mProgressRadius = f10;
        ensureSize();
        invalidate();
    }

    public void setProgressRoundCornerWeight(float f10) {
        this.mProgressRoundCornerWeight = f10;
        ensureSize();
        invalidate();
    }

    public void setSeekBarBackgroundColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mBackgroundColorStateList = colorStateList;
            this.mBackgroundColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_color_normal));
            invalidate();
        }
    }

    public void setStartFromMiddle(boolean z10) {
        this.mIsStartFromMiddle = z10;
    }

    public void setSupportDeformation(boolean z10) {
        this.mIsSupportDeformation = z10;
    }

    public void setText(String str) {
        this.mTextContent = str;
        invalidate();
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        super.setThumb(drawable);
        setThumbBitmap();
    }

    public void setThumbColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mThumbColorStateList = colorStateList;
            this.mThumbColor = getColor(this, colorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
            invalidate();
        }
    }

    public void showText(boolean z10) {
        this.mShowText = z10;
        invalidate();
    }

    protected void startDrag() {
        setPressed(true);
        onStartTrackingTouch(true);
        attemptClaimDrag();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void startTransitionAnim(int r10, final boolean r11) {
        /*
            r9 = this;
            android.animation.AnimatorSet r0 = r9.mClickAnimatorSet
            if (r0 != 0) goto Lc
            android.animation.AnimatorSet r0 = new android.animation.AnimatorSet
            r0.<init>()
            r9.mClickAnimatorSet = r0
            goto L14
        Lc:
            r0.removeAllListeners()
            android.animation.AnimatorSet r0 = r9.mClickAnimatorSet
            r0.cancel()
        L14:
            android.animation.AnimatorSet r0 = r9.mClickAnimatorSet
            com.coui.appcompat.seekbar.COUISeekBarDeprecate$3 r1 = new com.coui.appcompat.seekbar.COUISeekBarDeprecate$3
            r1.<init>()
            r0.addListener(r1)
            int r0 = r9.mProgress
            int r1 = r9.getSeekBarWidth()
            int r2 = r9.mMax
            int r3 = r9.mMin
            int r2 = r2 - r3
            r3 = 0
            if (r2 <= 0) goto L30
            float r4 = (float) r1
            float r5 = (float) r2
            float r4 = r4 / r5
            goto L31
        L30:
            r4 = r3
        L31:
            int r5 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r5 <= 0) goto L94
            float r5 = (float) r0
            float r5 = r5 * r4
            float r6 = (float) r10
            float r6 = r6 * r4
            r7 = 2
            float[] r7 = new float[r7]
            r8 = 0
            r7[r8] = r5
            r5 = 1
            r7[r5] = r6
            android.animation.ValueAnimator r5 = android.animation.ValueAnimator.ofFloat(r7)
            if (r11 != 0) goto L50
            android.view.animation.Interpolator r6 = r9.mCustomProgressAnimInterpolator
            if (r6 == 0) goto L50
            r5.setInterpolator(r6)
            goto L55
        L50:
            android.view.animation.Interpolator r6 = com.coui.appcompat.seekbar.COUISeekBarDeprecate.THUMB_ANIMATE_INTERPOLATOR
            r5.setInterpolator(r6)
        L55:
            com.coui.appcompat.seekbar.COUISeekBarDeprecate$4 r6 = new com.coui.appcompat.seekbar.COUISeekBarDeprecate$4
            r6.<init>()
            r5.addUpdateListener(r6)
            if (r11 != 0) goto L6e
            float r11 = r9.mCustomProgressAnimDuration
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r1 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r1 == 0) goto L6e
            android.animation.AnimatorSet r10 = r9.mClickAnimatorSet
            long r0 = (long) r11
            r10.setDuration(r0)
            goto L8a
        L6e:
            if (r2 <= 0) goto L79
            int r10 = r10 - r0
            int r10 = java.lang.Math.abs(r10)
            float r10 = (float) r10
            float r11 = (float) r2
            float r3 = r10 / r11
        L79:
            r10 = 1139900416(0x43f18000, float:483.0)
            float r3 = r3 * r10
            long r10 = (long) r3
            r0 = 150(0x96, double:7.4E-322)
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 >= 0) goto L85
            r10 = r0
        L85:
            android.animation.AnimatorSet r0 = r9.mClickAnimatorSet
            r0.setDuration(r10)
        L8a:
            android.animation.AnimatorSet r10 = r9.mClickAnimatorSet
            r10.play(r5)
            android.animation.AnimatorSet r9 = r9.mClickAnimatorSet
            r9.start()
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.seekbar.COUISeekBarDeprecate.startTransitionAnim(int, boolean):void");
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
        if (this.mTouchAnimator.isRunning()) {
            this.mTouchAnimator.cancel();
        }
        this.mTouchAnimator.start();
    }

    protected boolean touchInSeekBar(MotionEvent motionEvent, View view) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        return x10 >= ((float) view.getPaddingLeft()) && x10 <= ((float) (view.getWidth() - view.getPaddingRight())) && y10 >= 0.0f && y10 <= ((float) view.getHeight());
    }

    public COUISeekBarDeprecate(Context context, AttributeSet attributeSet) {
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
        setValueForLabel(this.mTextDrawable, Integer.toString(this.mProgress));
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

    public COUISeekBarDeprecate(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, COUIContextUtil.isCOUIDarkTheme(context) ? R$style.COUISeekBar_Dark : R$style.COUISeekBar);
    }

    public void setProgress(int i10, boolean z10, boolean z11) {
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

    public COUISeekBarDeprecate(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
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
        this.mIsProgressFull = false;
        this.mIsSupportSmoothRoundCorner = false;
        this.mCustomProgressAnimDuration = -1.0f;
        this.mCustomProgressAnimInterpolator = null;
        this.mClipProgressPath = new Path();
        this.mClipProgressRect = new RectF();
        this.mProgressRect = new RectF();
        this.mTempRect = new RectF();
        this.mTouchAnimator = new AnimatorSet();
        this.mProgressScaleInterpolator = e0.a.a(0.33f, 0.0f, 0.67f, 1.0f);
        this.mThumbAnimateInterpolator = e0.a.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.mShowProgress = false;
        this.mShowThumb = false;
        this.mIncrement = 1;
        this.mStartDragging = false;
        this.mBackgroundRect = new RectF();
        this.mMoveType = 1;
        this.mFastMoveSpringConfig = u2.f.b(500.0d, 30.0d);
        this.mIsStartFromMiddle = false;
        this.mDamping = 0.0f;
        this.mInterpolator = e0.a.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.mIsPhysicsEnable = false;
        this.mFlingVelocity = 0.0f;
        this.mFlingFrequency = 2.8f;
        this.mFlingDampingRatio = 1.0f;
        this.mFlingLinearDamping = 15.0f;
        this.mMaxMovingDistance = 30;
        this.mMaxHeightDeformedValue = 28.5f;
        this.mMaxWidthDeformedValue = 4.7f;
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
        this.mIsStartFromMiddle = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarStartMiddle, false);
        this.mIsProgressFull = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarProgressFull, false);
        this.mBackgroundColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarBackgroundColor);
        this.mProgressColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarProgressColor);
        this.mThumbColorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUISeekBar_couiSeekBarThumbColor);
        this.mBackgroundColor = getColor(this, this.mBackgroundColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_background_color_normal));
        this.mProgressColor = getColor(this, this.mProgressColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
        this.mThumbColor = getColor(this, this.mThumbColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_progress_color_normal));
        this.mShadowColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarShadowColor, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_shadow_color));
        this.mThumbShadowColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarThumbShadowColor, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_thumb_shadow_color));
        this.mBackgroundRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarBackgroundRadius, getResources().getDimension(R$dimen.coui_seekbar_background_radius));
        this.mProgressRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarProgressRadius, getResources().getDimension(R$dimen.coui_seekbar_progress_radius));
        this.mBackgroundRoundCornerWeight = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarBackgroundRoundCornerWeight, 0.0f);
        this.mProgressRoundCornerWeight = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarProgressRoundCornerWeight, 0.0f);
        this.mShadowRadiusSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarShadowSize, 0);
        this.mThumbShadowRadiusSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarThumbShadowSize, 0);
        this.mInnerShadowRadiusSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarInnerShadowSize, 0);
        this.mPaddingHorizontal = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarProgressPaddingHorizontal, getResources().getDimension(R$dimen.coui_seekbar_progress_padding_horizontal));
        this.mBackgroundHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarBackgroundHeight, (int) (this.mBackgroundRadius * 2.0f));
        this.mProgressHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarProgressHeight, (int) (this.mProgressRadius * 2.0f));
        this.mSeekbarMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUISeekBar_couiSeekBarMinHeight, getResources().getDimensionPixelSize(R$dimen.coui_seekbar_view_min_height));
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUISeekBar_couiSeekBarMaxWidth, 0);
        this.mBackgroundEnlargeScale = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarBackGroundEnlargeScale, BACKGROUND_RADIUS_SCALE);
        this.mProgressEnlargeScale = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUISeekBar_couiSeekBarProgressEnlargeScale, PROGRESS_RADIUS_SCALE);
        this.mShowText = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarShowText, false);
        this.mTextContent = typedArrayObtainStyledAttributes.getString(R$styleable.COUISeekBar_couiSeekBarText);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUISeekBar_couiSeekBarTextColor, getResources().getColor(R$color.coui_seekbar_text_color));
        this.mTextMarginTop = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUISeekBar_couiSeekBarTextMarginTop, getResources().getDimension(R$dimen.coui_seekbar_text_margin_top));
        this.mIsSupportDeformation = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUISeekBar_couiSeekBarDeformation, false);
        typedArrayObtainStyledAttributes.recycle();
        this.mTextDrawable = new TextDrawable(getContext());
        this.mHasMotorVibrator = VibrateUtils.isLinearMotorVersion(context);
        this.mIsSupportSmoothRoundCorner = RoundCornerUtil.isVersionSupport();
        initView();
        ensureSize();
        initAnimation();
    }
}
