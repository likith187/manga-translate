package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    static e a(int i10) {
        return i10 != 0 ? i10 != 1 ? b() : new f() : new m();
    }

    static e b() {
        return new m();
    }

    static g c() {
        return new g();
    }

    public static void d(View view, float f10) {
        Drawable background = view.getBackground();
        if (background instanceof i) {
            ((i) background).setElevation(f10);
        }
    }

    public static void e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof i) {
            f(view, (i) background);
        }
    }

    public static void f(View view, i iVar) {
        if (iVar.isElevationOverlayEnabled()) {
            iVar.setParentAbsoluteElevation(ViewUtils.getParentAbsoluteElevation(view));
        }
    }
}
