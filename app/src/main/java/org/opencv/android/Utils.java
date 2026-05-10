package org.opencv.android;

import android.graphics.Bitmap;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Utils {
    public static void a(Bitmap bitmap, Mat mat) {
        b(bitmap, mat, false);
    }

    public static void b(Bitmap bitmap, Mat mat, boolean z10) {
        if (bitmap == null) {
            throw new IllegalArgumentException("bmp == null");
        }
        if (mat == null) {
            throw new IllegalArgumentException("mat == null");
        }
        nBitmapToMat2(bitmap, mat.f15054a, z10);
    }

    public static void c(Mat mat, Bitmap bitmap) {
        d(mat, bitmap, false);
    }

    public static void d(Mat mat, Bitmap bitmap, boolean z10) {
        if (mat == null) {
            throw new IllegalArgumentException("mat == null");
        }
        if (bitmap == null) {
            throw new IllegalArgumentException("bmp == null");
        }
        nMatToBitmap2(mat.f15054a, bitmap, z10);
    }

    private static native void nBitmapToMat2(Bitmap bitmap, long j10, boolean z10);

    private static native void nMatToBitmap2(long j10, Bitmap bitmap, boolean z10);
}
