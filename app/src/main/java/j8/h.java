package j8;

import android.util.Log;
import j8.h;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.function.BinaryOperator;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleUnaryOperator;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f12802a = "j8.h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Queue f12803b = new PriorityQueue(new Comparator() { // from class: j8.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return h.x((h.a) obj, (h.a) obj2);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f12804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double[] f12805b;

        a(double d10, double[] dArr) {
            this.f12804a = d10;
            this.f12805b = dArr;
        }
    }

    private static double[] h(double d10, double d11, double d12) {
        return new double[]{(0.257d * d12) + (0.504d * d11) + (0.098d * d10) + 16.0d, (((-0.148d) * d12) - (0.291d * d11)) + (d10 * 0.439d) + 128.0d, (((d12 * 0.439d) - (d11 * 0.368d)) - (d10 * 0.071d)) + 128.0d};
    }

    private static double[] i(double d10, double d11, double d12) {
        double d13 = d11 - 128.0d;
        double d14 = d12 - 128.0d;
        double d15 = (d10 - 16.0d) * 1.164d;
        return new double[]{Math.max(Math.min((2.017d * d13) + d15, 255.0d), 0.0d), Math.max(Math.min((d15 - (d13 * 0.392d)) - (0.813d * d14), 255.0d), 0.0d), Math.max(Math.min(d15 + (d14 * 1.596d), 255.0d), 0.0d)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] j(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr3[i10] = dArr[i10] + dArr2[i10];
        }
        return dArr3;
    }

    public static int[] k(int[] iArr, int[] iArr2, Mat mat) {
        double[] dArrP = mat != null ? p(mat) : Arrays.stream(iArr2).asDoubleStream().toArray();
        double[] dArrH = h(dArrP[0], dArrP[1], dArrP[2]);
        double[] dArrH2 = h(iArr[0], iArr[1], iArr[2]);
        Log.d(f12802a, "adjustForegroundColor " + (dArrH[0] - dArrH2[0]) + " " + dArrH[0] + " " + dArrH2[0]);
        double d10 = dArrH[0] - dArrH2[0];
        return Math.abs(d10) < 80.0d ? Arrays.stream(i(d10 < 0.0d ? 255.0d : 0.0d, dArrH2[1], dArrH2[2])).mapToInt(new DoubleToIntFunction() { // from class: j8.c
            @Override // java.util.function.DoubleToIntFunction
            public final int applyAsInt(double d11) {
                return h.r(d11);
            }
        }).toArray() : iArr;
    }

    private static double[] l(double[] dArr, double d10, double d11) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            double d12 = dArr[i10];
            if (d12 < d10) {
                dArr2[i10] = d10;
            } else if (d12 > d11) {
                dArr2[i10] = d11;
            } else {
                dArr2[i10] = d12;
            }
        }
        return dArr2;
    }

    private static double[] m(double[] dArr, double d10) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = dArr[i10] / d10;
        }
        return dArr2;
    }

    static double[] n(Mat mat, Mat mat2, int[] iArr, double d10, double d11, double d12, int i10) {
        int i11;
        double[] dArr;
        int i12;
        double[] dArr2;
        int iV = mat.v();
        int iD = mat.d();
        int iA = mat.a();
        double[] dArr3 = new double[iA];
        double[] array = iArr != null ? Arrays.stream(iArr).asDoubleStream().toArray() : null;
        double[] dArr4 = mat2 != null ? new double[iA] : null;
        byte[] bArr = (byte[]) k8.i.m(mat);
        byte[] bArr2 = mat2 != null ? (byte[]) k8.i.m(mat2) : null;
        int i13 = (int) ((((double) iD) * d11) - 1.0d);
        int i14 = (int) ((((double) iV) * d11) - 1.0d);
        int i15 = ((iV - (i14 * 2)) * (iD - (i13 * 2))) / (i10 * i10);
        final int iMax = Math.max(0, (int) (((double) i15) * d10));
        int i16 = i14;
        while (i16 < iV - i14) {
            int i17 = i13;
            while (i17 < iD - i13) {
                int i18 = (i16 * iD * 3) + (i17 * 3);
                int i19 = iV;
                int i20 = i18 + 1;
                int i21 = i14;
                int i22 = i13;
                int i23 = i17;
                int i24 = i18 + 2;
                int i25 = i15;
                int i26 = iD;
                double[] dArr5 = array;
                double[] dArr6 = {bArr[i18] & 255, bArr[i20] & 255, bArr[i24] & 255};
                if (bArr2 != null) {
                    i12 = i23;
                    dArr2 = new double[]{bArr2[i18] & 255, bArr2[i20] & 255, bArr2[i24] & 255};
                } else {
                    i12 = i23;
                    dArr2 = dArr5;
                }
                double d13 = 0.0d;
                for (int i27 = 0; i27 < iA; i27++) {
                    double dAbs = Math.abs(dArr6[i27] - dArr2[i27]);
                    d13 += dAbs * dAbs;
                    if (dArr4 != null) {
                        dArr4[i27] = dArr4[i27] + dArr2[i27];
                    }
                }
                f12803b.add(new a(d13, dArr6));
                while (f12803b.size() > iMax) {
                    f12803b.poll();
                }
                i17 = i12 + i10;
                iV = i19;
                i13 = i22;
                i15 = i25;
                iD = i26;
                array = dArr5;
                i14 = i21;
            }
            i16 += i10;
        }
        final int i28 = i15;
        double[] dArr7 = array;
        for (a aVar : f12803b) {
            for (int i29 = 0; i29 < iA; i29++) {
                dArr3[i29] = dArr3[i29] + aVar.f12805b[i29];
            }
        }
        f12803b.clear();
        double[] array2 = Arrays.stream(dArr3).map(new DoubleUnaryOperator() { // from class: j8.d
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d14) {
                return h.t(iMax, d14);
            }
        }).toArray();
        double[] array3 = dArr4 != null ? Arrays.stream(dArr4).map(new DoubleUnaryOperator() { // from class: j8.e
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d14) {
                return h.u(i28, d14);
            }
        }).toArray() : dArr7;
        double dQ = q(array2, array3);
        double[] dArr8 = array3;
        double[] dArr9 = array2;
        int i30 = 0;
        while (i30 < 100 && dQ < d12) {
            double[] dArrL = l(j(dArr9, y(m(z(dArr9, dArr8), q(dArr9, dArr8)), d12 - q(dArr9, array3))), 0.0d, 255.0d);
            double dQ2 = q(dArrL, array3);
            if (!Arrays.equals(dArrL, dArr9)) {
                i11 = 1;
                dArr = dArr9;
                dArr9 = dArrL;
            } else {
                if (dQ2 >= d12 - 1.0d) {
                    return dArrL;
                }
                i11 = 1;
                dArr9 = new double[]{127.0d, 127.0d, 127.0d};
                dArr = array3;
            }
            i30 += i11;
            dArr8 = dArr;
            dQ = dQ2;
        }
        return dArr9;
    }

    public static int[] o(Mat mat, Mat mat2, int[] iArr) {
        return Arrays.stream(n(mat, mat2, iArr, 0.1d, 0.1d, 125.0d, 3)).mapToInt(new DoubleToIntFunction() { // from class: j8.b
            @Override // java.util.function.DoubleToIntFunction
            public final int applyAsInt(double d10) {
                return h.s(d10);
            }
        }).toArray();
    }

    private static double[] p(Mat mat) {
        int iD = mat.d();
        int iV = mat.v();
        int iMin = (int) (((double) iD) * 0.8d);
        int iMin2 = Math.min(12, iV);
        if (iD < iV) {
            iMin = Math.min(10, iD);
            iMin2 = (int) (((double) iV) * 0.8d);
        }
        final List listF = k8.i.f(mat, Arrays.asList(new aa.e((iD - iMin) / 2, (iV - iMin2) / 2, iMin, iMin2)), 4);
        return Arrays.stream((double[]) listF.stream().reduce(new BinaryOperator() { // from class: j8.f
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return h.j((double[]) obj, (double[]) obj2);
            }
        }).orElse(new double[]{0.0d, 0.0d, 0.0d})).map(new DoubleUnaryOperator() { // from class: j8.g
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d10) {
                return h.w(listF, d10);
            }
        }).toArray();
    }

    private static double q(double[] dArr, double[] dArr2) {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d11 = dArr[i10];
            double d12 = dArr2[i10];
            d10 += (d11 - d12) * (d11 - d12);
        }
        return Math.sqrt(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int r(double d10) {
        return (int) d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int s(double d10) {
        return (int) d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double t(int i10, double d10) {
        return d10 / ((double) i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double u(int i10, double d10) {
        return d10 / ((double) i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double w(List list, double d10) {
        return d10 / ((double) list.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int x(a aVar, a aVar2) {
        return Double.compare(aVar.f12804a, aVar2.f12804a);
    }

    private static double[] y(double[] dArr, double d10) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = dArr[i10] * d10;
        }
        return dArr2;
    }

    private static double[] z(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr3[i10] = dArr[i10] - dArr2[i10];
        }
        return dArr3;
    }
}
