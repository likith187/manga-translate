package com.coui.appcompat.darkmode;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class COUIDarkModeUtil {
    private static final int COLOR_DDDDDD = -2236963;
    private static final int ZERO = 0;

    private static ColorFilter getDarkFilter() {
        return new LightingColorFilter(COLOR_DDDDDD, 0);
    }

    public static boolean isNightMode(Context context) {
        return 32 == (context.getResources().getConfiguration().uiMode & 48);
    }

    public static int makeDark(int i10) {
        float[] fArr = new float[3];
        d.k(i10, fArr);
        float f10 = fArr[2];
        float f11 = 1.0f - f10;
        if (f11 >= f10) {
            return i10;
        }
        fArr[2] = f11;
        return d.a(fArr);
    }

    public static int makeDarkLimit(int i10, float f10) {
        float[] fArr = new float[3];
        d.k(i10, fArr);
        float fMax = Math.max(f10, 1.0f - fArr[2]);
        if (fMax >= fArr[2]) {
            return i10;
        }
        fArr[2] = fMax;
        return d.a(fArr);
    }

    public static void makeDrawableDark(Drawable drawable) {
        if (drawable != null) {
            drawable.setColorFilter(getDarkFilter());
        }
    }

    public static void makeImageViewDark(ImageView imageView) {
        if (imageView != null) {
            imageView.setColorFilter(getDarkFilter());
        }
    }

    public static int makeLight(int i10) {
        float[] fArr = new float[3];
        d.k(i10, fArr);
        float f10 = fArr[2];
        float f11 = 1.0f - f10;
        if (f11 <= f10) {
            return i10;
        }
        fArr[2] = f11;
        return d.a(fArr);
    }

    public static void setForceDarkAllow(View view, boolean z10) {
        view.setForceDarkAllowed(z10);
    }
}
