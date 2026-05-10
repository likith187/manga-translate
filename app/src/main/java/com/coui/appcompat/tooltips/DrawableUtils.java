package com.coui.appcompat.tooltips;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class DrawableUtils {
    DrawableUtils() {
    }

    private static Bitmap drawableToBitmap(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Drawable rotateDrawable(Context context, Drawable drawable, float f10, boolean z10) {
        Bitmap bitmapDrawableToBitmap = drawableToBitmap(drawable);
        Matrix matrix = new Matrix();
        if (z10) {
            matrix.preScale(-1.0f, 1.0f);
        }
        matrix.postRotate(f10);
        return new BitmapDrawable(context.getResources(), Bitmap.createBitmap(bitmapDrawableToBitmap, 0, 0, bitmapDrawableToBitmap.getWidth(), bitmapDrawableToBitmap.getHeight(), matrix, true));
    }
}
