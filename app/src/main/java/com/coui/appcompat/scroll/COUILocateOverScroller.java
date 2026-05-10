package com.coui.appcompat.scroll;

import android.content.Context;
import android.util.Log;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

/* JADX INFO: loaded from: classes.dex */
public class COUILocateOverScroller extends OverScroller implements COUIIOverScroller {
    private static final int FLING_MODE = 1;
    private static final int INVALID_POSITION = -1;
    private static final float ONE = 1.0f;
    private static final Interpolator SCROLL = new Interpolator() { // from class: com.coui.appcompat.scroll.COUILocateOverScroller.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };
    private static final int SCROLL_DEFAULT_DURATION = 250;
    private static final int SCROLL_MODE = 0;
    private static final String TAG = "COUILocateOverScroller";
    private static final float THOUSAND = 1000.0f;
    private COUlFrameRateScrollSceneHelper mFrameRateHelper;
    private Interpolator mInterpolator;
    private int mMode;
    private COUISplineOverScroller mScrollerX;
    private COUISplineOverScroller mScrollerY;

    private static class COUISplineOverScroller {
        private static final int BALLISTIC = 2;
        private static final int CUBIC = 1;
        private static final float END_TENSION = 1.0f;
        private static final float GRAVITY = 2000.0f;
        private static final float INFLEXION = 0.35f;
        private static final float LENGTH = 39.37f;
        private static final double MIN_ALPHA = 1.0E-5d;
        private static final int NB_SAMPLES = 100;
        private static final float ONE = 1.0f;
        private static final float P1 = 0.175f;
        private static final float P2 = 0.35000002f;
        private static final float SIX = 6.0f;
        private static final int SPLINE = 0;
        private static final float START_TENSION = 0.5f;
        private static final float THREE = 3.0f;
        private static final float TUNING = 0.84f;
        private static final float TWO = 2.0f;
        private static final float ZERO = 0.0f;
        private float mCurrVelocity;
        private int mCurrentPosition;
        private float mDeceleration;
        private int mDuration;
        private int mFinal;
        private int mOver;
        private float mPhysicalCoeff;
        private int mSplineDistance;
        private int mSplineDuration;
        private int mStart;
        private long mStartTime;
        private int mVelocity;
        private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
        private static final float[] SPLINE_POSITION = new float[101];
        private static final float[] SPLINE_TIME = new float[101];
        private float mDurationRatio = 1.0f;
        private float mVelocityRatio = 1.0f;
        private float mFlingFriction = ViewConfiguration.getScrollFriction() * 2.5f;
        private int mState = 0;
        private boolean mFinished = true;

        static {
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            float f19;
            float f20 = 0.0f;
            float f21 = 0.0f;
            for (int i10 = 0; i10 < 100; i10++) {
                float f22 = i10 / 100.0f;
                float f23 = 1.0f;
                while (true) {
                    f10 = 2.0f;
                    f11 = ((f23 - f20) / 2.0f) + f20;
                    f12 = THREE;
                    f13 = 1.0f - f11;
                    f14 = f11 * THREE * f13;
                    f15 = f11 * f11 * f11;
                    float f24 = (((f13 * P1) + (f11 * P2)) * f14) + f15;
                    if (Math.abs(f24 - f22) < MIN_ALPHA) {
                        break;
                    } else if (f24 > f22) {
                        f23 = f11;
                    } else {
                        f20 = f11;
                    }
                }
                SPLINE_POSITION[i10] = (f14 * ((f13 * 0.5f) + f11)) + f15;
                float f25 = 1.0f;
                while (true) {
                    f16 = ((f25 - f21) / f10) + f21;
                    f17 = 1.0f - f16;
                    f18 = f16 * f12 * f17;
                    f19 = f16 * f16 * f16;
                    float f26 = (((f17 * 0.5f) + f16) * f18) + f19;
                    if (Math.abs(f26 - f22) < MIN_ALPHA) {
                        break;
                    }
                    if (f26 > f22) {
                        f25 = f16;
                    } else {
                        f21 = f16;
                    }
                    f10 = 2.0f;
                    f12 = THREE;
                }
                SPLINE_TIME[i10] = (f18 * ((f17 * P1) + (f16 * P2))) + f19;
            }
            SPLINE_POSITION[100] = 1.0f;
            SPLINE_TIME[100] = 1.0f;
        }

        COUISplineOverScroller(Context context) {
            this.mPhysicalCoeff = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * TUNING;
        }

        private void adjustDuration(int i10, int i11, int i12) {
            float fAbs = Math.abs((i12 - i10) / (i11 - i10));
            int i13 = (int) (fAbs * 100.0f);
            if (i13 >= 100 || i13 < 0) {
                return;
            }
            float f10 = i13 / 100.0f;
            int i14 = i13 + 1;
            float[] fArr = SPLINE_TIME;
            float f11 = fArr[i13];
            this.mDuration = (int) (this.mDuration * (f11 + (((fAbs - f10) / ((i14 / 100.0f) - f10)) * (fArr[i14] - f11))));
        }

        private void fitOnBounceCurve(int i10, int i11, int i12) {
            float f10 = this.mDeceleration;
            float f11 = (-i12) / f10;
            float f12 = i12;
            float fSqrt = (float) Math.sqrt((((double) ((((f12 * f12) / 2.0f) / Math.abs(f10)) + Math.abs(i11 - i10))) * 2.0d) / ((double) Math.abs(this.mDeceleration)));
            this.mStartTime -= (long) ((int) ((fSqrt - f11) * COUILocateOverScroller.THOUSAND));
            this.mCurrentPosition = i11;
            this.mStart = i11;
            this.mVelocity = (int) ((-this.mDeceleration) * fSqrt);
        }

        private static float getDeceleration(int i10) {
            if (i10 > 0) {
                return -2000.0f;
            }
            return GRAVITY;
        }

        private double getSplineDeceleration(int i10) {
            return Math.log((Math.abs(i10) * INFLEXION) / (this.mFlingFriction * this.mPhysicalCoeff));
        }

        private double getSplineFlingDistance(int i10) {
            double splineDeceleration = getSplineDeceleration(i10);
            float f10 = DECELERATION_RATE;
            return ((double) (this.mFlingFriction * this.mPhysicalCoeff)) * Math.exp((((double) f10) / (((double) f10) - 1.0d)) * splineDeceleration);
        }

        private int getSplineFlingDuration(int i10) {
            return (int) (Math.exp(getSplineDeceleration(i10) / ((double) (DECELERATION_RATE - 1.0f))) * 1000.0d);
        }

        private void onEdgeReached() {
            int i10 = this.mVelocity;
            float f10 = i10 * i10;
            float fAbs = f10 / (Math.abs(this.mDeceleration) * 2.0f);
            float fSignum = Math.signum(this.mVelocity);
            int i11 = this.mOver;
            if (fAbs > i11) {
                this.mDeceleration = ((-fSignum) * f10) / (i11 * 2.0f);
                fAbs = i11;
            }
            this.mOver = (int) fAbs;
            this.mState = 2;
            int i12 = this.mStart;
            int i13 = this.mVelocity;
            if (i13 <= 0) {
                fAbs = -fAbs;
            }
            this.mFinal = i12 + ((int) fAbs);
            this.mDuration = -((int) ((i13 * COUILocateOverScroller.THOUSAND) / this.mDeceleration));
        }

        private void startAfterEdge(int i10, int i11, int i12, int i13) {
            if (i10 > i11 && i10 < i12) {
                Log.e(COUILocateOverScroller.TAG, "startAfterEdge called from a valid position");
                this.mFinished = true;
                return;
            }
            boolean z10 = i10 > i12;
            int i14 = z10 ? i12 : i11;
            if ((i10 - i14) * i13 >= 0) {
                startBounceAfterEdge(i10, i14, i13);
            } else if (getSplineFlingDistance(i13) > Math.abs(r2)) {
                fling(i10, i13, z10 ? i11 : i10, z10 ? i10 : i12, this.mOver);
            } else {
                startSpringback(i10, i14, i13);
            }
        }

        private void startBounceAfterEdge(int i10, int i11, int i12) {
            this.mDeceleration = getDeceleration(i12 == 0 ? i10 - i11 : i12);
            fitOnBounceCurve(i10, i11, i12);
            onEdgeReached();
        }

        private void startSpringback(int i10, int i11, int i12) {
            this.mFinished = false;
            this.mState = 1;
            this.mCurrentPosition = i10;
            this.mStart = i10;
            this.mFinal = i11;
            int i13 = i10 - i11;
            this.mDeceleration = getDeceleration(i13);
            this.mVelocity = -i13;
            this.mOver = Math.abs(i13);
            this.mDuration = (int) (Math.sqrt((i13 * (-2.0f)) / this.mDeceleration) * 1000.0d);
        }

        boolean continueWhenFinished() {
            int i10 = this.mState;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                if (i10 == 2) {
                    this.mStartTime += (long) this.mDuration;
                    startSpringback(this.mFinal, this.mStart, 0);
                }
            } else {
                if (this.mDuration >= this.mSplineDuration) {
                    return false;
                }
                int i11 = this.mFinal;
                this.mCurrentPosition = i11;
                this.mStart = i11;
                int i12 = (int) this.mCurrVelocity;
                this.mVelocity = i12;
                this.mDeceleration = getDeceleration(i12);
                this.mStartTime += (long) this.mDuration;
                onEdgeReached();
            }
            update();
            return true;
        }

        void finish() {
            this.mCurrentPosition = this.mFinal;
            this.mFinished = true;
        }

        void fling(int i10, int i11, int i12, int i13, int i14) {
            double splineFlingDistance;
            this.mOver = i14;
            this.mFinished = false;
            float f10 = i11;
            this.mCurrVelocity = f10;
            this.mVelocity = i11;
            this.mDuration = 0;
            this.mSplineDuration = 0;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mCurrentPosition = i10;
            this.mStart = i10;
            if (i10 > i13 || i10 < i12) {
                startAfterEdge(i10, i12, i13, i11);
                return;
            }
            float f11 = this.mVelocityRatio;
            if (f11 != 1.0f) {
                i11 = (int) (f10 * f11);
                float f12 = i11;
                this.mCurrVelocity = f12;
                this.mVelocity = Math.round(f12 * f11);
            }
            this.mState = 0;
            if (i11 != 0) {
                int iRound = Math.round(getSplineFlingDuration(i11) * this.mDurationRatio);
                this.mDuration = iRound;
                this.mSplineDuration = iRound;
                splineFlingDistance = getSplineFlingDistance(i11);
            } else {
                splineFlingDistance = 0.0d;
            }
            int iSignum = (int) (splineFlingDistance * ((double) Math.signum(i11)));
            this.mSplineDistance = iSignum;
            int i15 = i10 + iSignum;
            this.mFinal = i15;
            if (i15 < i12) {
                adjustDuration(this.mStart, i15, i12);
                this.mFinal = i12;
            }
            int i16 = this.mFinal;
            if (i16 > i13) {
                adjustDuration(this.mStart, i16, i13);
                this.mFinal = i13;
            }
        }

        void notifyEdgeReached(int i10, int i11, int i12) {
            if (this.mState == 0) {
                this.mOver = i12;
                this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                startAfterEdge(i10, i11, i11, (int) this.mCurrVelocity);
            }
        }

        void setFinalPosition(int i10) {
            this.mFinal = i10;
            this.mSplineDistance = i10 - this.mStart;
            this.mFinished = false;
        }

        void setFriction(float f10) {
            this.mFlingFriction = f10;
        }

        boolean springback(int i10, int i11, int i12) {
            this.mFinished = true;
            this.mCurrentPosition = i10;
            this.mStart = i10;
            this.mFinal = i10;
            this.mVelocity = 0;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = 0;
            if (i10 < i11) {
                startSpringback(i10, i11, 0);
            } else if (i10 > i12) {
                startSpringback(i10, i12, 0);
            }
            return !this.mFinished;
        }

        void startScroll(int i10, int i11, int i12) {
            this.mFinished = false;
            this.mCurrentPosition = i10;
            this.mStart = i10;
            this.mFinal = i10 + i11;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = i12;
            this.mDeceleration = 0.0f;
            this.mVelocity = 0;
        }

        boolean update() {
            float f10;
            float f11;
            double d10;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
            if (jCurrentAnimationTimeMillis == 0) {
                return this.mDuration > 0;
            }
            int i10 = this.mDuration;
            if (jCurrentAnimationTimeMillis > i10) {
                return false;
            }
            int i11 = this.mState;
            if (i11 == 0) {
                int i12 = this.mSplineDuration;
                float f12 = jCurrentAnimationTimeMillis / i12;
                int i13 = (int) (f12 * 100.0f);
                if (i13 >= 100 || i13 < 0) {
                    f10 = 1.0f;
                    f11 = 0.0f;
                } else {
                    float f13 = i13 / 100.0f;
                    int i14 = i13 + 1;
                    float[] fArr = SPLINE_POSITION;
                    float f14 = fArr[i13];
                    f11 = (fArr[i14] - f14) / ((i14 / 100.0f) - f13);
                    f10 = f14 + ((f12 - f13) * f11);
                }
                int i15 = this.mSplineDistance;
                this.mCurrVelocity = ((f11 * i15) / i12) * COUILocateOverScroller.THOUSAND;
                d10 = f10 * i15;
            } else if (i11 == 1) {
                float f15 = jCurrentAnimationTimeMillis / i10;
                float f16 = f15 * f15;
                float fSignum = Math.signum(this.mVelocity);
                int i16 = this.mOver;
                double d11 = i16 * fSignum * ((THREE * f16) - ((2.0f * f15) * f16));
                this.mCurrVelocity = fSignum * i16 * SIX * ((-f15) + f16);
                d10 = d11;
            } else if (i11 != 2) {
                d10 = 0.0d;
            } else {
                float f17 = jCurrentAnimationTimeMillis / COUILocateOverScroller.THOUSAND;
                int i17 = this.mVelocity;
                float f18 = this.mDeceleration;
                this.mCurrVelocity = i17 + (f18 * f17);
                d10 = (i17 * f17) + (((f18 * f17) * f17) / 2.0f);
            }
            this.mCurrentPosition = this.mStart + ((int) Math.round(d10));
            return true;
        }

        void updateScroll(float f10) {
            this.mCurrentPosition = this.mStart + Math.round(f10 * (this.mFinal - r0));
        }
    }

