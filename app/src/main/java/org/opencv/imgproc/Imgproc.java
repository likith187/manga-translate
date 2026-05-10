package org.opencv.imgproc;

import aa.b;
import aa.f;
import aa.g;
import aa.h;
import ba.a;
import java.util.ArrayList;
import java.util.List;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Imgproc {
    public static void a(Mat mat, Mat mat2, int i10) {
        cvtColor_1(mat.f15054a, mat2.f15054a, i10);
    }

    public static void b(Mat mat, List list, g gVar) {
        Mat matB = a.b(list, new ArrayList(list != null ? list.size() : 0));
        long j10 = mat.f15054a;
        long j11 = matB.f15054a;
        double[] dArr = gVar.f146a;
        fillPoly_3(j10, j11, dArr[0], dArr[1], dArr[2], dArr[3]);
    }

    public static Mat c(Mat mat, Mat mat2) {
        return new Mat(getPerspectiveTransform_1(mat.f15054a, mat2.f15054a));
    }

    private static native void cvtColor_1(long j10, long j11, int i10);

    public static Mat d(int i10, h hVar) {
        return new Mat(getStructuringElement_1(i10, hVar.f147a, hVar.f148b));
    }

    public static f e(b bVar) {
        return new f(minAreaRect_0(bVar.f15054a));
    }

    public static void f(Mat mat, Mat mat2, int i10, Mat mat3) {
        morphologyEx_4(mat.f15054a, mat2.f15054a, i10, mat3.f15054a);
    }

    private static native void fillPoly_3(long j10, long j11, double d10, double d11, double d12, double d13);

    public static void g(Mat mat, List list, boolean z10, g gVar, int i10) {
        Mat matB = a.b(list, new ArrayList(list != null ? list.size() : 0));
        long j10 = mat.f15054a;
        long j11 = matB.f15054a;
        double[] dArr = gVar.f146a;
        polylines_2(j10, j11, z10, dArr[0], dArr[1], dArr[2], dArr[3], i10);
    }

    private static native long getPerspectiveTransform_1(long j10, long j11);

    private static native long getStructuringElement_1(int i10, double d10, double d11);

    public static void h(Mat mat, Mat mat2, h hVar) {
        resize_3(mat.f15054a, mat2.f15054a, hVar.f147a, hVar.f148b);
    }

    public static double i(Mat mat, Mat mat2, double d10, double d11, int i10) {
        return threshold_0(mat.f15054a, mat2.f15054a, d10, d11, i10);
    }

    public static void j(Mat mat, Mat mat2, Mat mat3, h hVar) {
        warpPerspective_3(mat.f15054a, mat2.f15054a, mat3.f15054a, hVar.f147a, hVar.f148b);
    }

    private static native double[] minAreaRect_0(long j10);

    private static native void morphologyEx_4(long j10, long j11, int i10, long j12);

    private static native void polylines_2(long j10, long j11, boolean z10, double d10, double d11, double d12, double d13, int i10);

    private static native void resize_3(long j10, long j11, double d10, double d11);

    private static native double threshold_0(long j10, long j11, double d10, double d11, int i10);

    private static native void warpPerspective_3(long j10, long j11, long j12, double d10, double d11);
}
