package com.coui.appcompat.animation;

import android.view.animation.BaseInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class COUISpringInterpolator extends BaseInterpolator {
    private static final double DEFAULT_DAMPINGRATIO = 1.15d;
    private static final double DEFAULT_STIFFNESS = 40.0d;
    private static final float DEFAULT_VELOCITY_UNIT = 15000.0f;
    private static final double VELOCITY_MAX = 20000.0d;
    private double mAngularFreq;
    private final float mCutRatio;
    private final double mDampingRatio;
    private float mFinalValue;
    private final double mImpulse;
    private final double mInitialVel;
    private final double mUnDampedAngularFreq;

    public COUISpringInterpolator(double d10, double d11) {
        this(d10, d11, 0.0d, DEFAULT_VELOCITY_UNIT);
    }

    private float getOriginInterpolation(float f10) {
        double dSinh;
        double dExp;
        float f11 = (f10 >= 0.0f ? f10 : 0.0f) * this.mCutRatio;
        double d10 = f11;
        double dExp2 = Math.exp((-this.mDampingRatio) * this.mUnDampedAngularFreq * d10);
        double d11 = this.mDampingRatio;
        if (d11 < 1.0d) {
            dSinh = Math.cos(this.mAngularFreq * d10) + (this.mImpulse * Math.sin(this.mAngularFreq * d10));
        } else {
            if (Double.compare(1.0d, d11) == 0) {
                dExp = ((this.mImpulse * d10) + 1.0d) * Math.exp(((double) (-f11)) * this.mUnDampedAngularFreq);
                return (float) (1.0d - dExp);
            }
            double d12 = this.mUnDampedAngularFreq;
            double d13 = this.mDampingRatio;
            double dSqrt = d12 * Math.sqrt((d13 * d13) - 1.0d);
            dExp2 /= dSqrt;
            double d14 = (-this.mInitialVel) + (this.mDampingRatio * this.mUnDampedAngularFreq);
            double d15 = ((double) f10) * dSqrt;
            dSinh = (d14 * Math.sinh(d15)) + (dSqrt * Math.cosh(d15));
        }
        dExp = dExp2 * dSinh;
        return (float) (1.0d - dExp);
    }

    public float getCutRatio() {
        return this.mCutRatio;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (this.mFinalValue == -1.0f) {
            float originInterpolation = getOriginInterpolation(1.0f);
            this.mFinalValue = originInterpolation != 0.0f ? originInterpolation : 1.0f;
        }
        return getOriginInterpolation(f10) / this.mFinalValue;
    }

    public float getSpeed(float f10) {
        double dAbs;
        double d10 = f10 >= 0.0f ? f10 : 0.0f;
        double dExp = Math.exp(((double) (-this.mCutRatio)) * this.mDampingRatio * this.mUnDampedAngularFreq * d10);
        double d11 = this.mDampingRatio;
        if (d11 < 1.0d) {
            float f11 = this.mCutRatio;
            double d12 = this.mImpulse;
            double d13 = this.mUnDampedAngularFreq;
            double d14 = this.mAngularFreq;
            dAbs = Math.abs(dExp * ((((double) (-f11)) * ((d12 * d11 * d13) + d14) * Math.sin(((double) f11) * d14 * d10)) + (((double) f11) * ((d12 * d14) - (d11 * d13)) * Math.cos(((double) this.mCutRatio) * this.mAngularFreq * d10))));
        } else if (Double.compare(1.0d, d11) == 0) {
            float f12 = this.mCutRatio;
            double d15 = this.mImpulse;
            double d16 = this.mUnDampedAngularFreq;
            dAbs = Math.abs(((double) f12) * ((d15 - d16) - (((d15 * ((double) f12)) * d16) * d10)) * Math.exp(((double) (-f12)) * d16 * d10));
        } else {
            double d17 = this.mUnDampedAngularFreq;
            double d18 = this.mDampingRatio;
            double dSqrt = d17 * Math.sqrt((d18 * d18) - 1.0d);
            float f13 = this.mCutRatio;
            double d19 = this.mInitialVel;
            double d20 = this.mDampingRatio;
            double d21 = this.mUnDampedAngularFreq;
            double d22 = ((double) f13) * (((dSqrt * dSqrt) + ((d19 * d20) * d21)) - (((d20 * d20) * d21) * d21));
            double d23 = ((double) (-f13)) * d19 * dSqrt;
            double d24 = f10;
            dAbs = Math.abs((dExp / dSqrt) * ((d22 * Math.sinh(((double) f13) * dSqrt * d24)) + (d23 * Math.cosh(((double) this.mCutRatio) * dSqrt * d24))));
        }
        return (float) dAbs;
    }

    public COUISpringInterpolator(double d10, double d11, double d12, float f10) {
        this(Math.pow(6.283185307179586d / (d10 == 0.0d ? 1.0d : d10), 2.0d), 1.0d - d11, d12, 1.0f, f10);
    }

    public COUISpringInterpolator(double d10, double d11, double d12, float f10, float f11) {
        this.mFinalValue = -1.0f;
        double dSqrt = Math.sqrt(d10 <= 0.0d ? DEFAULT_STIFFNESS : d10);
        this.mUnDampedAngularFreq = dSqrt;
        d11 = d11 <= 0.0d ? DEFAULT_DAMPINGRATIO : d11;
        this.mDampingRatio = d11;
        double dMin = Math.min(Math.abs(d12), VELOCITY_MAX) / ((double) (f11 <= 0.0f ? DEFAULT_VELOCITY_UNIT : f11));
        this.mInitialVel = dMin;
        this.mCutRatio = f10 <= 0.0f ? 1.0f : f10;
        if (d11 < 1.0d) {
            double dSqrt2 = Math.sqrt(1.0d - (d11 * d11)) * dSqrt;
            this.mAngularFreq = dSqrt2;
            this.mImpulse = ((d11 * dSqrt) - dMin) / dSqrt2;
        } else if (Double.compare(1.0d, d11) == 0) {
            this.mImpulse = (-dMin) + dSqrt;
        } else {
            this.mImpulse = (-dMin) + (d11 * dSqrt);
        }
    }
}