    public COUILocateOverScroller(Context context) {
        this(context, null);
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void abortAnimation() {
        this.mScrollerX.finish();
        this.mScrollerY.finish();
        this.mFrameRateHelper.setFrameRate(false);
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public boolean computeScrollOffset() {
        if (isCOUIFinished()) {
            return false;
        }
        int i10 = this.mMode;
        if (i10 == 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mScrollerX.mStartTime;
            int i11 = this.mScrollerX.mDuration;
            if (jCurrentAnimationTimeMillis < i11) {
                float interpolation = this.mInterpolator.getInterpolation(jCurrentAnimationTimeMillis / i11);
                this.mScrollerX.updateScroll(interpolation);
                this.mScrollerY.updateScroll(interpolation);
            } else {
                abortAnimation();
            }
        } else if (i10 == 1) {
            if (!this.mScrollerX.mFinished && !this.mScrollerX.update() && !this.mScrollerX.continueWhenFinished()) {
                this.mScrollerX.finish();
            }
            if (!this.mScrollerY.mFinished && !this.mScrollerY.update() && !this.mScrollerY.continueWhenFinished()) {
                this.mScrollerY.finish();
            }
        }
        return true;
    }

    public void enableFrameRate(boolean z10) {
        this.mFrameRateHelper.enableFrameRate(z10);
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void fling(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        fling(i10, i11, i12, i13, i14, i15, i16, i17, 0, 0);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public int getCOUICurrX() {
        return this.mScrollerX.mCurrentPosition;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public int getCOUICurrY() {
        return this.mScrollerY.mCurrentPosition;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public int getCOUIFinalX() {
        return this.mScrollerX.mFinal;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public int getCOUIFinalY() {
        return this.mScrollerY.mFinal;
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public float getCurrVelocity() {
        return (float) Math.hypot(this.mScrollerX.mCurrVelocity, this.mScrollerY.mCurrVelocity);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public float getCurrVelocityX() {
        return this.mScrollerX.mCurrVelocity;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public float getCurrVelocityY() {
        return this.mScrollerY.mCurrVelocity;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public boolean isCOUIFinished() {
        return this.mScrollerX.mFinished && this.mScrollerY.mFinished;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public boolean isScrollingInDirection(float f10, float f11) {
        return !isFinished() && Math.signum(f10) == Math.signum((float) (this.mScrollerX.mFinal - this.mScrollerX.mStart)) && Math.signum(f11) == Math.signum((float) (this.mScrollerY.mFinal - this.mScrollerY.mStart));
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void notifyHorizontalEdgeReached(int i10, int i11, int i12) {
        this.mScrollerX.notifyEdgeReached(i10, i11, i12);
        springBack(i10, 0, 0, 0, 0, 0);
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void notifyVerticalEdgeReached(int i10, int i11, int i12) {
        this.mScrollerY.notifyEdgeReached(i10, i11, i12);
        springBack(0, i10, 0, 0, 0, 0);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setCOUIFriction(float f10) {
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setCurrVelocityX(float f10) {
        this.mScrollerX.mCurrVelocity = f10;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setCurrVelocityY(float f10) {
        this.mScrollerY.mCurrVelocity = f10;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setDurationRatio(float f10) {
        this.mScrollerX.mDurationRatio = f10;
        this.mScrollerY.mDurationRatio = f10;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setFinalX(int i10) {
        if (i10 == -1) {
            return;
        }
        this.mScrollerX.setFinalPosition(i10);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setFinalY(int i10) {
        if (i10 == -1) {
            return;
        }
        this.mScrollerY.setFinalPosition(i10);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setFlingFriction(float f10) {
        this.mScrollerX.setFriction(f10);
        this.mScrollerY.setFriction(f10);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setInterpolator(Interpolator interpolator) {
        if (interpolator == null) {
            this.mInterpolator = SCROLL;
        } else {
            this.mInterpolator = interpolator;
        }
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setIsScrollView(boolean z10) {
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setVelocityXRatio(float f10) {
        this.mScrollerX.mVelocityRatio = f10;
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void setVelocityYRatio(float f10) {
        this.mScrollerY.mVelocityRatio = f10;
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public boolean springBack(int i10, int i11, int i12, int i13, int i14, int i15) {
        boolean zSpringback = this.mScrollerX.springback(i10, i12, i13);
        boolean zSpringback2 = this.mScrollerY.springback(i11, i14, i15);
        if (zSpringback || zSpringback2) {
            this.mMode = 1;
        }
        return zSpringback || zSpringback2;
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void startScroll(int i10, int i11, int i12, int i13) {
        startScroll(i10, i11, i12, i13, SCROLL_DEFAULT_DURATION);
    }

    public COUILocateOverScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.mScrollerX = new COUISplineOverScroller(context);
        this.mScrollerY = new COUISplineOverScroller(context);
        if (interpolator == null) {
            this.mInterpolator = SCROLL;
        } else {
            this.mInterpolator = interpolator;
        }
        this.mFrameRateHelper = new COUlFrameRateScrollSceneHelper(false);
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void fling(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        if (i11 > i17 || i11 < i16) {
            springBack(i10, i11, i14, i15, i16, i17);
        } else {
            fling(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.OverScroller, com.coui.appcompat.scroll.COUIIOverScroller
    public void startScroll(int i10, int i11, int i12, int i13, int i14) {
        this.mMode = 0;
        this.mScrollerX.startScroll(i10, i12, i14);
        this.mScrollerY.startScroll(i11, i13, i14);
    }

    @Override // com.coui.appcompat.scroll.COUIIOverScroller
    public void fling(int i10, int i11, int i12, int i13) {
        this.mMode = 1;
        this.mScrollerX.fling(i10, i12, Integer.MIN_VALUE, Integer.MAX_VALUE, 0);
        this.mScrollerY.fling(i11, i13, Integer.MIN_VALUE, Integer.MAX_VALUE, 0);
        this.mFrameRateHelper.setFrameRate(true);
    }
}
