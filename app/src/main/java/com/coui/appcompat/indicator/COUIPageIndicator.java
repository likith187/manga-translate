package com.coui.appcompat.indicator;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.PathInterpolator;
import androidx.core.view.m0;
import androidx.customview.widget.a;
import androidx.dynamicanimation.animation.d;
import androidx.dynamicanimation.animation.f;
import androidx.dynamicanimation.animation.g;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.log.COUILog;
import com.support.indicator.R$attr;
import com.support.indicator.R$plurals;
import com.support.indicator.R$style;
import com.support.indicator.R$styleable;
import d0.h;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIPageIndicator extends View implements COUIIPagerIndicator {
    private static final ArgbEvaluator COLOR_EVALUATOR;
    private static final float COMPACT_MOVE_FACTOR_THRESHOLD = 0.095f;
    private static final boolean DEBUG;
    private static final float DEFAULT_COLOR_FACTOR_THRESHOLD = 0.05f;
    private static final float DEFAULT_GONE_DOT_SIZE = 0.0f;
    private static final float DEFAULT_HALF_OF_PROGRESS = 0.5f;
    private static final PathInterpolator DEFAULT_INTERPOLATOR;
    private static final int DEFAULT_MAXIMUM_LARGE_DOT_NUMBER = 4;
    private static final int DEFAULT_MAXIMUM_MEDIUM_DOT_NUMBER = 2;
    private static final float DEFAULT_MINIMUM_VISIBLE_CHANGE = 0.005f;
    private static final float DEFAULT_MOVE_FACTOR_THRESHOLD = 0.005f;
    private static final float HALF_OF_PI_IN_DEGREE = 90.0f;
    private static final float INDICATOR_DOT_GONE_LEVEL_SIZE = 9.0f;
    private static final float INDICATOR_DOT_LARGE_LEVEL_SIZE = 3.0f;
    private static final float INDICATOR_DOT_LARGE_LEVEL_SIZE_WHILE_ALL_DOTS_VISIBLE = 5.0f;
    private static final int INDICATOR_DOT_LEVEL = 4;
    private static final float INDICATOR_DOT_MEDIUM_LEVEL_SIZE = 5.0f;
    private static final float INDICATOR_DOT_SMALL_LEVEL_SIZE = 7.0f;
    private static final int INVALID_INDEX = -1;
    private static final int MAX_VISIBLE_DOT_NUMBER = 6;
    private static final float ONE_AND_A_HALF_OF_PI_IN_DEGREE = 270.0f;
    private static final float PI_IN_DEGREE = 180.0f;
    private static final String TAG = "COUIPageIndicator";
    private final AccessibilityHelper mAccessibilityHelper;
    private Paint mCompatTracePaint;
    private int mDotColor;
    private Paint mDotPaint;
    private float mDotsInterval;
    private long mDownTime;
    private int mIndicatorDescriptionID;
    private boolean mIsClickable;
    private float mMediumDotSize;
    private PageIndicatorModel mModel;
    private float mMoveFactorThreshold;
    private float mNormalDotSize;
    private OnIndicatorDotClickListener mOnDotClickListener;
    private float mSmallDotSize;
    private final int mStyle;
    private final float[] mTouchPoint;
    private int mTraceColor;
    private Paint mTracePaint;

    private class AccessibilityHelper extends a {
        private final Rect mExceptionVirtualBounds;
        private final int[] mLocationOnScreen;

        public AccessibilityHelper(View view) {
            super(view);
            this.mExceptionVirtualBounds = new Rect(0, 0, 0, 0);
            this.mLocationOnScreen = new int[2];
        }

        @Override // androidx.customview.widget.a
        protected int getVirtualViewAt(float f10, float f11) {
            return COUIPageIndicator.this.mModel.getClickedDotIndex(f10, f11);
        }

        @Override // androidx.customview.widget.a
        protected void getVisibleVirtualViews(List<Integer> list) {
            for (int i10 = 0; i10 < COUIPageIndicator.this.mModel.getDotsCount(); i10++) {
                list.add(Integer.valueOf(i10));
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == -1 || !COUIPageIndicator.this.mIsClickable || COUIPageIndicator.this.mOnDotClickListener == null) {
                return true;
            }
            COUIPageIndicator.this.mOnDotClickListener.onClick(i10);
            COUIPageIndicator.this.invalidate();
            invalidateVirtualView(i10);
            return true;
        }

        @Override // androidx.core.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            int i10 = COUIPageIndicator.this.mModel.mAccessCurrentIndex + 1;
            accessibilityEvent.setContentDescription(COUIPageIndicator.this.getResources().getQuantityString(COUIPageIndicator.this.mIndicatorDescriptionID, i10, Integer.valueOf(i10), Integer.valueOf(COUIPageIndicator.this.mModel.mDots.size()), Integer.valueOf(COUIPageIndicator.this.mModel.mDots.size())));
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForVirtualView(int i10, h hVar) {
            int i11 = i10 + 1;
            String quantityString = COUIPageIndicator.this.getResources().getQuantityString(COUIPageIndicator.this.mIndicatorDescriptionID, i11, Integer.valueOf(i11), Integer.valueOf(COUIPageIndicator.this.mModel.mDots.size()), Integer.valueOf(COUIPageIndicator.this.mModel.mDots.size()));
            hVar.l0(quantityString);
            hVar.I0(quantityString);
            COUIPageIndicator.this.getLocationOnScreen(this.mLocationOnScreen);
            if (i10 < 0 || i10 >= COUIPageIndicator.this.mModel.getDotsCount()) {
                COUILog.e(COUIPageIndicator.TAG, "Illegal virtual view id: " + i10 + " total dots count: " + COUIPageIndicator.this.mModel.getDotsCount());
                hVar.c0(this.mExceptionVirtualBounds);
                hVar.d0(this.mExceptionVirtualBounds);
                hVar.a(16);
                return;
            }
            PageIndicatorDotModel dot = COUIPageIndicator.this.mModel.getDot(i10);
            if (dot == null) {
                return;
            }
            Rect rect = new Rect((int) dot.getBounds().left, (int) dot.getBounds().top, (int) dot.getBounds().right, (int) dot.getBounds().bottom);
            hVar.c0(rect);
            int[] iArr = this.mLocationOnScreen;
            rect.offset(iArr[0], iArr[1]);
            hVar.d0(rect);
            hVar.a(16);
        }
    }

    public interface OnIndicatorDotClickListener {
        void onClick(int i10);
    }

    private static class PageIndicatorDotModel {
        protected int mFillColor;
        protected int mId;
        protected float mRadius = 0.0f;
        protected float mCenterX = 0.0f;
        protected float mCenterY = 0.0f;
        protected float mOffsetX = 0.0f;
        protected RectF mBounds = new RectF(0.0f, 0.0f, 0.0f, 0.0f);

        PageIndicatorDotModel(int i10) {
            this.mId = i10;
        }

        private void updateBounds() {
            RectF rectF = this.mBounds;
            float f10 = this.mOffsetX;
            float f11 = this.mCenterX;
            float f12 = this.mRadius;
            float f13 = this.mCenterY;
            rectF.set((f10 + f11) - f12, f13 - f12, f10 + f11 + f12, f13 + f12);
        }

        public void dump() {
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "id = " + this.mId + " dot = (" + this.mCenterX + ", " + this.mCenterY + ", " + this.mRadius + ") bounds = " + this.mBounds + " offsetX = " + this.mOffsetX);
        }

        public RectF getBounds() {
            return this.mBounds;
        }

        public float getCenterX() {
            return this.mCenterX;
        }

        public float getCenterY() {
            return this.mCenterY;
        }

        public int getFillColor() {
            return this.mFillColor;
        }

        public int getId() {
            return this.mId;
        }

        public float getRadius() {
            return this.mRadius;
        }

        public void onDraw(Canvas canvas, Paint paint) {
            paint.setColor(this.mFillColor);
            float f10 = this.mCenterX;
            float f11 = this.mRadius;
            float f12 = this.mCenterY;
            canvas.drawOval(f10 - f11, f12 - f11, f10 + f11, f12 + f11, paint);
        }

        public void setCenterX(float f10) {
            this.mCenterX = f10;
            updateBounds();
        }

        public void setCenterY(float f10) {
            this.mCenterY = f10;
            updateBounds();
        }

        public void setFillColor(int i10) {
            this.mFillColor = i10;
        }

        public void setId(int i10) {
            this.mId = i10;
        }

        public void setOffsetX(float f10) {
            this.mOffsetX = f10;
            updateBounds();
        }

        public void setRadius(float f10) {
            this.mRadius = f10;
            updateBounds();
        }
    }

    private class PageIndicatorModel {
        private int mAccessCurrentIndex;
        private int mCurrentIndex;
        private float mCurrentOffset;
        private float mInterval;
        private float mMaskOffset;
        private final float[] mScaleMaskIndex;
        private final float[] mScaleMaskSize;
        private final float[] mScaleSize;
        private f mSpringAnimation;
        private View mViewHost;
        private final LinkedList<PageIndicatorDotModel> mDots = new LinkedList<>();
        private final int mMaxVisibleCount = 6;
        private final Path mTraceRectPath = new Path();
        private final RectF mVisibleRect = new RectF();
        private final float[] mVisibleBounds = new float[2];
        private final Path mPath = new Path();
        private final Path mPathLeft = new Path();
        private final Path mPathRight = new Path();
        private final Path mPathUp = new Path();
        private final Path mPathDown = new Path();
        private final Matrix mMatrix = new Matrix();
        private final Matrix mInvertMatrix = new Matrix();
        private final d mCurrentPosition = new d("currentPosition") { // from class: com.coui.appcompat.indicator.COUIPageIndicator.PageIndicatorModel.1
            @Override // androidx.dynamicanimation.animation.d
            public float getValue(PageIndicatorModel pageIndicatorModel) {
                return pageIndicatorModel.getCurrentPosition();
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(PageIndicatorModel pageIndicatorModel, float f10) {
                int iFloor = (int) Math.floor(f10);
                pageIndicatorModel.setCurrentPositionInternal(iFloor, f10 - iFloor);
            }
        };
        private int mIndicatorCount = 0;
        private float mDrawHorizontalOffset = 0.0f;
        private float mVisibleOffset = 0.0f;
        private boolean mMovingToEnd = false;

        PageIndicatorModel(View view) {
            this.mViewHost = view;
            this.mScaleMaskIndex = new float[]{0.0f, f, f, f - ((COUIPageIndicator.INDICATOR_DOT_GONE_LEVEL_SIZE - fArr[2]) / 2.0f)};
            float[] fArr = {COUIPageIndicator.INDICATOR_DOT_LARGE_LEVEL_SIZE, 5.0f, COUIPageIndicator.INDICATOR_DOT_SMALL_LEVEL_SIZE, COUIPageIndicator.INDICATOR_DOT_GONE_LEVEL_SIZE};
            this.mScaleMaskSize = fArr;
            this.mScaleSize = new float[]{COUIPageIndicator.this.mNormalDotSize / 2.0f, COUIPageIndicator.this.mMediumDotSize / 2.0f, COUIPageIndicator.this.mSmallDotSize / 2.0f, 0.0f};
            float f10 = 0.0f - ((5.0f - fArr[0]) / 2.0f);
            float f11 = f10 - ((COUIPageIndicator.INDICATOR_DOT_SMALL_LEVEL_SIZE - fArr[1]) / 2.0f);
            this.mMaskOffset = 0.0f;
            this.mInterval = COUIPageIndicator.this.mDotsInterval * 2.0f;
            initSpring();
        }

        private void configCanvas(Canvas canvas) {
            this.mMatrix.reset();
            if (COUIPageIndicator.this.isLayoutRtl()) {
                this.mMatrix.setTranslate(this.mVisibleBounds[0] - this.mDrawHorizontalOffset, 0.0f);
                Matrix matrix = this.mMatrix;
                float[] fArr = this.mVisibleBounds;
                float f10 = fArr[0];
                matrix.postRotate(COUIPageIndicator.PI_IN_DEGREE, f10 + ((fArr[1] - f10) / 2.0f), COUIPageIndicator.this.mNormalDotSize / 2.0f);
            } else {
                this.mMatrix.setTranslate((-this.mVisibleBounds[0]) + this.mDrawHorizontalOffset, 0.0f);
            }
            canvas.setMatrix(this.mMatrix);
            this.mMatrix.invert(this.mInvertMatrix);
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "draw rect bounds = " + Arrays.toString(this.mVisibleBounds) + " horizontalOffset = " + this.mDrawHorizontalOffset);
        }

        private void drawDots(Canvas canvas) {
            int i10;
            for (PageIndicatorDotModel pageIndicatorDotModel : this.mDots) {
                int iIndexOf = this.mDots.indexOf(pageIndicatorDotModel);
                if (this.mCurrentOffset == 0.0f || (iIndexOf != (i10 = this.mCurrentIndex) && iIndexOf - 1 != i10)) {
                    float f10 = pageIndicatorDotModel.mCenterX;
                    float f11 = pageIndicatorDotModel.mRadius;
                    float f12 = f10 + f11;
                    float[] fArr = this.mVisibleBounds;
                    if (f12 >= fArr[0] && f10 - f11 <= fArr[1]) {
                        COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "drawDots: dot index = " + iIndexOf + " dot radius = " + pageIndicatorDotModel.mRadius + " dot location = (" + pageIndicatorDotModel.mCenterX + ", " + pageIndicatorDotModel.mCenterY + ") left = " + this.mVisibleBounds[0] + " right = " + this.mVisibleBounds[1]);
                        if (iIndexOf == this.mCurrentIndex) {
                            pageIndicatorDotModel.setFillColor(COUIPageIndicator.this.mTraceColor);
                        } else {
                            pageIndicatorDotModel.setFillColor(COUIPageIndicator.this.mDotColor);
                        }
                        pageIndicatorDotModel.onDraw(canvas, COUIPageIndicator.this.mDotPaint);
                    }
                }
            }
        }

        private void drawTrace(Canvas canvas) {
            float colorFactor = getColorFactor();
            if (colorFactor == 1.0f) {
                COUIPageIndicator.this.mTracePaint.setColor(COUIPageIndicator.this.mTraceColor);
                canvas.drawPath(this.mPath, COUIPageIndicator.this.mTracePaint);
                return;
            }
            if (this.mCurrentOffset <= 0.5f) {
                COUIPageIndicator.this.mTracePaint.setColor(COUIPageIndicator.this.mTraceColor);
                canvas.drawPath(this.mPathLeft, COUIPageIndicator.this.mTracePaint);
                COUIPageIndicator.this.mTracePaint.setColor(((Integer) COUIPageIndicator.COLOR_EVALUATOR.evaluate(colorFactor, Integer.valueOf(COUIPageIndicator.this.mDotColor), Integer.valueOf(COUIPageIndicator.this.mTraceColor))).intValue());
            } else {
                COUIPageIndicator.this.mTracePaint.setColor(((Integer) COUIPageIndicator.COLOR_EVALUATOR.evaluate(colorFactor, Integer.valueOf(COUIPageIndicator.this.mDotColor), Integer.valueOf(COUIPageIndicator.this.mTraceColor))).intValue());
                canvas.drawPath(this.mPathLeft, COUIPageIndicator.this.mTracePaint);
                COUIPageIndicator.this.mTracePaint.setColor(COUIPageIndicator.this.mTraceColor);
            }
            canvas.drawPath(this.mPathRight, COUIPageIndicator.this.mTracePaint);
        }

        private float getColorFactor() {
            float f10 = this.mCurrentOffset;
            if (f10 <= COUIPageIndicator.DEFAULT_COLOR_FACTOR_THRESHOLD) {
                return f10 / COUIPageIndicator.DEFAULT_COLOR_FACTOR_THRESHOLD;
            }
            if (f10 >= 0.95f) {
                return (1.0f - f10) / COUIPageIndicator.DEFAULT_COLOR_FACTOR_THRESHOLD;
            }
            return 1.0f;
        }

        private float getMaskedSize(int i10, float f10) {
            if (i10 == 0) {
                return this.mScaleSize[i10];
            }
            float f11 = this.mScaleMaskIndex[0];
            if (f10 < f11) {
                if (this.mMovingToEnd) {
                    float[] fArr = this.mScaleSize;
                    float f12 = fArr[i10];
                    int i11 = i10 - 1;
                    float f13 = fArr[i11];
                    float interpolation = COUIPageIndicator.DEFAULT_INTERPOLATOR.getInterpolation(f10 - this.mScaleMaskIndex[i10]);
                    float[] fArr2 = this.mScaleMaskIndex;
                    return Math.max(f12, f13 - (((f13 - f12) * 2.0f) * (1.0f - (interpolation / (fArr2[i11] - fArr2[i10])))));
                }
                float[] fArr3 = this.mScaleSize;
                int i12 = i10 - 1;
                float f14 = fArr3[i12];
                float f15 = fArr3[i10];
                float interpolation2 = (f14 - f15) * 2.0f * COUIPageIndicator.DEFAULT_INTERPOLATOR.getInterpolation(f10 - this.mScaleMaskIndex[i10]);
                float[] fArr4 = this.mScaleMaskIndex;
                return Math.min(f14, f15 + (interpolation2 / (fArr4[i12] - fArr4[i10])));
            }
            if (f10 <= f11 + this.mScaleMaskSize[0]) {
                return 0.0f;
            }
            if (this.mMovingToEnd) {
                float[] fArr5 = this.mScaleSize;
                int i13 = i10 - 1;
                float f16 = fArr5[i13];
                float f17 = fArr5[i10];
                float interpolation3 = (f16 - f17) * 2.0f * COUIPageIndicator.DEFAULT_INTERPOLATOR.getInterpolation((this.mScaleMaskIndex[i10] + this.mScaleMaskSize[i10]) - f10);
                float[] fArr6 = this.mScaleMaskIndex;
                float f18 = fArr6[i10];
                float[] fArr7 = this.mScaleMaskSize;
                return Math.min(f16, f17 + (interpolation3 / (((f18 + fArr7[i10]) - fArr6[i13]) - fArr7[i13])));
            }
            float[] fArr8 = this.mScaleSize;
            float f19 = fArr8[i10];
            int i14 = i10 - 1;
            float f20 = fArr8[i14];
            float interpolation4 = COUIPageIndicator.DEFAULT_INTERPOLATOR.getInterpolation((this.mScaleMaskIndex[i10] + this.mScaleMaskSize[i10]) - f10);
            float[] fArr9 = this.mScaleMaskIndex;
            float f21 = fArr9[i10];
            float[] fArr10 = this.mScaleMaskSize;
            return Math.max(f19, f20 - (((f20 - f19) * 2.0f) * (1.0f - (interpolation4 / (((f21 + fArr10[i10]) - fArr9[i14]) - fArr10[i14])))));
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private float getMoveFactor() {
            /*
                r7 = this;
                float r0 = r7.mCurrentOffset
                r1 = 1028443341(0x3d4ccccd, float:0.05)
                int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r3 = 1073741824(0x40000000, float:2.0)
                r4 = 1055286886(0x3ee66666, float:0.45)
                r5 = 1056964608(0x3f000000, float:0.5)
                if (r2 <= 0) goto L22
                int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                if (r2 > 0) goto L22
                android.view.animation.PathInterpolator r0 = com.coui.appcompat.indicator.COUIPageIndicator.access$1000()
                float r2 = r7.mCurrentOffset
                float r2 = r2 - r1
                float r2 = r2 / r4
                float r0 = r0.getInterpolation(r2)
            L20:
                float r0 = r0 / r3
                goto L3e
            L22:
                int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                if (r2 <= 0) goto L3d
                r2 = 1064514355(0x3f733333, float:0.95)
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 >= 0) goto L3d
                android.view.animation.PathInterpolator r0 = com.coui.appcompat.indicator.COUIPageIndicator.access$1000()
                r2 = 1065353216(0x3f800000, float:1.0)
                float r6 = r7.mCurrentOffset
                float r2 = r2 - r6
                float r2 = r2 - r1
                float r2 = r2 / r4
                float r0 = r0.getInterpolation(r2)
                goto L20
            L3d:
                r0 = 0
            L3e:
                com.coui.appcompat.indicator.COUIPageIndicator r1 = com.coui.appcompat.indicator.COUIPageIndicator.this
                float r1 = com.coui.appcompat.indicator.COUIPageIndicator.access$1100(r1)
                int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r1 >= 0) goto L4f
                com.coui.appcompat.indicator.COUIPageIndicator r7 = com.coui.appcompat.indicator.COUIPageIndicator.this
                float r0 = com.coui.appcompat.indicator.COUIPageIndicator.access$1100(r7)
                goto L63
            L4f:
                com.coui.appcompat.indicator.COUIPageIndicator r1 = com.coui.appcompat.indicator.COUIPageIndicator.this
                float r1 = com.coui.appcompat.indicator.COUIPageIndicator.access$1100(r1)
                float r1 = r5 - r1
                int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r1 <= 0) goto L63
                com.coui.appcompat.indicator.COUIPageIndicator r7 = com.coui.appcompat.indicator.COUIPageIndicator.this
                float r7 = com.coui.appcompat.indicator.COUIPageIndicator.access$1100(r7)
                float r0 = r5 - r7
            L63:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.indicator.COUIPageIndicator.PageIndicatorModel.getMoveFactor():float");
        }

        private float getRadius(int i10) {
            float f10 = i10 - this.mMaskOffset;
            int i11 = 0;
            while (true) {
                float[] fArr = this.mScaleMaskIndex;
                if (i11 >= fArr.length) {
                    return 0.0f;
                }
                float f11 = fArr[i11];
                if (f10 >= f11 && f10 <= f11 + this.mScaleMaskSize[i11]) {
                    float maskedSize = getMaskedSize(i11, f10);
                    COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "index, mMaskOffset = " + i10 + " " + this.mMaskOffset + " level = " + i11 + " dot position = " + f10 + " size = " + maskedSize + " moving to end = " + this.mMovingToEnd);
                    return maskedSize;
                }
                i11++;
            }
        }

        private void initSpring() {
            g gVar = new g();
            gVar.d(1.0f);
            gVar.f(1500.0f);
            f fVar = new f(this, this.mCurrentPosition);
            this.mSpringAnimation = fVar;
            fVar.x(gVar);
            this.mSpringAnimation.k(0.005f);
        }

        private void mapPoints(float[] fArr) {
            this.mInvertMatrix.mapPoints(fArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void setCurrentPositionInternal(int r19, float r20) {
            /*
                Method dump skipped, instruction units count: 574
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.indicator.COUIPageIndicator.PageIndicatorModel.setCurrentPositionInternal(int, float):void");
        }

        private void updatePath() {
            if (this.mCurrentIndex >= this.mDots.size() - 1) {
                return;
            }
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "updatePath: mCurrentOffset = " + this.mCurrentOffset + " dots size = " + this.mDots.size());
            PageIndicatorDotModel pageIndicatorDotModel = this.mDots.get(this.mCurrentIndex);
            PageIndicatorDotModel pageIndicatorDotModel2 = this.mDots.get(this.mCurrentIndex + 1);
            float centerX = pageIndicatorDotModel.getCenterX();
            float centerY = pageIndicatorDotModel.getCenterY();
            float radius = pageIndicatorDotModel.getRadius();
            float centerX2 = pageIndicatorDotModel2.getCenterX();
            float centerY2 = pageIndicatorDotModel2.getCenterY();
            float radius2 = pageIndicatorDotModel2.getRadius();
            float colorFactor = getColorFactor();
            float moveFactor = getMoveFactor();
            float f10 = this.mCurrentOffset;
            float f11 = f10 <= 0.5f ? moveFactor * 2.0f * (this.mInterval + radius2 + radius) : 0.0f;
            float f12 = f10 > 0.5f ? moveFactor * 2.0f * (this.mInterval + radius2 + radius) : 0.0f;
            float f13 = centerX + f11;
            float f14 = 0.5f - moveFactor;
            float f15 = f13 + (radius * f14 * 2.0f);
            float fSqrt = (float) (((double) centerY) - Math.sqrt(r20 - (((((radius * 2.0f) * f14) * 2.0f) * radius) * f14)));
            float f16 = centerX2 - f12;
            float f17 = f16 - ((radius2 * f14) * 2.0f);
            float f18 = f12;
            float fSqrt2 = (float) (((double) centerY2) - Math.sqrt((radius2 * radius2) - (((((radius2 * 2.0f) * f14) * 2.0f) * radius2) * f14)));
            float f19 = (f15 + f17) / 2.0f;
            float f20 = (((radius * radius) - (((f19 - centerX) - f11) * ((f15 - centerX) - f11))) / (fSqrt - centerY)) + centerY;
            float fAsin = (float) ((Math.asin(f14 * 2.0f) * 180.0d) / 3.141592653589793d);
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "updatePath: mCurrentOffset = " + this.mCurrentOffset + " dots size = " + this.mDots.size() + " startDot = (" + centerX + ", " + centerY + ", " + radius + ") endDot = (" + centerX2 + ", " + centerY2 + ", " + radius2 + ") colorFactor = " + colorFactor + " moveFactor = " + moveFactor + " mDepartOffset = " + f11 + " mPortOffset = " + f18 + ") control1 = (" + f15 + ", " + fSqrt + ") control2 = (" + f19 + ", " + f20 + ") control3 = (" + f17 + ", " + fSqrt2 + ") snapAngle = " + fAsin);
            this.mPath.reset();
            Path path = this.mPath;
            float f21 = centerX - radius;
            float f22 = centerX2 + radius2;
            float f23 = COUIPageIndicator.this.mNormalDotSize;
            Path.Direction direction = Path.Direction.CW;
            path.addRect(f21, 0.0f, f22, f23, direction);
            this.mTraceRectPath.reset();
            this.mTraceRectPath.moveTo(f21, 0.0f);
            this.mTraceRectPath.lineTo(f22, 0.0f);
            this.mTraceRectPath.lineTo(f22, COUIPageIndicator.this.mNormalDotSize);
            this.mTraceRectPath.lineTo(f21, COUIPageIndicator.this.mNormalDotSize);
            this.mTraceRectPath.close();
            this.mPathUp.reset();
            this.mPathUp.moveTo(f21, centerY);
            float f24 = centerY - radius;
            float f25 = centerX + radius;
            float f26 = radius + centerY;
            this.mPathUp.arcTo(f21, f24, f25, f26, COUIPageIndicator.PI_IN_DEGREE, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, false);
            this.mPathUp.lineTo(f13, f24);
            float f27 = f21 + f11;
            float f28 = f25 + f11;
            this.mPathUp.arcTo(f27, f24, f28, f26, COUIPageIndicator.ONE_AND_A_HALF_OF_PI_IN_DEGREE, fAsin, false);
            this.mPathUp.quadTo(f19, f20, f17, fSqrt2);
            float f29 = centerX2 - radius2;
            float f30 = f29 - f18;
            float f31 = centerY2 - radius2;
            float f32 = f22 - f18;
            float f33 = centerY2 + radius2;
            this.mPathUp.arcTo(f30, f31, f32, f33, COUIPageIndicator.ONE_AND_A_HALF_OF_PI_IN_DEGREE - fAsin, fAsin, false);
            this.mPathUp.lineTo(centerX2, f31);
            this.mPathUp.arcTo(f29, f31, f22, f33, COUIPageIndicator.ONE_AND_A_HALF_OF_PI_IN_DEGREE, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, false);
            this.mPathUp.lineTo(f22, 0.0f);
            this.mPathUp.lineTo(f21, 0.0f);
            this.mPathUp.close();
            this.mPathDown.reset();
            this.mPathDown.moveTo(f22, centerY2);
            this.mPathDown.arcTo(f29, f31, f22, f33, 0.0f, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, false);
            this.mPathDown.lineTo(f16, f33);
            this.mPathDown.arcTo(f30, f31, f32, f33, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, fAsin, false);
            this.mPathDown.quadTo(f19, (centerY2 * 2.0f) - f20, f15, (centerY * 2.0f) - fSqrt);
            this.mPathDown.arcTo(f27, f24, f28, f26, COUIPageIndicator.HALF_OF_PI_IN_DEGREE - fAsin, fAsin, false);
            this.mPathDown.lineTo(centerX, f26);
            this.mPathDown.arcTo(f21, f24, f25, f26, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, COUIPageIndicator.HALF_OF_PI_IN_DEGREE, false);
            this.mPathDown.lineTo(f21, COUIPageIndicator.this.mNormalDotSize);
            this.mPathDown.lineTo(f22, COUIPageIndicator.this.mNormalDotSize);
            this.mPathDown.close();
            Path path2 = this.mPath;
            Path path3 = this.mPathUp;
            Path.Op op = Path.Op.DIFFERENCE;
            path2.op(path3, op);
            this.mPath.op(this.mPathDown, op);
            this.mPathLeft.reset();
            this.mPathRight.reset();
            this.mPathLeft.addRect(f21, 0.0f, f19 + 0.5f, COUIPageIndicator.this.mNormalDotSize, direction);
            this.mPathRight.addRect(f19, 0.0f, f22, COUIPageIndicator.this.mNormalDotSize, direction);
            Path path4 = this.mPathLeft;
            Path path5 = this.mPath;
            Path.Op op2 = Path.Op.INTERSECT;
            path4.op(path5, op2);
            this.mPathRight.op(this.mPath, op2);
        }

        private void verifyMask(boolean z10) {
            if (z10) {
                if (this.mIndicatorCount >= 6) {
                    this.mMaskOffset = Math.max(0.0f, this.mMaskOffset - 1.0f);
                } else {
                    this.mMaskOffset = 0.0f;
                }
            }
            if (this.mIndicatorCount < 6) {
                this.mScaleMaskSize[0] = 5.0f;
            } else {
                this.mScaleMaskSize[0] = 3.0f;
            }
        }

        public void addDot(int i10) {
            PageIndicatorDotModel pageIndicatorDotModel = new PageIndicatorDotModel(i10);
            pageIndicatorDotModel.setFillColor(COUIPageIndicator.this.mDotColor);
            pageIndicatorDotModel.setCenterX(COUIPageIndicator.this.mNormalDotSize / 2.0f);
            pageIndicatorDotModel.setCenterY(COUIPageIndicator.this.mNormalDotSize / 2.0f);
            this.mDots.add(pageIndicatorDotModel);
            this.mIndicatorCount = this.mDots.size();
            verifyMask(false);
            setCurrentPositionInternal(this.mCurrentIndex, this.mCurrentOffset);
            this.mViewHost.requestLayout();
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "addDot: current index = " + this.mCurrentIndex + " mCurrentOffset = " + this.mCurrentOffset);
            pageIndicatorDotModel.dump();
        }

        public void dump() {
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "current index = " + this.mCurrentIndex + " offset = " + this.mCurrentOffset + " dots count = " + this.mIndicatorCount + " maskOffset = " + this.mMaskOffset + " visible rect = " + this.mVisibleRect);
            Iterator<PageIndicatorDotModel> it = this.mDots.iterator();
            while (it.hasNext()) {
                it.next().dump();
            }
        }

        public int getClickedDotIndex(float f10, float f11) {
            float[] fArr = {f10, f11};
            mapPoints(fArr);
            float f12 = -1.0f;
            int iIndexOf = -1;
            for (PageIndicatorDotModel pageIndicatorDotModel : this.mDots) {
                if (pageIndicatorDotModel.getBounds().contains(fArr[0], fArr[1])) {
                    return this.mDots.indexOf(pageIndicatorDotModel);
                }
                float fAbs = COUIPageIndicator.this.isLayoutRtl() ? Math.abs(fArr[0] - (pageIndicatorDotModel.getBounds().centerX() - (pageIndicatorDotModel.getBounds().width() / 2.0f))) : Math.abs(fArr[0] - pageIndicatorDotModel.getBounds().centerX());
                if (iIndexOf == -1 || fAbs < f12) {
                    iIndexOf = this.mDots.indexOf(pageIndicatorDotModel);
                    f12 = fAbs;
                }
            }
            return iIndexOf;
        }

        public float getCurrentPosition() {
            return this.mCurrentIndex + this.mCurrentOffset;
        }

        public PageIndicatorDotModel getDot(int i10) {
            if (i10 < 0 || i10 >= this.mDots.size()) {
                return null;
            }
            return this.mDots.get(i10);
        }

        public int getDotsCount() {
            return this.mIndicatorCount;
        }

        public RectF getVisibleRect() {
            this.mVisibleRect.set(0.0f, 0.0f, Math.min(6, this.mIndicatorCount) * (this.mInterval + COUIPageIndicator.this.mNormalDotSize), COUIPageIndicator.this.mNormalDotSize);
            return this.mVisibleRect;
        }

        public void onDraw(Canvas canvas) {
            canvas.save();
            configCanvas(canvas);
            drawDots(canvas);
            if (this.mCurrentOffset != 0.0f) {
                drawTrace(canvas);
            }
            canvas.restore();
        }

        public void removeDot() {
            if (this.mDots.size() == 0) {
                COUILog.e(COUIPageIndicator.TAG, "The mDots has no data");
                return;
            }
            this.mDots.removeLast();
            int size = this.mDots.size();
            this.mIndicatorCount = size;
            if (this.mCurrentIndex + this.mCurrentOffset > size - 1) {
                this.mCurrentIndex = size - 1;
                this.mCurrentOffset = 0.0f;
            }
            verifyMask(true);
            setCurrentPositionInternal(this.mCurrentIndex, this.mCurrentOffset);
            this.mViewHost.requestLayout();
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "removeDot: current index = " + this.mCurrentIndex + " currentOffset = " + this.mCurrentOffset + " count = " + this.mIndicatorCount);
        }

        public void setCurrentPosition(int i10, float f10, boolean z10) {
            COUILog.d(COUIPageIndicator.DEBUG, COUIPageIndicator.TAG, "setCurrentPosition: position: " + i10 + " offset: " + f10 + " animate: " + z10);
            if (!z10) {
                setCurrentPositionInternal(i10, f10);
            } else {
                this.mSpringAnimation.m(getCurrentPosition());
                this.mSpringAnimation.s(i10 + f10);
            }
        }
    }

    static {
        DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
        DEFAULT_INTERPOLATOR = new COUIEaseInterpolator();
        COLOR_EVALUATOR = new ArgbEvaluator();
    }

    public COUIPageIndicator(Context context) {
        this(context, null);
    }

    private void buildModel() {
        this.mModel = new PageIndicatorModel(this);
    }

    private void initPaints() {
        Paint paint = new Paint(1);
        this.mDotPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.mTracePaint = paint2;
        paint2.setColor(this.mTraceColor);
    }

    public void addDot() {
        PageIndicatorModel pageIndicatorModel = this.mModel;
        pageIndicatorModel.addDot(pageIndicatorModel.getDotsCount());
    }

    @Override // android.view.View
    public boolean callOnClick() {
        OnIndicatorDotClickListener onIndicatorDotClickListener;
        if (this.mIsClickable && (onIndicatorDotClickListener = this.mOnDotClickListener) != null) {
            PageIndicatorModel pageIndicatorModel = this.mModel;
            float[] fArr = this.mTouchPoint;
            onIndicatorDotClickListener.onClick(pageIndicatorModel.getClickedDotIndex(fArr[0], fArr[1]));
        }
        invalidate();
        return super.callOnClick();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mAccessibilityHelper.dispatchHoverEvent(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    public int getDotsCount() {
        return this.mModel.getDotsCount();
    }

    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mModel.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        RectF visibleRect = this.mModel.getVisibleRect();
        setMeasuredDimension((int) Math.ceil(visibleRect.width()), (int) Math.ceil(visibleRect.height()));
    }

    @Override // com.coui.appcompat.indicator.COUIIPagerIndicator
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // com.coui.appcompat.indicator.COUIIPagerIndicator
    public void onPageScrolled(int i10, float f10, int i11) {
        setCurrentPosition(i10, f10);
    }

    @Override // com.coui.appcompat.indicator.COUIIPagerIndicator
    public void onPageSelected(int i10) {
        this.mModel.mAccessCurrentIndex = i10;
        sendAccessibilityEvent(4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        IndicatorSavedState indicatorSavedState = (IndicatorSavedState) parcelable;
        super.onRestoreInstanceState(indicatorSavedState.getSuperState());
        setDotsCount(indicatorSavedState.mDotsCount);
        float f10 = indicatorSavedState.mCurrentPosition;
        int i10 = (int) f10;
        setCurrentPosition(i10, f10 - i10);
        if (DEBUG) {
            Log.d(TAG, "onRestoreInstanceState dotsCount = " + indicatorSavedState.mDotsCount + " currentPosition = " + indicatorSavedState.mCurrentPosition);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        IndicatorSavedState indicatorSavedState = new IndicatorSavedState(super.onSaveInstanceState());
        indicatorSavedState.mDotsCount = this.mModel.getDotsCount();
        indicatorSavedState.mCurrentPosition = this.mModel.getCurrentPosition();
        if (DEBUG) {
            Log.d(TAG, "onSaveInstanceState dotsCount = " + indicatorSavedState.mDotsCount + " currentPosition = " + indicatorSavedState.mCurrentPosition);
        }
        return indicatorSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDownTime = System.currentTimeMillis();
        } else if (actionMasked == 1 && System.currentTimeMillis() - this.mDownTime <= ViewConfiguration.getTapTimeout()) {
            this.mTouchPoint[0] = motionEvent.getX();
            this.mTouchPoint[1] = motionEvent.getY();
            callOnClick();
        }
        return true;
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIPageIndicator, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIPageIndicator, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mTraceColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIPageIndicator_traceDotColor, 0);
            this.mDotColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIPageIndicator_dotColor, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        setTraceDotColor(this.mTraceColor);
        setPageIndicatorDotsColor(this.mDotColor);
    }

    public void removeDot() {
        this.mModel.removeDot();
    }

    public void setCurrentPosition(int i10) {
        setCurrentPosition(i10, 0.0f);
    }

    @Deprecated
    public void setDotCornerRadius(int i10) {
    }

    @Deprecated
    public void setDotSpacing(int i10) {
    }

    @Deprecated
    public void setDotStrokeWidth(int i10) {
    }

    public void setDotsCount(int i10) {
        int dotsCount = i10 - getDotsCount();
        for (int i11 = 0; i11 < Math.abs(dotsCount); i11++) {
            if (dotsCount > 0) {
                addDot();
            } else {
                removeDot();
            }
        }
    }

    public void setIndicatorDescriptionID(int i10) {
        try {
            getResources().getQuantityString(this.mIndicatorDescriptionID, 1, 1, 1, 1);
            this.mIndicatorDescriptionID = i10;
            sendAccessibilityEvent(4);
        } catch (Exception e10) {
            COUILog.e(TAG, "setIndicatorDescriptionID indicatorDescriptionID error :" + e10.getMessage());
        }
    }

    public void setIsClickable(boolean z10) {
        this.mIsClickable = z10;
    }

    public void setOnDotClickListener(OnIndicatorDotClickListener onIndicatorDotClickListener) {
        this.mOnDotClickListener = onIndicatorDotClickListener;
    }

    public void setPageIndicatorDotsColor(int i10) {
        this.mDotColor = i10;
        this.mDotPaint.setColor(i10);
        invalidate();
    }

    public void setTraceDotColor(int i10) {
        this.mTraceColor = i10;
        this.mTracePaint.setColor(i10);
        invalidate();
    }

    @Deprecated
    public void snapToPosition() {
    }

    @Deprecated
    public void stopTraceAnimator() {
    }

    public COUIPageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiPageIndicatorStyle);
    }

    public void setCurrentPosition(int i10, float f10) {
        setCurrentPosition(i10, f10, false);
    }

    public COUIPageIndicator(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, COUIContextUtil.isCOUIDarkTheme(context) ? R$style.Widget_COUI_COUIPageIndicator_Dark : R$style.Widget_COUI_COUIPageIndicator);
    }

    public void setCurrentPosition(int i10, float f10, boolean z10) {
        this.mModel.setCurrentPosition(i10, f10, z10);
        invalidate();
    }

    static class IndicatorSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<IndicatorSavedState> CREATOR = new Parcelable.Creator<IndicatorSavedState>() { // from class: com.coui.appcompat.indicator.COUIPageIndicator.IndicatorSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public IndicatorSavedState createFromParcel(Parcel parcel) {
                return new IndicatorSavedState(parcel, IndicatorSavedState.class.getClassLoader());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public IndicatorSavedState[] newArray(int i10) {
                return new IndicatorSavedState[i10];
            }
        };
        float mCurrentPosition;
        int mDotsCount;

        public IndicatorSavedState(Parcel parcel) {
            super(parcel);
            this.mDotsCount = 0;
            this.mCurrentPosition = 0.0f;
            readFromParcel(parcel);
        }

        private void readFromParcel(Parcel parcel) {
            this.mDotsCount = parcel.readInt();
            this.mCurrentPosition = parcel.readFloat();
        }

        public String toString() {
            return "IndicatorSavedState{" + Integer.toHexString(System.identityHashCode(this)) + "mDotsCount = " + this.mDotsCount + " mCurrentPosition = " + this.mCurrentPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mDotsCount);
            parcel.writeFloat(this.mCurrentPosition);
        }

        public IndicatorSavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mDotsCount = 0;
            this.mCurrentPosition = 0.0f;
            readFromParcel(parcel);
        }

        public IndicatorSavedState(Parcelable parcelable) {
            super(parcelable);
            this.mDotsCount = 0;
            this.mCurrentPosition = 0.0f;
        }
    }

    public COUIPageIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mTouchPoint = new float[2];
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.mAccessibilityHelper = accessibilityHelper;
        this.mMoveFactorThreshold = 0.005f;
        this.mDownTime = 0L;
        this.mIndicatorDescriptionID = R$plurals.coui_page_indicator_description;
        if (attributeSet != null && attributeSet.getStyleAttribute() != 0) {
            this.mStyle = attributeSet.getStyleAttribute();
        } else {
            this.mStyle = i10;
        }
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPageIndicator, i10, i11);
        this.mTraceColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIPageIndicator_traceDotColor, 0);
        this.mDotColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIPageIndicator_dotColor, 0);
        this.mNormalDotSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIPageIndicator_dotSize, 0.0f);
        this.mMediumDotSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIPageIndicator_dotSizeMedium, 0.0f);
        this.mSmallDotSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIPageIndicator_dotSizeSmall, 0.0f);
        this.mDotsInterval = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIPageIndicator_dotSpacing, 0.0f);
        this.mIsClickable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPageIndicator_dotClickable, true);
        typedArrayObtainStyledAttributes.recycle();
        buildModel();
        initPaints();
        m0.j0(this, accessibilityHelper);
        m0.t0(this, 1);
    }
}
