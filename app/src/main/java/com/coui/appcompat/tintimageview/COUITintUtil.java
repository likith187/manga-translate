package com.coui.appcompat.tintimageview;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import v.a;

/* JADX INFO: loaded from: classes.dex */
public class COUITintUtil {
    public static Bitmap tintBitmap(Bitmap bitmap, int i10) {
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_IN));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        bitmapCreateBitmap.setDensity(bitmap.getDensity());
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public static Drawable tintDrawable(Drawable drawable, ColorStateList colorStateList) {
        Drawable drawableR = a.r(drawable);
        a.o(drawableR.mutate(), colorStateList);
        return drawableR;
    }

    public static Drawable tintDrawable(Drawable drawable, int i10) {
        Drawable drawableR = a.r(drawable);
        a.n(drawableR.mutate(), i10);
        return drawableR;
    }
}
