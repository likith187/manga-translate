package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class ScreenTranslationFullImageHolder extends AppCompatImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5822c = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final PathInterpolator f5823f = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WindowManager f5825b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ScreenTranslationFullImageHolder.this.animate().setListener(null);
            ScreenTranslationFullImageHolder.this.setVisibility(8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenTranslationFullImageHolder(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        this.f5825b = windowManager;
        setAlpha(0.0f);
        setVisibility(8);
        windowManager.addView(this, a());
    }

    private final WindowManager.LayoutParams a() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(0, 0, 0, 0, 2038, 201327376, 1);
        layoutParams.setTitle("ScreenTranslationFullImageHolder");
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public final void b() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFullImageHolder", "hide");
        if (getVisibility() == 0) {
            animate().alpha(0.0f).setDuration(333L).setInterpolator(f5823f).setListener(new b()).start();
        } else {
            animate().setListener(null);
            setVisibility(8);
        }
        this.f5824a = false;
    }

    public final boolean c() {
        return this.f5824a;
    }

    public final void d() {
        animate().setListener(null);
        this.f5825b.removeView(this);
    }

    public final void e(Bitmap bitmap, w params) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(params, "params");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFullImageHolder", "show");
        if (bitmap == null) {
            return;
        }
        this.f5824a = true;
        try {
            r.a aVar = n8.r.Companion;
            if (isAttachedToWindow()) {
                WindowManager windowManager = this.f5825b;
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
                layoutParams2.width = params.b().width();
                layoutParams2.height = params.b().height();
                layoutParams2.x = params.c();
                layoutParams2.y = params.b().top;
                n8.h0 h0Var = n8.h0.INSTANCE;
                windowManager.updateViewLayout(this, layoutParams2);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationFullImageHolder", "Failed to update view layout: " + thM62exceptionOrNullimpl);
        }
        setVisibility(0);
        setImageBitmap(bitmap);
        setForceDarkAllowed(false);
        setScaleType(ImageView.ScaleType.FIT_XY);
        animate().alpha(1.0f).setDuration(333L).setInterpolator(f5823f).start();
    }
}
