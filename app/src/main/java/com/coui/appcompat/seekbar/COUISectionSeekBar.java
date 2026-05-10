package com.coui.appcompat.seekbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.statelistutil.COUIStateListUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.oplus.graphics.OplusCanvas;
import com.oplus.graphics.OplusPathAdapter;
import com.oplus.os.LinearmotorVibrator;
import com.support.seekbar.R$attr;
import com.support.seekbar.R$color;
import com.support.seekbar.R$dimen;
import com.support.seekbar.R$style;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
public class COUISectionSeekBar extends COUISeekBar {
    private static final float DEFORMATION_RELEASE_SPRING_RESPONSE = 0.35f;
    private static final int DEFORMATION_SCALE_FACTOR = 1000;
    private static final float INTERPOLATOR_CONTROL_X1 = 0.0f;
    private static final float INTERPOLATOR_CONTROL_X2 = 0.25f;
    private static final float INTERPOLATOR_CONTROL_Y1 = 0.0f;
    private static final float INTERPOLATOR_CONTROL_Y2 = 1.0f;
    private static final long MOVE_ANIMATOR_DURATION = 100;
    private static final float MOVE_RATIO = 0.4f;
    private int mActionMoveDirection;
    private int mActiveMarkColor;
    private ColorStateList mActiveMarkColorStateList;
    private float mCurrentOffset;
    private COUISpringAnimation mDeformedReleaseAnim;
    private androidx.dynamicanimation.animation.d mDeformedReleaseTransition;
    private int mInactiveMarkColor;
    private ColorStateList mInactiveMarkColorStateList;
    private boolean mIsFastMoving;
    private float mMarkRadius;
    private float mMoveAnimationEndThumbX;
    private float mMoveAnimationStartThumbX;
    private float mMoveAnimationValue;
    private ValueAnimator mMoveAnimator;
    private boolean mOnStopTrackingMask;
    private final PorterDuffXfermode mPorterDuffXfermode;
    private float mThumbX;
    private int mTouchDownPos;
    private float mTouchDownThumbX;

