package x3;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes.dex */
public abstract class g implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f16378a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f16379b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f16380c = new Matrix();

    public Matrix a(float f10, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f16378a);
        matrix2.getValues(this.f16379b);
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.f16379b;
            float f11 = fArr[i10];
            float f12 = this.f16378a[i10];
            fArr[i10] = f12 + ((f11 - f12) * f10);
        }
        this.f16380c.setValues(this.f16379b);
        return this.f16380c;
    }
}
