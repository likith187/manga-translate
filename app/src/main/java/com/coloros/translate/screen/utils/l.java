package com.coloros.translate.screen.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static Bitmap a(Context context, Rect rect, Boolean bool) {
        if (Build.VERSION.SDK_INT >= 33) {
            Bitmap bitmapD = w.d(context, rect);
            if (!bool.booleanValue() || bitmapD == null) {
                return bitmapD;
            }
            Bitmap bitmapA = a.a(bitmapD, 80);
            bitmapD.recycle();
            return bitmapA;
        }
        Bitmap bitmapB = b(context, false, false);
        if (bitmapB == null) {
            c0.o("ScreenshotHelper", "ScreenshotHelper shot is null");
            return null;
        }
        Bitmap bitmapA2 = com.coloros.translate.screen.translate.business.a.a(context, rect, bitmapB);
        if (!bool.booleanValue() || bitmapA2 == null) {
            bitmapB.recycle();
            return bitmapA2;
        }
        Bitmap bitmapA3 = a.a(bitmapA2, 80);
        bitmapB.recycle();
        bitmapA2.recycle();
        return bitmapA3;
    }

    private static Bitmap b(Context context, boolean z10, boolean z11) {
        int iB = z10 ? p.b(context) : 0;
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return null;
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            int i10 = displayMetrics.heightPixels;
            int i11 = displayMetrics.widthPixels;
            int rotation = defaultDisplay.getRotation();
            Rect rect = new Rect();
            if (z11) {
                rect.set(0, iB, i11, i10 - (p.f(context) ? p.a(context) : 0));
            } else {
                rect.set(0, iB, i11, i10);
            }
            return o6.a.g(rect, i11, i10, -1, rotation);
        } catch (Exception e10) {
            c0.i("ScreenshotHelper", "getScreenshot error,e=" + e10.toString());
            return null;
        }
    }
}
