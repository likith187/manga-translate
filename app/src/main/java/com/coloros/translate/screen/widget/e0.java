package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$raw;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.widget.ScreenTranslationToolCapsule;
import com.coloros.translate.screen.widget.e0;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: j */
    public static final a f5991j = new a(null);

    /* JADX INFO: renamed from: a */
    private ScreenTranslationToolCapsule.RealView f5992a;

    /* JADX INFO: renamed from: b */
    private ImageView f5993b;

    /* JADX INFO: renamed from: c */
    private final Context f5994c;

    /* JADX INFO: renamed from: d */
    private LottieAnimationView f5995d;

    /* JADX INFO: renamed from: e */
    private LottieAnimationView f5996e;

    /* JADX INFO: renamed from: f */
    private final Handler f5997f;

    /* JADX INFO: renamed from: g */
    private boolean f5998g;

    /* JADX INFO: renamed from: h */
    private boolean f5999h;

    /* JADX INFO: renamed from: i */
    private boolean f6000i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Animator.AnimatorListener {
        b() {
        }

        public static final void b(e0 this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            LottieAnimationView lottieAnimationView = this$0.f5996e;
            if (lottieAnimationView != null) {
                lottieAnimationView.w();
            }
            if (this$0.f6000i) {
                return;
            }
            this$0.k();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playCurrentAnimation] onAnimationCancel loadingViewPre:");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playCurrentAnimation] onAnimationEnd loadingViewPre: ");
            Handler handler = e0.this.f5997f;
            final e0 e0Var = e0.this;
            handler.post(new Runnable() { // from class: com.coloros.translate.screen.widget.f0
                @Override // java.lang.Runnable
                public final void run() {
                    e0.b.b(e0Var);
                }
            });
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playCurrentAnimation] onAnimationRepeat loadingViewPre: ");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playCurrentAnimation] onAnimationStart loadingViewPre:");
        }
    }

    public static final class c implements Animator.AnimatorListener {
        c() {
        }

        public static final void b(e0 this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            LottieAnimationView lottieAnimationView = this$0.f5995d;
            if (lottieAnimationView != null) {
                lottieAnimationView.w();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playLoopAnimation] onAnimationCancel loadingView: ");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playLoopAnimation] onAnimationEnd loadingView:");
            e0.this.f5998g = false;
            Handler handler = e0.this.f5997f;
            final e0 e0Var = e0.this;
            handler.post(new Runnable() { // from class: com.coloros.translate.screen.widget.g0
                @Override // java.lang.Runnable
                public final void run() {
                    e0.c.b(e0Var);
                }
            });
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playLoopAnimation] onAnimationRepeat loadingView: ");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "[playLoopAnimation] onAnimationStart loadingView: ");
        }
    }

    public e0(ScreenTranslationToolCapsule.RealView realView, ImageView imageView, Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f5992a = realView;
        this.f5993b = imageView;
        this.f5994c = context;
        this.f5997f = new Handler(Looper.getMainLooper());
    }

    private final void j() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "playCurrentAnimation ");
        if (this.f5996e == null) {
            LottieAnimationView lottieAnimationView = new LottieAnimationView(this.f5994c);
            lottieAnimationView.setContentDescription(lottieAnimationView.getResources().getString(R$string.screen_translation_name));
            this.f5996e = lottieAnimationView;
            int iGenerateViewId = View.generateViewId();
            LottieAnimationView lottieAnimationView2 = this.f5996e;
            if (lottieAnimationView2 != null) {
                lottieAnimationView2.setId(iGenerateViewId);
            }
            ScreenTranslationToolCapsule.RealView realView = this.f5992a;
            if (realView != null) {
                realView.addView(this.f5996e);
            }
            int dimension = (int) this.f5994c.getResources().getDimension(R$dimen.dp_48);
            androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
            cVar.u(iGenerateViewId, dimension);
            cVar.t(iGenerateViewId, dimension);
            ImageView imageView = this.f5993b;
            if (imageView != null) {
                cVar.r(iGenerateViewId, 3, imageView.getId(), 3);
                cVar.r(iGenerateViewId, 6, imageView.getId(), 6);
                cVar.r(iGenerateViewId, 4, imageView.getId(), 4);
                cVar.r(iGenerateViewId, 7, imageView.getId(), 7);
            }
            cVar.i(this.f5992a);
            LottieAnimationView lottieAnimationView3 = this.f5996e;
            if (lottieAnimationView3 != null) {
                lottieAnimationView3.setAnimation(R$raw.screen_translation_loading_pre);
                lottieAnimationView3.setRepeatCount(0);
            }
        }
        ScreenTranslationToolCapsule.RealView realView2 = this.f5992a;
        if (realView2 != null) {
            realView2.bringChildToFront(this.f5996e);
        }
        LottieAnimationView lottieAnimationView4 = this.f5996e;
        if (lottieAnimationView4 != null) {
            lottieAnimationView4.w();
        }
        LottieAnimationView lottieAnimationView5 = this.f5996e;
        if (lottieAnimationView5 != null) {
            lottieAnimationView5.g(new b());
        }
        LottieAnimationView lottieAnimationView6 = this.f5996e;
        if (lottieAnimationView6 != null) {
            lottieAnimationView6.v();
        }
    }

    public final void k() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "playLoopAnimation ");
        if (this.f5995d == null) {
            LottieAnimationView lottieAnimationView = new LottieAnimationView(this.f5994c);
            lottieAnimationView.setContentDescription(lottieAnimationView.getResources().getString(R$string.screen_translation_name));
            this.f5995d = lottieAnimationView;
            int iGenerateViewId = View.generateViewId();
            LottieAnimationView lottieAnimationView2 = this.f5995d;
            if (lottieAnimationView2 != null) {
                lottieAnimationView2.setId(iGenerateViewId);
            }
            ScreenTranslationToolCapsule.RealView realView = this.f5992a;
            if (realView != null) {
                realView.addView(this.f5995d);
            }
            int dimension = (int) this.f5994c.getResources().getDimension(R$dimen.dp_48);
            androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
            cVar.u(iGenerateViewId, dimension);
            cVar.t(iGenerateViewId, dimension);
            ImageView imageView = this.f5993b;
            if (imageView != null) {
                cVar.r(iGenerateViewId, 3, imageView.getId(), 3);
                cVar.r(iGenerateViewId, 6, imageView.getId(), 6);
                cVar.r(iGenerateViewId, 4, imageView.getId(), 4);
                cVar.r(iGenerateViewId, 7, imageView.getId(), 7);
            }
            cVar.i(this.f5992a);
            LottieAnimationView lottieAnimationView3 = this.f5995d;
            if (lottieAnimationView3 != null) {
                lottieAnimationView3.setAnimation(R$raw.screen_translation_loading_loop);
                lottieAnimationView3.setRepeatMode(1);
                lottieAnimationView3.setRepeatCount(-1);
            }
        }
        ScreenTranslationToolCapsule.RealView realView2 = this.f5992a;
        if (realView2 != null) {
            realView2.bringChildToFront(this.f5995d);
        }
        LottieAnimationView lottieAnimationView4 = this.f5995d;
        if (lottieAnimationView4 != null) {
            lottieAnimationView4.w();
        }
        LottieAnimationView lottieAnimationView5 = this.f5995d;
        if (lottieAnimationView5 != null) {
            lottieAnimationView5.g(new c());
        }
        LottieAnimationView lottieAnimationView6 = this.f5995d;
        if (lottieAnimationView6 != null) {
            lottieAnimationView6.v();
        }
    }

    public static final void m(e0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f5999h) {
            com.coloros.translate.utils.c0.f7098a.i("ScreenTranslationSequencePlayer", "[start] view isDestroyed");
            return;
        }
        this$0.f6000i = false;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationSequencePlayer", "action start()");
        if (this$0.f5998g) {
            return;
        }
        aVar.d("ScreenTranslationSequencePlayer", "action start() +++++++");
        this$0.f5998g = true;
        LottieAnimationView lottieAnimationView = this$0.f5996e;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(0);
        }
        LottieAnimationView lottieAnimationView2 = this$0.f5995d;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setVisibility(0);
        }
        this$0.j();
    }

    public static final void o(e0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f5999h) {
            com.coloros.translate.utils.c0.f7098a.i("ScreenTranslationSequencePlayer", "[stop] view isDestroyed");
            return;
        }
        this$0.f6000i = true;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "action stop()++++++++ ");
        this$0.f5997f.removeCallbacksAndMessages(null);
        this$0.f5998g = false;
        LottieAnimationView lottieAnimationView = this$0.f5996e;
        if (lottieAnimationView != null) {
            lottieAnimationView.j();
        }
        LottieAnimationView lottieAnimationView2 = this$0.f5995d;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.j();
        }
        LottieAnimationView lottieAnimationView3 = this$0.f5996e;
        if (lottieAnimationView3 != null) {
            lottieAnimationView3.setVisibility(8);
        }
        LottieAnimationView lottieAnimationView4 = this$0.f5995d;
        if (lottieAnimationView4 == null) {
            return;
        }
        lottieAnimationView4.setVisibility(8);
    }

    public final void i() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationSequencePlayer", "destroy view");
        this.f5999h = true;
        if (this.f5993b != null) {
            this.f5993b = null;
        }
        LottieAnimationView lottieAnimationView = this.f5996e;
        if (lottieAnimationView != null) {
            ScreenTranslationToolCapsule.RealView realView = this.f5992a;
            if (realView != null) {
                realView.removeView(lottieAnimationView);
            }
            this.f5996e = null;
        }
        LottieAnimationView lottieAnimationView2 = this.f5995d;
        if (lottieAnimationView2 != null) {
            ScreenTranslationToolCapsule.RealView realView2 = this.f5992a;
            if (realView2 != null) {
                realView2.removeView(lottieAnimationView2);
            }
            this.f5995d = null;
        }
        if (this.f5992a != null) {
            this.f5992a = null;
        }
        this.f5997f.removeCallbacksAndMessages(null);
    }

    public final void l() {
        this.f5997f.post(new Runnable() { // from class: com.coloros.translate.screen.widget.c0
            @Override // java.lang.Runnable
            public final void run() {
                e0.m(this.f5979a);
            }
        });
    }

    public final void n() {
        this.f5997f.post(new Runnable() { // from class: com.coloros.translate.screen.widget.d0
            @Override // java.lang.Runnable
            public final void run() {
                e0.o(this.f5985a);
            }
        });
    }
}
