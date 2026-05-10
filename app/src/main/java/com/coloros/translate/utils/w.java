package com.coloros.translate.utils;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Toast;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.TranslationApplication;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {
    public static final void c(final View view, final float f10, final float f11, final float f12, final float f13) {
        kotlin.jvm.internal.r.e(view, "<this>");
        view.post(new Runnable() { // from class: com.coloros.translate.utils.v
            @Override // java.lang.Runnable
            public final void run() {
                w.d(view, f10, f12, f11, f13);
            }
        });
    }

    public static final void d(View this_expandTouch, float f10, float f11, float f12, float f13) {
        kotlin.jvm.internal.r.e(this_expandTouch, "$this_expandTouch");
        Rect rect = new Rect();
        this_expandTouch.getHitRect(rect);
        rect.top -= (int) f10;
        rect.bottom += (int) f11;
        rect.left -= (int) f12;
        rect.right += (int) f13;
        TouchDelegate touchDelegate = new TouchDelegate(rect, this_expandTouch);
        ViewParent parent = this_expandTouch.getParent();
        kotlin.jvm.internal.r.c(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent).setTouchDelegate(touchDelegate);
    }

    public static final void e(LottieAnimationView lottieAnimationView) {
        kotlin.jvm.internal.r.e(lottieAnimationView, "<this>");
        lottieAnimationView.j();
        lottieAnimationView.setFrame(0);
    }

    public static final void f(int i10, int i11) {
        g(n0.b(i10), i11);
    }

    public static final void g(final String text, final int i10) {
        kotlin.jvm.internal.r.e(text, "text");
        z0.h(0L, new Runnable() { // from class: com.coloros.translate.utils.u
            @Override // java.lang.Runnable
            public final void run() {
                w.j(text, i10);
            }
        }, 1, null);
    }

    public static /* synthetic */ void h(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        f(i10, i11);
    }

    public static /* synthetic */ void i(String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        g(str, i10);
    }

    public static final void j(String text, int i10) {
        kotlin.jvm.internal.r.e(text, "$text");
        Toast.makeText(TranslationApplication.f4754b.a(), text, i10).show();
    }
}
