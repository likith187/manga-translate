package com.coloros.translate.screen.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coui.appcompat.pressfeedback.COUIPressFeedbackHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6021g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PathInterpolator f6022h = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FrameLayout.LayoutParams f6024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageView f6025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FrameLayout f6026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final COUIPressFeedbackHelper f6027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f6028f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public i0(Context context, FrameLayout drawRoot) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(drawRoot, "drawRoot");
        int dimension = (int) context.getResources().getDimension(R$dimen.dp_64);
        this.f6023a = dimension;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimension, dimension);
        layoutParams.gravity = 8388659;
        layoutParams.setMarginStart(0);
        layoutParams.topMargin = 0;
        this.f6024b = layoutParams;
        ImageView imageView = new ImageView(context);
        this.f6025c = imageView;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f6026d = frameLayout;
        this.f6027e = new COUIPressFeedbackHelper(frameLayout, 2);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(dimension, dimension));
        imageView.setImageResource(R$drawable.ic_tool_capsule_shrink_bg);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(dimension, dimension));
        frameLayout.setVisibility(8);
        frameLayout.addView(imageView);
        drawRoot.addView(frameLayout, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(i0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6028f = null;
        this$0.f6027e.executeFeedbackAnimator(false);
    }

    public final void b() {
        if (this.f6026d.isShown()) {
            this.f6027e.setTargetView(this.f6026d);
            this.f6027e.executeFeedbackAnimator(true);
            Runnable runnable = this.f6028f;
            if (runnable == null) {
                this.f6028f = new Runnable() { // from class: com.coloros.translate.screen.widget.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        i0.c(this.f6013a);
                    }
                };
            } else {
                this.f6026d.removeCallbacks(runnable);
            }
            this.f6026d.postDelayed(this.f6028f, 300L);
        }
    }

    public final void d() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationShrinkView", "hideShrinkView");
        this.f6026d.setAlpha(0.0f);
        this.f6026d.setVisibility(8);
    }

    public final void e() {
        Object objM59constructorimpl;
        Runnable runnable;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationShrinkView", "onDestroy");
        try {
            r.a aVar = n8.r.Companion;
            if (this.f6026d.isAttachedToWindow() && (runnable = this.f6028f) != null) {
                this.f6026d.removeCallbacks(runnable);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationShrinkView", "onDestroy:" + thM62exceptionOrNullimpl);
        }
    }

    public final void f(float f10) {
        this.f6026d.setTranslationX(f10);
    }

    public final void g(float f10) {
        this.f6026d.setTranslationY(f10);
    }

    public final void h() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationShrinkView", "showShrinkView");
        if (this.f6025c.isShown()) {
            return;
        }
        this.f6026d.setVisibility(0);
        FrameLayout frameLayout = this.f6026d;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(frameLayout, "alpha", frameLayout.getAlpha(), 1.0f);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.setInterpolator(f6022h);
        objectAnimatorOfFloat.start();
    }
}
