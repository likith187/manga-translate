package org.opencv.photo;

import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Photo {
    public static void a(Mat mat, Mat mat2, Mat mat3, double d10, int i10) {
        inpaint_0(mat.f15054a, mat2.f15054a, mat3.f15054a, d10, i10);
    }

    private static native void inpaint_0(long j10, long j11, long j12, double d10, int i10);
}
