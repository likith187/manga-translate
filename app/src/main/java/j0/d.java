package j0;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f12679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f12680b;

    protected d(float[] fArr) {
        this.f12679a = fArr;
        this.f12680b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f12679a;
        int iMin = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
        float f11 = this.f12680b;
        float f12 = (f10 - (iMin * f11)) / f11;
        float[] fArr2 = this.f12679a;
        float f13 = fArr2[iMin];
        return f13 + (f12 * (fArr2[iMin + 1] - f13));
    }
}