    /* JADX INFO: renamed from: com.coui.appcompat.seekbar.COUISectionSeekBar$1 */
    class AnonymousClass1 extends androidx.dynamicanimation.animation.d {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(COUISectionSeekBar cOUISectionSeekBar) {
            return cOUISectionSeekBar.getScale();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(COUISectionSeekBar cOUISectionSeekBar, float f10) {
            cOUISectionSeekBar.setScale(f10);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.seekbar.COUISectionSeekBar$2 */
    class AnonymousClass2 implements COUIDynamicAnimation.OnAnimationEndListener {
        AnonymousClass2() {
        }

        @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
        public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
            COUISectionSeekBar.this.onStopTrackingTouch(true);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.seekbar.COUISectionSeekBar$3 */
    class AnonymousClass3 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass3() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            COUISectionSeekBar.this.mMoveAnimationValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            COUISectionSeekBar cOUISectionSeekBar = COUISectionSeekBar.this;
            cOUISectionSeekBar.mThumbX = cOUISectionSeekBar.mMoveAnimationStartThumbX + (COUISectionSeekBar.this.mMoveAnimationValue * COUISectionSeekBar.MOVE_RATIO) + (COUISectionSeekBar.this.mCurrentOffset * 0.6f);
            COUISectionSeekBar.this.invalidate();
            COUISectionSeekBar.this.calculateCurIndex();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.seekbar.COUISectionSeekBar$4 */
    class AnonymousClass4 implements Animator.AnimatorListener {
        AnonymousClass4() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (COUISectionSeekBar.this.mOnStopTrackingMask) {
                COUISectionSeekBar.this.onStopTrackingTouch(true);
                COUISectionSeekBar.this.mOnStopTrackingMask = false;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (COUISectionSeekBar.this.mOnStopTrackingMask) {
                COUISectionSeekBar.this.onStopTrackingTouch(true);
                COUISectionSeekBar.this.mOnStopTrackingMask = false;
            }
            if (COUISectionSeekBar.this.mIsFastMoving) {
                COUISectionSeekBar.this.mIsFastMoving = false;
                COUISectionSeekBar cOUISectionSeekBar = COUISectionSeekBar.this;
                cOUISectionSeekBar.invalidateProgress(cOUISectionSeekBar.mLastX, true);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public COUISectionSeekBar(Context context) {
        this(context, null);
    }

    public void calculateCurIndex() {
        int iCeil = this.mProgress;
        float f10 = this.mMoveAnimationEndThumbX;
        float f11 = this.mMoveAnimationStartThumbX;
        boolean z10 = true;
        if (f10 - f11 > 0.0f) {
            iCeil = Math.round(this.mThumbX / (this.mIsDragging ? getMoveSectionWidth() : getSectionWidth()));
        } else if (f10 - f11 < 0.0f) {
            iCeil = (int) Math.ceil(((int) this.mThumbX) / (this.mIsDragging ? getMoveSectionWidth() : getSectionWidth()));
        } else {
            z10 = false;
        }
        if (isLayoutRtl() && z10) {
            iCeil = this.mMax - iCeil;
        }
        checkThumbPosChange(iCeil);
    }

    private void calculateThumbPositionByIndex() {
        int seekBarWidth = getSeekBarWidth();
        this.mThumbX = ((this.mProgress * seekBarWidth) * 1.0f) / this.mMax;
        if (isLayoutRtl()) {
            this.mThumbX = seekBarWidth - this.mThumbX;
        }
    }

    private void clearDeformationValue(MotionEvent motionEvent) {
        float x10 = (motionEvent.getX() - getStart()) - this.mPaddingHorizontal;
        if (x10 <= 0.0f || x10 >= getSeekBarWidth()) {
            return;
        }
        resetDeformationValue();
    }

    private void drawMark(Canvas canvas, int i10, float f10) {
        float width = (getWidth() - getEnd()) - this.mPaddingHorizontal;
        float f11 = this.mThumbPosition;
        float f12 = this.mCurThumbRadius;
        float f13 = f11 - f12;
        float f14 = f11 + f12;
        int iSaveLayer = canvas.saveLayer(null, null, 31);
        this.mPaint.setXfermode(this.mPorterDuffXfermode);
        int i11 = (!this.mShowProgress || isLayoutRtl()) ? this.mInactiveMarkColor : this.mActiveMarkColor;
        this.mPaint.setColor(i11);
        float start = getStart() + this.mPaddingHorizontal;
        float f15 = width - start;
        int i12 = 0;
        boolean z10 = false;
        while (true) {
            int i13 = this.mMax;
            if (i12 > i13) {
                this.mPaint.setXfermode(null);
                canvas.restoreToCount(iSaveLayer);
                return;
            }
            if (this.mShowProgress && !z10 && ((i12 * f15) / i13) + start > getStart() + this.mPaddingHorizontal + this.mThumbX) {
                this.mPaint.setColor(isLayoutRtl() ? this.mActiveMarkColor : this.mInactiveMarkColor);
                z10 = true;
            }
            float f16 = ((i12 * f15) / this.mMax) + start + (isLayoutRtl() ? -f10 : f10);
            float f17 = this.mMarkRadius;
            float f18 = f16 + f17;
            if (f13 > f16 - f17 || f14 < f18) {
                canvas.drawCircle(f16, i10, f17, this.mPaint);
            }
            i12++;
        }
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

    private void drawThumb(Canvas canvas, int i10) {
        if (this.mShowThumb) {
            if (this.mThumbShadowRadiusSize > 0 && isEnabled()) {
                this.mPaint.setStyle(Paint.Style.FILL);
                this.mPaint.setShadowLayer(this.mThumbShadowRadiusSize, 0.0f, this.mThumbShadowOffsetY, this.mThumbShadowColor);
            }
            this.mPaint.setColor(this.mThumbColor);
            canvas.drawCircle(this.mThumbPosition, i10, this.mCurThumbRadius, this.mPaint);
            if (this.mThumbShadowRadiusSize <= 0 || !isEnabled()) {
                return;
            }
            this.mPaint.clearShadowLayer();
        }
    }

    private float getMoveSectionWidth() {
        return getSeekBarMoveWidth() / this.mMax;
    }

    private float getMoveThumbXByIndex(int i10) {
        float f10 = (i10 * r0) / this.mMax;
        float seekBarMoveWidth = getSeekBarMoveWidth();
        float fMax = Math.max(0.0f, Math.min(f10, seekBarMoveWidth));
        return isLayoutRtl() ? seekBarMoveWidth - fMax : fMax;
    }

    public float getScale() {
        return this.mScale * 1000.0f;
    }

    private float getSectionWidth() {
        return getSeekBarNormalWidth() / this.mMax;
    }

    private int getSeekBarMoveWidth() {
        return (int) (((getWidth() - getStart()) - getEnd()) - (this.mPaddingHorizontal * 2.0f));
    }

    private int getSeekBarNormalWidth() {
        return (int) (((getWidth() - getStart()) - getEnd()) - (this.mPaddingHorizontal * 2.0f));
    }

    private int getThumbPosByX(float f10) {
        int seekBarWidth = getSeekBarWidth();
        if (isLayoutRtl()) {
            f10 = seekBarWidth - f10;
        }
        return Math.max(0, Math.min(Math.round((f10 * this.mMax) / seekBarWidth), this.mMax));
    }

    private float getThumbXByIndex(int i10) {
        float f10 = (i10 * r0) / this.mMax;
        float seekBarNormalWidth = getSeekBarNormalWidth();
        float fMax = Math.max(0.0f, Math.min(f10, seekBarNormalWidth));
        return isLayoutRtl() ? seekBarNormalWidth - fMax : fMax;
    }

    private float getTouchXOfDrawArea(MotionEvent motionEvent) {
        return Math.min(Math.max(0.0f, (motionEvent.getX() - getStart()) - this.mPaddingHorizontal), getSeekBarWidth());
    }

    private void initDeformedReleaseAnim() {
        if (this.mDeformedReleaseAnim != null) {
            return;
        }
        this.mDeformedReleaseAnim = new COUISpringAnimation(this, this.mDeformedReleaseTransition);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        cOUISpringForce.setResponse(DEFORMATION_RELEASE_SPRING_RESPONSE);
        this.mDeformedReleaseAnim.setSpring(cOUISpringForce);
    }

    public void invalidateProgress(float f10, boolean z10) {
        float thumbXByIndex = getThumbXByIndex(this.mProgress);
        float fSubtract = subtract(f10, thumbXByIndex);
        float sectionWidth = getSectionWidth();
        int iRound = this.mIsDragging ? (int) (fSubtract / sectionWidth) : Math.round(fSubtract / sectionWidth);
        ValueAnimator valueAnimator = this.mMoveAnimator;
        if (valueAnimator != null && valueAnimator.isRunning() && Float.compare(this.mMoveAnimationEndThumbX, (iRound * sectionWidth) + thumbXByIndex) == 0) {
            return;
        }
        float f11 = iRound * sectionWidth;
        this.mCurrentOffset = f11;
        float f12 = this.mThumbX - thumbXByIndex;
        this.mOnStopTrackingMask = true;
        startMoveAnimation(thumbXByIndex, f11 + thumbXByIndex, f12, z10);
    }

    public void setScale(float f10) {
        this.mScale = f10 / 1000.0f;
        calculateTouchDeformationValue();
    }

    private void startMoveAnimation(float f10, float f11, float f12, boolean z10) {
        ValueAnimator valueAnimator;
        if (Float.compare(this.mThumbX, f11) == 0 || ((valueAnimator = this.mMoveAnimator) != null && valueAnimator.isRunning() && Float.compare(this.mMoveAnimationEndThumbX, f11) == 0)) {
            if (this.mOnStopTrackingMask) {
                onStopTrackingTouch(true);
                this.mOnStopTrackingMask = false;
                return;
            }
            return;
        }
        this.mMoveAnimationEndThumbX = f11;
        this.mMoveAnimationStartThumbX = f10;
        if (!z10) {
            this.mThumbX = (f11 + f10) - f10;
            calculateCurIndex();
            this.mOnStopTrackingMask = false;
            return;
        }
        if (this.mMoveAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.mMoveAnimator = valueAnimator2;
            valueAnimator2.setInterpolator(e0.a.a(0.0f, 0.0f, INTERPOLATOR_CONTROL_X2, 1.0f));
            this.mMoveAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.seekbar.COUISectionSeekBar.3
                AnonymousClass3() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    COUISectionSeekBar.this.mMoveAnimationValue = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    COUISectionSeekBar cOUISectionSeekBar = COUISectionSeekBar.this;
                    cOUISectionSeekBar.mThumbX = cOUISectionSeekBar.mMoveAnimationStartThumbX + (COUISectionSeekBar.this.mMoveAnimationValue * COUISectionSeekBar.MOVE_RATIO) + (COUISectionSeekBar.this.mCurrentOffset * 0.6f);
                    COUISectionSeekBar.this.invalidate();
                    COUISectionSeekBar.this.calculateCurIndex();
                }
            });
            this.mMoveAnimator.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.seekbar.COUISectionSeekBar.4
                AnonymousClass4() {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (COUISectionSeekBar.this.mOnStopTrackingMask) {
                        COUISectionSeekBar.this.onStopTrackingTouch(true);
                        COUISectionSeekBar.this.mOnStopTrackingMask = false;
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (COUISectionSeekBar.this.mOnStopTrackingMask) {
                        COUISectionSeekBar.this.onStopTrackingTouch(true);
                        COUISectionSeekBar.this.mOnStopTrackingMask = false;
                    }
                    if (COUISectionSeekBar.this.mIsFastMoving) {
                        COUISectionSeekBar.this.mIsFastMoving = false;
                        COUISectionSeekBar cOUISectionSeekBar = COUISectionSeekBar.this;
                        cOUISectionSeekBar.invalidateProgress(cOUISectionSeekBar.mLastX, true);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
        }
        this.mMoveAnimator.cancel();
        this.mMoveAnimator.setDuration(100L);
        this.mMoveAnimator.setFloatValues(f12, f11 - f10);
        this.mMoveAnimator.start();
    }

    private void trackTouchEvent(MotionEvent motionEvent, float f10) {
        setTouchScale(isLayoutRtl() ? (((getWidth() - motionEvent.getX()) - getEnd()) - this.mPaddingHorizontal) / getSeekBarWidth() : ((motionEvent.getX() - getStart()) - this.mPaddingHorizontal) / getSeekBarWidth(), false);
        executeTouchGlitterEffectAnim();
        float fSubtract = subtract(f10, this.mTouchDownThumbX);
        float f11 = fSubtract < 0.0f ? fSubtract - 0.1f : fSubtract + 0.1f;
        float moveSectionWidth = getMoveSectionWidth();
        int iFloatValue = (int) new BigDecimal(Float.toString(f11)).divide(new BigDecimal(Float.toString(moveSectionWidth)), RoundingMode.FLOOR).floatValue();
        float f12 = iFloatValue * moveSectionWidth;
        if (isLayoutRtl()) {
            iFloatValue = -iFloatValue;
        }
        this.mCurrentOffset = f11;
        if (Math.abs((this.mTouchDownPos + iFloatValue) - this.mProgress) > 0) {
            float f13 = this.mTouchDownThumbX;
            startMoveAnimation(f13, f12 + f13, this.mMoveAnimationValue, true);
        } else {
            this.mThumbX = this.mTouchDownThumbX + f12 + ((this.mCurrentOffset - f12) * 0.6f);
            invalidate();
        }
        this.mLastX = f10;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar, android.view.View
    public void draw(Canvas canvas) {
        if (this.mThumbX == -1.0f) {
            calculateThumbPositionByIndex();
        }
        super.draw(canvas);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void drawActiveTrack(Canvas canvas, float f10) {
        int seekBarCenterY = getSeekBarCenterY();
        float f11 = this.mHeightTopDeformedUpValue - this.mHeightBottomDeformedDownValue;
        this.mThumbPosition = getStart() + this.mPaddingHorizontal + Math.min(this.mThumbX, getSeekBarWidth()) + (isLayoutRtl() ? -f11 : f11);
        this.mLabelX = this.mThumbX;
        drawProgress(canvas);
        drawGlitterEffect(canvas);
        drawMark(canvas, seekBarCenterY, f11);
        drawThumb(canvas, seekBarCenterY);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void handleMotionEventDown(MotionEvent motionEvent) {
        float touchXOfDrawArea = getTouchXOfDrawArea(motionEvent);
        this.mTouchDownX = touchXOfDrawArea;
        this.mLastX = touchXOfDrawArea;
        this.mIsBumpingEdges = false;
        executeThumbScaleAnim(motionEvent);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void handleMotionEventMove(MotionEvent motionEvent) {
        resetBumpingEdges();
        clearDeformationValue(motionEvent);
        float touchXOfDrawArea = getTouchXOfDrawArea(motionEvent);
        if (this.mIsDragging) {
            float f10 = this.mLastX;
            if (touchXOfDrawArea - f10 > 0.0f) {
                i = 1;
            } else if (touchXOfDrawArea - f10 >= 0.0f) {
                i = 0;
            }
            if (i == (-this.mActionMoveDirection)) {
                this.mActionMoveDirection = i;
                int i10 = this.mTouchDownPos;
                int i11 = this.mProgress;
                if (i10 != i11) {
                    this.mTouchDownPos = i11;
                    this.mTouchDownThumbX = getMoveThumbXByIndex(i11);
                    this.mMoveAnimationValue = 0.0f;
                }
                ValueAnimator valueAnimator = this.mMoveAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
            }
            trackTouchEvent(motionEvent, touchXOfDrawArea);
        } else {
            if (!isToucheInSeekBar(motionEvent)) {
                return;
            }
            if (Math.abs(motionEvent.getX() - ((this.mTouchDownX + getStart()) + this.mPaddingHorizontal)) > this.mTouchSlop) {
                this.mClickAnim.cancel();
                this.mDeformedReleaseAnim.cancel();
                startDrag();
                touchAnim();
                int thumbPosByX = getThumbPosByX(this.mTouchDownX);
                this.mTouchDownPos = thumbPosByX;
                checkThumbPosChange(thumbPosByX);
                float moveThumbXByIndex = getMoveThumbXByIndex(this.mTouchDownPos);
                this.mTouchDownThumbX = moveThumbXByIndex;
                this.mMoveAnimationValue = 0.0f;
                this.mThumbX = moveThumbXByIndex;
                invalidate();
                trackTouchEvent(motionEvent, touchXOfDrawArea);
                this.mActionMoveDirection = touchXOfDrawArea - this.mTouchDownX > 0.0f ? 1 : -1;
            }
        }
        this.mLastX = touchXOfDrawArea;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void handleMotionEventUp(MotionEvent motionEvent) {
        releaseThumbScaleAnim();
        float touchXOfDrawArea = getTouchXOfDrawArea(motionEvent);
        if (!this.mIsDragging) {
            if (motionEvent.getAction() != 3 && isEnabled() && touchInSeekBar(motionEvent, this)) {
                invalidateProgress(touchXOfDrawArea, false);
                animForClick(touchXOfDrawArea);
                releaseAnim();
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.mMoveAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mIsFastMoving = true;
        }
        float f10 = this.mScale;
        if (f10 < 0.0f) {
            this.mDeformedReleaseAnim.setStartValue(f10 * 1000.0f);
            this.mDeformedReleaseAnim.animateToFinalPosition(0.0f);
            onStopTrackingTouch(true);
        } else if (f10 > 1.0f) {
            this.mDeformedReleaseAnim.setStartValue(f10 * 1000.0f);
            this.mDeformedReleaseAnim.animateToFinalPosition(1000.0f);
            onStopTrackingTouch(true);
        } else if (!this.mIsFastMoving) {
            invalidateProgress(touchXOfDrawArea, true);
        }
        onStopTrackingTouch(false);
        setPressed(false);
        releaseAnim();
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar, d7.a
    public /* bridge */ /* synthetic */ void onAnimationStart(d7.d dVar) {
        super.onAnimationStart(dVar);
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void onClickAnimationUpdate(float f10) {
        this.mThumbX = (int) f10;
        invalidate();
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mThumbX = -1.0f;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected boolean performAdaptiveFeedback() {
        if (this.mLinearMotorVibrator == null) {
            LinearmotorVibrator linearMotorVibrator = VibrateUtils.getLinearMotorVibrator(getContext());
            this.mLinearMotorVibrator = linearMotorVibrator;
            this.mHasMotorVibrator = linearMotorVibrator != null;
        }
        Object obj = this.mLinearMotorVibrator;
        if (obj == null) {
            return false;
        }
        VibrateUtils.setLinearMotorVibratorStrength((LinearmotorVibrator) obj, 0, this.mProgress, this.mMax, 200, VibrateUtils.STRENGTH_MAX_STEP);
        return true;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void performFeedback() {
        if (this.mEnableVibrator) {
            if ((this.mHasMotorVibrator && this.mEnableAdaptiveVibrator && performAdaptiveFeedback()) || performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE_SYNC)) {
                return;
            }
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.mInactiveMarkColor = getColor(this, this.mInactiveMarkColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_inactive_mark_selector));
        this.mActiveMarkColor = getColor(this, this.mActiveMarkColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_active_mark_selector));
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar
    public void setMax(int i10) {
        if (i10 < getMin()) {
            i10 = getMin();
        }
        if (i10 != this.mMax) {
            setLocalMax(i10);
            if (this.mProgress > i10) {
                setProgress(i10);
            }
            calculateThumbPositionByIndex();
        }
        invalidate();
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    public void setProgress(int i10, boolean z10, boolean z11) {
        if (this.mProgress != Math.max(0, Math.min(i10, this.mMax))) {
            if (z10) {
                checkThumbPosChange(i10, false, z11);
                calculateThumbPositionByIndex();
                startTransitionAnim(i10, z11);
            } else {
                checkThumbPosChange(i10, false, z11);
                if (getWidth() != 0) {
                    calculateThumbPositionByIndex();
                    this.mMoveAnimationEndThumbX = this.mThumbX;
                    invalidate();
                }
            }
        }
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void setProgressRect() {
        float seekBarWidth = getSeekBarWidth();
        int seekBarCenterY = getSeekBarCenterY();
        if (isLayoutRtl()) {
            float start = getStart() + this.mPaddingHorizontal + seekBarWidth;
            float start2 = getStart() + this.mPaddingHorizontal + this.mThumbX;
            RectF rectF = this.mProgressRect;
            float f10 = start2 - this.mHeightTopDeformedUpValue;
            float f11 = this.mHeightBottomDeformedDownValue;
            float f12 = seekBarCenterY;
            float f13 = this.mProgressHeight;
            float f14 = this.mWidthDeformedValue;
            rectF.set(f10 + f11, (f12 - (f13 / 2.0f)) + f14, (start - this.mHeightBottomDeformedUpValue) + f11, (f12 + (f13 / 2.0f)) - f14);
        } else {
            float start3 = getStart() + this.mPaddingHorizontal;
            float f15 = this.mThumbX + start3;
            RectF rectF2 = this.mProgressRect;
            float f16 = this.mHeightBottomDeformedDownValue;
            float f17 = (start3 - f16) + this.mHeightBottomDeformedUpValue;
            float f18 = seekBarCenterY;
            float f19 = this.mProgressHeight;
            float f20 = this.mWidthDeformedValue;
            rectF2.set(f17, (f18 - (f19 / 2.0f)) + f20, (f15 + this.mHeightTopDeformedUpValue) - f16, (f18 + (f19 / 2.0f)) - f20);
        }
        RectF rectF3 = this.mProgressRect;
        float f21 = rectF3.left;
        float f22 = this.mProgressHeight;
        rectF3.left = f21 - (f22 / 2.0f);
        rectF3.right += f22 / 2.0f;
    }

    @Override // com.coui.appcompat.seekbar.COUISeekBar
    protected void startTransitionAnim(int i10, boolean z10) {
        AnonymousClass2 anonymousClass2 = new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.seekbar.COUISectionSeekBar.2
            AnonymousClass2() {
            }

            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z102, float f10, float f11) {
                COUISectionSeekBar.this.onStopTrackingTouch(true);
            }
        };
        int i11 = (int) this.mLabelX;
        int i12 = (int) this.mThumbX;
        this.mClickAnim.cancel();
        COUIDynamicAnimation.OnAnimationEndListener onAnimationEndListener = this.mLastEndClickListener;
        if (onAnimationEndListener != null) {
            this.mClickAnim.removeEndListener(onAnimationEndListener);
        }
        this.mClickAnim.addEndListener(anonymousClass2);
        this.mClickAnim.setStartValue(i11);
        onStartTrackingTouch(true);
        this.mClickAnim.animateToFinalPosition(i12);
        this.mLastEndClickListener = anonymousClass2;
    }

    public COUISectionSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiSectionSeekBarStyle);
    }

    public COUISectionSeekBar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.COUISectionSeekBar);
    }

    public COUISectionSeekBar(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC);
        this.mOnStopTrackingMask = false;
        this.mThumbX = -1.0f;
        this.mIsFastMoving = false;
        this.mTouchDownPos = -1;
        this.mTouchDownThumbX = 0.0f;
        this.mDeformedReleaseTransition = new androidx.dynamicanimation.animation.d("deformedReleaseTransition") { // from class: com.coui.appcompat.seekbar.COUISectionSeekBar.1
            AnonymousClass1(String str) {
                super(str);
            }

            @Override // androidx.dynamicanimation.animation.d
            public float getValue(COUISectionSeekBar cOUISectionSeekBar) {
                return cOUISectionSeekBar.getScale();
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(COUISectionSeekBar cOUISectionSeekBar, float f10) {
                cOUISectionSeekBar.setScale(f10);
            }
        };
        this.mMarkRadius = getResources().getDimensionPixelSize(R$dimen.coui_section_seekbar_tick_mark_radius);
        this.mInactiveMarkColorStateList = COUIStateListUtil.createColorStateList(COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_inactive_mark_selector), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_inactive_mark_disable_color));
        this.mActiveMarkColorStateList = COUIStateListUtil.createColorStateList(COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_active_mark_selector), COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_active_mark_disable_color));
        this.mInactiveMarkColor = getColor(this, this.mInactiveMarkColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_inactive_mark_selector));
        this.mActiveMarkColor = getColor(this, this.mActiveMarkColorStateList, COUIContextUtil.getColor(getContext(), R$color.coui_seekbar_active_mark_selector));
        initDeformedReleaseAnim();
    }
}
