package com.coloros.translate.screen.translate.business;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static Bitmap a(Context context, Rect rect, Bitmap bitmap) {
        int i10 = rect.left;
        int i11 = rect.top;
        int i12 = rect.right - i10;
        int i13 = rect.bottom - i11;
        c0.i("BitmapCropHelper", "crop before, x: " + i10 + ", y: " + i11 + ", width: " + i12 + ", height: " + i13);
        if (i12 != 0 && i13 != 0) {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.translation_selector_padding);
            int iA = rect.bottom + dimensionPixelSize;
            if (k2.b.e(context)) {
                iA += k2.b.a();
            }
            if (iA == k2.b.b()) {
                i13 += dimensionPixelSize;
            }
            if (rect.right + dimensionPixelSize == k2.b.c()) {
                i12 += dimensionPixelSize;
            }
            if (rect.left == dimensionPixelSize) {
                i12 += dimensionPixelSize;
                i10 = 0;
            }
            if (rect.top == k2.b.d(context) + dimensionPixelSize) {
                i11 -= dimensionPixelSize;
                i13 += dimensionPixelSize;
            }
            if (i10 + i12 <= bitmap.getWidth() && i11 + i13 <= bitmap.getHeight()) {
                return Bitmap.createBitmap(bitmap, i10, i11, i12, i13);
            }
        }
        return null;
    }
}
