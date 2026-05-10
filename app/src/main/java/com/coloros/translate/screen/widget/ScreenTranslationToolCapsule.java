package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.screen.R$id;
import com.coloros.translate.screen.R$layout;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.ScreenTranslationService;
import com.coloros.translate.screen.translate.engine.language.j;
import com.coloros.translate.screen.widget.ScreenTranslationToolCapsule;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.animation.COUISpringInterpolator;
import com.coui.appcompat.pressfeedback.COUIPressFeedbackHelper;
import com.oplus.os.LinearmotorVibrator;
import com.oplus.os.WaveformEffect;
import com.oplus.view.ViewRootManager;
import com.oplus.wrapper.os.SystemProperties;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationToolCapsule extends View implements d7.b {
    public static final a I0 = new a(null);
    private static final PathInterpolator J0 = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
    private ImageView A;
    private Object A0;
    private TextView B;
    private Method B0;
    private TextView C;
    private ViewRootManager C0;
    private boolean D;
    private com.coloros.translate.screen.widget.m D0;
    private boolean E;
    private long E0;
    private final COUIPressFeedbackHelper F;
    private View F0;
    private final WaveformEffect G;
    private boolean G0;
    private final n8.j H;
    private final Runnable H0;
    private com.coloros.translate.screen.widget.e0 I;
    private i0 J;
    private final GestureDetector K;
    private final n8.j L;
    private final n8.j M;
    private final FrameLayout.LayoutParams N;
    private final RectF O;
    private final d7.l P;
    private final d7.n Q;
    private boolean R;
    private final d7.c S;
    private final d7.h T;
    private c2 U;
    private boolean V;
    private Runnable W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f5841a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f5842a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.coloros.translate.screen.widget.h f5843b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f5844b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RealView f5845c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private AnimatorSet f5846c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private Animator f5847d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private ValueAnimator f5848e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f5849f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private AnimatorSet f5850f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private AnimatorSet f5851g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f5852h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private AnimatorSet f5853h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f5854i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private AnimatorSet f5855i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f5856j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private ValueAnimator f5857j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f5858k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private ValueAnimator f5859k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f5860l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private ValueAnimator f5861l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f5862m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private VelocityTracker f5863m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f5864n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private final float f5865n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f5866o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f5867o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f5868p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f5869p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float f5870q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private Locale f5871q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f5872r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f5873r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f5874s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int[] f5875s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f5876t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f5877t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f5878u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private float f5879u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f5880v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private float f5881v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View f5882w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private float f5883w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View f5884x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private float f5885x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ImageView f5886y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private WindowManager.LayoutParams f5887y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ImageView f5888z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private int f5889z0;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class a0 implements Animator.AnimatorListener {
        public a0(ScreenTranslationToolCapsule screenTranslationToolCapsule) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.f5851g0 = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ImageView imageView = ScreenTranslationToolCapsule.this.f5888z;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            ImageView imageView2 = ScreenTranslationToolCapsule.this.f5888z;
            if (imageView2 == null) {
                return;
            }
            imageView2.setAlpha(0.0f);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5894a;

        static {
            int[] iArr = new int[c2.values().length];
            try {
                iArr[c2.ZONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c2.FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c2.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f5894a = iArr;
        }
    }

    public static final class b0 implements Animator.AnimatorListener {
        public b0(ScreenTranslationToolCapsule screenTranslationToolCapsule) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.f5853h0 = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = ScreenTranslationToolCapsule.this.f5874s;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = ScreenTranslationToolCapsule.this.f5884x;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = ScreenTranslationToolCapsule.this.f5882w;
            if (view3 != null) {
                view3.setVisibility(0);
            }
            if (ScreenTranslationToolCapsule.this.U == c2.NONE) {
                View view4 = ScreenTranslationToolCapsule.this.f5876t;
                if (view4 != null) {
                    view4.setVisibility(0);
                }
                View view5 = ScreenTranslationToolCapsule.this.f5878u;
                if (view5 != null) {
                    view5.setVisibility(0);
                }
                View view6 = ScreenTranslationToolCapsule.this.f5876t;
                if (view6 != null) {
                    view6.setAlpha(0.0f);
                }
                View view7 = ScreenTranslationToolCapsule.this.f5878u;
                if (view7 != null) {
                    view7.setAlpha(0.0f);
                }
            } else {
                View view8 = ScreenTranslationToolCapsule.this.f5880v;
                if (view8 != null) {
                    view8.setVisibility(0);
                }
                View view9 = ScreenTranslationToolCapsule.this.f5880v;
                if (view9 != null) {
                    view9.setAlpha(0.0f);
                }
            }
            View view10 = ScreenTranslationToolCapsule.this.f5884x;
            if (view10 != null) {
                view10.setAlpha(0.0f);
            }
            View view11 = ScreenTranslationToolCapsule.this.f5882w;
            if (view11 == null) {
                return;
            }
            view11.setAlpha(0.0f);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ float $currentHeight;
        final /* synthetic */ int $currentWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i10, float f10) {
            super(0);
            this.$currentWidth = i10;
            this.$currentHeight = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(ScreenTranslationToolCapsule this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            RealView realView = this$0.getRealView();
            if (realView == null) {
                return;
            }
            realView.setLayoutParams(this$0.N);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationToolCapsule.this.N.width = this.$currentWidth;
            ScreenTranslationToolCapsule.this.N.height = (int) this.$currentHeight;
            final ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.m1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationToolCapsule.c.invoke$lambda$0(screenTranslationToolCapsule);
                }
            });
            ScreenTranslationToolCapsule.this.getEventLayoutParams().width = ScreenTranslationToolCapsule.this.N.width;
            ScreenTranslationToolCapsule.this.getEventLayoutParams().height = ScreenTranslationToolCapsule.this.N.height;
            ScreenTranslationToolCapsule.this.e2(true);
            ScreenTranslationToolCapsule.this.f1();
        }
    }

    public static final class c0 implements Animator.AnimatorListener {
        public c0(ScreenTranslationToolCapsule screenTranslationToolCapsule) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.f5855i0 = null;
            ImageView imageView = ScreenTranslationToolCapsule.this.f5888z;
            if (imageView == null) {
                return;
            }
            imageView.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ImageView imageView = ScreenTranslationToolCapsule.this.f5888z;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            ImageView imageView2 = ScreenTranslationToolCapsule.this.f5888z;
            if (imageView2 == null) {
                return;
            }
            imageView2.setAlpha(1.0f);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ArgbEvaluator mo8invoke() {
            return new ArgbEvaluator();
        }
    }

    public static final class d0 implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.jvm.internal.z f5897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ScreenTranslationToolCapsule f5898b;

        public d0(kotlin.jvm.internal.z zVar, ScreenTranslationToolCapsule screenTranslationToolCapsule) {
            this.f5897a = zVar;
            this.f5898b = screenTranslationToolCapsule;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f5897a.element) {
                View view = this.f5898b.f5880v;
                if (view != null) {
                    view.setVisibility(0);
                }
                View view2 = this.f5898b.f5876t;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
                View view3 = this.f5898b.f5878u;
                if (view3 == null) {
                    return;
                }
                view3.setVisibility(8);
                return;
            }
            View view4 = this.f5898b.f5880v;
            if (view4 != null) {
                view4.setVisibility(8);
            }
            View view5 = this.f5898b.f5876t;
            if (view5 != null) {
                view5.setVisibility(0);
            }
            View view6 = this.f5898b.f5878u;
            if (view6 == null) {
                return;
            }
            view6.setVisibility(0);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationToolCapsule.this.U = c2.ZONE;
            ScreenTranslationToolCapsule.this.l2(false);
            ScreenTranslationToolCapsule.this.a2();
        }
    }

    public static final class e0 implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.jvm.internal.z f5899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ScreenTranslationToolCapsule f5900b;

        public e0(kotlin.jvm.internal.z zVar, ScreenTranslationToolCapsule screenTranslationToolCapsule) {
            this.f5899a = zVar;
            this.f5900b = screenTranslationToolCapsule;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f5899a.element) {
                if (this.f5900b.f5873r0) {
                    ImageView imageView = this.f5900b.f5886y;
                    if (imageView == null) {
                        return;
                    }
                    imageView.setRotation(0.0f);
                    return;
                }
                ImageView imageView2 = this.f5900b.f5886y;
                if (imageView2 == null) {
                    return;
                }
                imageView2.setRotation(180.0f);
                return;
            }
            if (this.f5900b.f5873r0) {
                ImageView imageView3 = this.f5900b.f5886y;
                if (imageView3 == null) {
                    return;
                }
                imageView3.setRotation(180.0f);
                return;
            }
            ImageView imageView4 = this.f5900b.f5886y;
            if (imageView4 == null) {
                return;
            }
            imageView4.setRotation(0.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationToolCapsule.this.U = c2.FULL;
            ScreenTranslationToolCapsule.this.l2(false);
            ScreenTranslationToolCapsule.this.a2();
        }
    }

    static final class f0 extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final WindowManager mo8invoke() {
            Object systemService = this.$context.getSystemService("window");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            return (WindowManager) systemService;
        }
    }

    public static final class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ScreenTranslationToolCapsule.this.f5843b.g();
        }
    }

    public static final class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "createRealView:realViewReadyJob translateDirectly");
            ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.postOnAnimation(screenTranslationToolCapsule.new k());
        }
    }

    public static final class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.postOnAnimation(screenTranslationToolCapsule.new l());
        }
    }

    public static final class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Drawable backgroundBlurDrawable;
            RealView realView = ScreenTranslationToolCapsule.this.getRealView();
            if (realView != null) {
                realView.setAlpha(1.0f);
            }
            ViewRootManager viewRootManager = ScreenTranslationToolCapsule.this.C0;
            if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
                Object obj = ScreenTranslationToolCapsule.this.A0;
                backgroundBlurDrawable = obj instanceof Drawable ? (Drawable) obj : null;
            }
            if (backgroundBlurDrawable == null) {
                return;
            }
            backgroundBlurDrawable.setAlpha(255);
        }
    }

    static final class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Drawable backgroundBlurDrawable;
            RealView realView = ScreenTranslationToolCapsule.this.getRealView();
            if (realView != null) {
                realView.setAlpha(1.0f);
            }
            ViewRootManager viewRootManager = ScreenTranslationToolCapsule.this.C0;
            if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
                Object obj = ScreenTranslationToolCapsule.this.A0;
                backgroundBlurDrawable = obj instanceof Drawable ? (Drawable) obj : null;
            }
            if (backgroundBlurDrawable != null) {
                backgroundBlurDrawable.setAlpha(255);
            }
            ScreenTranslationToolCapsule.this.a2();
        }
    }

    static final class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ScreenTranslationToolCapsule.this.S1();
        }
    }

    public static final class m extends GestureDetector.SimpleOnGestureListener {
        m() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(ScreenTranslationToolCapsule this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.F.executeFeedbackAnimator(false);
            this$0.F0 = null;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent event) {
            kotlin.jvm.internal.r.e(event, "event");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "onTouchEvent: onSingleTapUp:" + ScreenTranslationToolCapsule.this.f5842a0);
            if (!ScreenTranslationToolCapsule.this.r1() && !com.coloros.translate.utils.j.f7127a.b(500L)) {
                if (ScreenTranslationToolCapsule.this.f5842a0) {
                    ScreenTranslationToolCapsule.this.f5842a0 = false;
                    ScreenTranslationToolCapsule.k2(ScreenTranslationToolCapsule.this, null, 1, null);
                    return true;
                }
                ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
                if (screenTranslationToolCapsule.t1(event, screenTranslationToolCapsule.f5882w)) {
                    ScreenTranslationToolCapsule screenTranslationToolCapsule2 = ScreenTranslationToolCapsule.this;
                    screenTranslationToolCapsule2.F0 = screenTranslationToolCapsule2.f5882w;
                    ScreenTranslationToolCapsule.this.a1();
                    ScreenTranslationToolCapsule screenTranslationToolCapsule3 = ScreenTranslationToolCapsule.this;
                    screenTranslationToolCapsule3.h2(screenTranslationToolCapsule3.f5882w);
                } else {
                    ScreenTranslationToolCapsule screenTranslationToolCapsule4 = ScreenTranslationToolCapsule.this;
                    if (screenTranslationToolCapsule4.t1(event, screenTranslationToolCapsule4.f5884x)) {
                        ScreenTranslationToolCapsule screenTranslationToolCapsule5 = ScreenTranslationToolCapsule.this;
                        screenTranslationToolCapsule5.F0 = screenTranslationToolCapsule5.f5884x;
                        ScreenTranslationToolCapsule.this.Z0();
                        ScreenTranslationToolCapsule screenTranslationToolCapsule6 = ScreenTranslationToolCapsule.this;
                        screenTranslationToolCapsule6.h2(screenTranslationToolCapsule6.f5884x);
                    } else {
                        ScreenTranslationToolCapsule screenTranslationToolCapsule7 = ScreenTranslationToolCapsule.this;
                        if (screenTranslationToolCapsule7.t1(event, screenTranslationToolCapsule7.f5878u)) {
                            ScreenTranslationToolCapsule screenTranslationToolCapsule8 = ScreenTranslationToolCapsule.this;
                            screenTranslationToolCapsule8.F0 = screenTranslationToolCapsule8.f5878u;
                            ScreenTranslationToolCapsule.this.d1();
                            ScreenTranslationToolCapsule screenTranslationToolCapsule9 = ScreenTranslationToolCapsule.this;
                            screenTranslationToolCapsule9.h2(screenTranslationToolCapsule9.f5878u);
                            ScreenTranslationToolCapsule.this.B1();
                        } else {
                            ScreenTranslationToolCapsule screenTranslationToolCapsule10 = ScreenTranslationToolCapsule.this;
                            if (screenTranslationToolCapsule10.t1(event, screenTranslationToolCapsule10.f5876t)) {
                                ScreenTranslationToolCapsule screenTranslationToolCapsule11 = ScreenTranslationToolCapsule.this;
                                screenTranslationToolCapsule11.F0 = screenTranslationToolCapsule11.f5876t;
                                ScreenTranslationToolCapsule.this.b1();
                                ScreenTranslationToolCapsule screenTranslationToolCapsule12 = ScreenTranslationToolCapsule.this;
                                screenTranslationToolCapsule12.h2(screenTranslationToolCapsule12.f5876t);
                            } else {
                                ScreenTranslationToolCapsule screenTranslationToolCapsule13 = ScreenTranslationToolCapsule.this;
                                if (screenTranslationToolCapsule13.t1(event, screenTranslationToolCapsule13.B)) {
                                    ScreenTranslationToolCapsule.this.c1(true);
                                } else {
                                    ScreenTranslationToolCapsule screenTranslationToolCapsule14 = ScreenTranslationToolCapsule.this;
                                    if (screenTranslationToolCapsule14.t1(event, screenTranslationToolCapsule14.C)) {
                                        ScreenTranslationToolCapsule.this.c1(false);
                                    } else {
                                        ScreenTranslationToolCapsule screenTranslationToolCapsule15 = ScreenTranslationToolCapsule.this;
                                        if (screenTranslationToolCapsule15.t1(event, screenTranslationToolCapsule15.A)) {
                                            ScreenTranslationToolCapsule.this.c1(true);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                View view = ScreenTranslationToolCapsule.this.F0;
                if (view != null) {
                    final ScreenTranslationToolCapsule screenTranslationToolCapsule16 = ScreenTranslationToolCapsule.this;
                    screenTranslationToolCapsule16.F.setTargetView(view);
                    screenTranslationToolCapsule16.F.executeFeedbackAnimator(true);
                    screenTranslationToolCapsule16.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.n1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ScreenTranslationToolCapsule.m.b(screenTranslationToolCapsule16);
                        }
                    }, 100L);
                }
            }
            return true;
        }
    }

    static final class n extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ int $blurColor;
        final /* synthetic */ ViewRootManager $viewRootManager;
        int label;
        final /* synthetic */ ScreenTranslationToolCapsule this$0;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ ViewRootManager $viewRootManager;
            int label;
            final /* synthetic */ ScreenTranslationToolCapsule this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ViewRootManager viewRootManager, ScreenTranslationToolCapsule screenTranslationToolCapsule, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.$viewRootManager = viewRootManager;
                this.this$0 = screenTranslationToolCapsule;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.$viewRootManager, this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                Drawable backgroundBlurDrawable = this.$viewRootManager.getBackgroundBlurDrawable();
                if (backgroundBlurDrawable != null) {
                    ScreenTranslationToolCapsule screenTranslationToolCapsule = this.this$0;
                    backgroundBlurDrawable.setAlpha(0);
                    View view = screenTranslationToolCapsule.f5872r;
                    if (view != null) {
                        view.setBackground(backgroundBlurDrawable);
                    }
                }
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "initBlurEffect:end");
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(ViewRootManager viewRootManager, ScreenTranslationToolCapsule screenTranslationToolCapsule, int i10, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$viewRootManager = viewRootManager;
            this.this$0 = screenTranslationToolCapsule;
            this.$blurColor = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new n(this.$viewRootManager, this.this$0, this.$blurColor, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                this.$viewRootManager.setBlurRadius(220);
                this.$viewRootManager.setCornerRadius(this.this$0.f5870q);
                this.$viewRootManager.setColor(this.$blurColor);
                kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
                a aVar = new a(this.$viewRootManager, this.this$0, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(p1VarC, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((n) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ScreenTranslationToolCapsule.this.F.executeFeedbackAnimator(false);
            ScreenTranslationToolCapsule.this.F0 = null;
        }
    }

    static final class p extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Float mo8invoke() {
            return Float.valueOf(ViewConfiguration.get(this.$context).getScaledMaximumFlingVelocity());
        }
    }

    static final class q extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ kotlin.jvm.internal.a0 $targetColor;
        private /* synthetic */ Object L$0;
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ ViewRootManager $viewRootManager;
            int label;
            final /* synthetic */ ScreenTranslationToolCapsule this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ViewRootManager viewRootManager, ScreenTranslationToolCapsule screenTranslationToolCapsule, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.$viewRootManager = viewRootManager;
                this.this$0 = screenTranslationToolCapsule;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.$viewRootManager, this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                Drawable backgroundBlurDrawable = this.$viewRootManager.getBackgroundBlurDrawable();
                if (backgroundBlurDrawable == null) {
                    return null;
                }
                View view = this.this$0.f5872r;
                if (view != null) {
                    view.setBackground(backgroundBlurDrawable);
                }
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        static final class b extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ ScreenTranslationToolCapsule this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(ScreenTranslationToolCapsule screenTranslationToolCapsule, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationToolCapsule;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new b(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                Object obj2 = this.this$0.A0;
                Drawable drawable = obj2 instanceof Drawable ? (Drawable) obj2 : null;
                if (drawable == null) {
                    return null;
                }
                View view = this.this$0.f5872r;
                if (view != null) {
                    view.setBackground(drawable);
                }
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((b) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(kotlin.jvm.internal.a0 a0Var, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$targetColor = a0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            q qVar = ScreenTranslationToolCapsule.this.new q(this.$targetColor, dVar);
            qVar.L$0 = obj;
            return qVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        
            if (((n8.h0) r9) == null) goto L23;
         */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.f()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L25
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                n8.s.b(r9)     // Catch: java.lang.Exception -> L13
                goto L84
            L13:
                r8 = move-exception
                goto L87
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L1d:
                java.lang.Object r1 = r8.L$0
                kotlinx.coroutines.c0 r1 = (kotlinx.coroutines.c0) r1
                n8.s.b(r9)     // Catch: java.lang.Exception -> L13
                goto L51
            L25:
                n8.s.b(r9)
                java.lang.Object r9 = r8.L$0
                kotlinx.coroutines.c0 r9 = (kotlinx.coroutines.c0) r9
                com.coloros.translate.screen.widget.ScreenTranslationToolCapsule r1 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.this     // Catch: java.lang.Exception -> L13
                com.oplus.view.ViewRootManager r1 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.i0(r1)     // Catch: java.lang.Exception -> L13
                if (r1 == 0) goto L55
                kotlin.jvm.internal.a0 r5 = r8.$targetColor     // Catch: java.lang.Exception -> L13
                com.coloros.translate.screen.widget.ScreenTranslationToolCapsule r6 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.this     // Catch: java.lang.Exception -> L13
                int r5 = r5.element     // Catch: java.lang.Exception -> L13
                r1.setColor(r5)     // Catch: java.lang.Exception -> L13
                kotlinx.coroutines.p1 r5 = kotlinx.coroutines.o0.c()     // Catch: java.lang.Exception -> L13
                com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$q$a r7 = new com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$q$a     // Catch: java.lang.Exception -> L13
                r7.<init>(r1, r6, r4)     // Catch: java.lang.Exception -> L13
                r8.L$0 = r9     // Catch: java.lang.Exception -> L13
                r8.label = r3     // Catch: java.lang.Exception -> L13
                java.lang.Object r9 = kotlinx.coroutines.f.c(r5, r7, r8)     // Catch: java.lang.Exception -> L13
                if (r9 != r0) goto L51
                return r0
            L51:
                n8.h0 r9 = (n8.h0) r9     // Catch: java.lang.Exception -> L13
                if (r9 != 0) goto La3
            L55:
                com.coloros.translate.screen.widget.ScreenTranslationToolCapsule r9 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.this     // Catch: java.lang.Exception -> L13
                kotlin.jvm.internal.a0 r1 = r8.$targetColor     // Catch: java.lang.Exception -> L13
                java.lang.reflect.Method r3 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.a0(r9)     // Catch: java.lang.Exception -> L13
                if (r3 == 0) goto L70
                java.lang.Object r5 = com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.F(r9)     // Catch: java.lang.Exception -> L13
                int r1 = r1.element     // Catch: java.lang.Exception -> L13
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.b.c(r1)     // Catch: java.lang.Exception -> L13
                java.lang.Object[] r1 = new java.lang.Object[]{r1}     // Catch: java.lang.Exception -> L13
                r3.invoke(r5, r1)     // Catch: java.lang.Exception -> L13
            L70:
                kotlinx.coroutines.p1 r1 = kotlinx.coroutines.o0.c()     // Catch: java.lang.Exception -> L13
                com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$q$b r3 = new com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$q$b     // Catch: java.lang.Exception -> L13
                r3.<init>(r9, r4)     // Catch: java.lang.Exception -> L13
                r8.L$0 = r4     // Catch: java.lang.Exception -> L13
                r8.label = r2     // Catch: java.lang.Exception -> L13
                java.lang.Object r9 = kotlinx.coroutines.f.c(r1, r3, r8)     // Catch: java.lang.Exception -> L13
                if (r9 != r0) goto L84
                return r0
            L84:
                n8.h0 r9 = (n8.h0) r9     // Catch: java.lang.Exception -> L13
                goto La3
            L87:
                com.coloros.translate.utils.c0$a r9 = com.coloros.translate.utils.c0.f7098a
                java.lang.String r8 = n8.e.b(r8)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "setBlurEffect exception "
                r0.append(r1)
                r0.append(r8)
                java.lang.String r8 = r0.toString()
                java.lang.String r0 = "ScreenTranslationToolCapsule"
                r9.e(r0, r8)
            La3:
                n8.h0 r8 = n8.h0.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.q.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((q) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    public static final class r extends AnimatorListenerAdapter {
        r() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "startHideAnim onAnimationEnd " + animation);
            RealView realView = ScreenTranslationToolCapsule.this.getRealView();
            if (realView == null) {
                return;
            }
            realView.setVisibility(8);
        }
    }

    public static final class s extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w8.a f5910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ScreenTranslationToolCapsule f5911b;

        s(w8.a aVar, ScreenTranslationToolCapsule screenTranslationToolCapsule) {
            this.f5910a = aVar;
            this.f5911b = screenTranslationToolCapsule;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            w8.a aVar = this.f5910a;
            if (aVar != null) {
                aVar.mo8invoke();
            }
            this.f5911b.f5861l0 = null;
        }
    }

    public static final class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f5913b;

        public t(Context context) {
            this.f5913b = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM59constructorimpl;
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "longPressRunnable");
            try {
                r.a aVar = n8.r.Companion;
                Object systemService = this.f5913b.getSystemService("linearmotor");
                n8.h0 h0Var = null;
                LinearmotorVibrator linearmotorVibrator = systemService instanceof LinearmotorVibrator ? (LinearmotorVibrator) systemService : null;
                if (linearmotorVibrator != null) {
                    linearmotorVibrator.vibrate(ScreenTranslationToolCapsule.this.G);
                    h0Var = n8.h0.INSTANCE;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "vibrate: error " + thM62exceptionOrNullimpl.getMessage());
            }
            i0 i0Var = ScreenTranslationToolCapsule.this.J;
            if (i0Var != null) {
                i0Var.b();
            }
            ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.F0 = screenTranslationToolCapsule.getRealView();
            View view = ScreenTranslationToolCapsule.this.F0;
            if (view != null) {
                ScreenTranslationToolCapsule.this.F.setTargetView(view);
                ScreenTranslationToolCapsule.this.F.executeFeedbackAnimator(true);
                ScreenTranslationToolCapsule screenTranslationToolCapsule2 = ScreenTranslationToolCapsule.this;
                screenTranslationToolCapsule2.postDelayed(screenTranslationToolCapsule2.new o(), 300L);
            }
        }
    }

    public static final class u implements Animator.AnimatorListener {
        public u() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.f5857j0 = null;
            ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.f5869p0 = screenTranslationToolCapsule.N.height;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class v implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f5916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ w8.a f5917c;

        public v(boolean z10, w8.a aVar) {
            this.f5916b = z10;
            this.f5917c = aVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.p2(this.f5916b);
            w8.a aVar = this.f5917c;
            if (aVar != null) {
                aVar.mo8invoke();
            }
            ScreenTranslationToolCapsule.this.f5859k0 = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class w extends AnimatorListenerAdapter {
        w() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ScreenTranslationToolCapsule.this.f5847d0 = null;
        }
    }

    public static final class x extends AnimatorListenerAdapter {
        x() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            super.onAnimationCancel(animation);
            ScreenTranslationToolCapsule.this.setViewStatusWithAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ScreenTranslationToolCapsule.this.f5847d0 = null;
            ScreenTranslationToolCapsule.this.setViewStatusWithAlpha(1.0f);
        }
    }

    public static final class y implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f5921b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ w8.a f5922c;

        public y(boolean z10, w8.a aVar) {
            this.f5921b = z10;
            this.f5922c = aVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule screenTranslationToolCapsule = ScreenTranslationToolCapsule.this;
            screenTranslationToolCapsule.f5869p0 = screenTranslationToolCapsule.N.height;
            ScreenTranslationToolCapsule.this.p2(this.f5921b);
            w8.a aVar = this.f5922c;
            if (aVar != null) {
                aVar.mo8invoke();
            }
            ScreenTranslationToolCapsule.this.X0();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class z implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ w8.a f5924b;

        public z(ScreenTranslationToolCapsule screenTranslationToolCapsule, w8.a aVar) {
            this.f5924b = aVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ScreenTranslationToolCapsule.this.f5850f0 = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = ScreenTranslationToolCapsule.this.f5874s;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = ScreenTranslationToolCapsule.this.f5884x;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            if (ScreenTranslationToolCapsule.this.U == c2.NONE) {
                View view3 = ScreenTranslationToolCapsule.this.f5876t;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
                View view4 = ScreenTranslationToolCapsule.this.f5878u;
                if (view4 != null) {
                    view4.setVisibility(0);
                }
            } else {
                View view5 = ScreenTranslationToolCapsule.this.f5880v;
                if (view5 != null) {
                    view5.setVisibility(0);
                }
            }
            View view6 = ScreenTranslationToolCapsule.this.f5882w;
            if (view6 != null) {
                view6.setVisibility(0);
            }
            ScreenTranslationToolCapsule.this.U1(this.f5924b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenTranslationToolCapsule(Context context, FrameLayout drawRoot, com.coloros.translate.screen.widget.h onEvent) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(drawRoot, "drawRoot");
        kotlin.jvm.internal.r.e(onEvent, "onEvent");
        this.f5841a = drawRoot;
        this.f5843b = onEvent;
        this.f5849f = getResources().getDimension(R$dimen.translation_tool_capsule_margin_bottom);
        this.f5852h = com.coloros.translate.screen.utils.k.e(context);
        this.f5854i = getResources().getDimension(R$dimen.dp_3);
        this.f5856j = getResources().getDimension(R$dimen.translation_tool_capsule_shrink_width);
        this.f5858k = getResources().getDimension(R$dimen.translation_tool_capsule_shrink_width);
        this.f5860l = getResources().getDimension(R$dimen.translation_tool_capsule_fold_height);
        this.f5862m = getResources().getDimension(R$dimen.translation_tool_capsule_height);
        this.f5864n = Color.parseColor("#CC333333");
        this.f5866o = Color.parseColor("#99333333");
        this.f5868p = Color.parseColor("#EB2B2A2A");
        this.f5870q = getResources().getDimension(R$dimen.dp_32);
        this.E = true;
        this.F = new COUIPressFeedbackHelper(this, 2);
        this.G = new WaveformEffect.Builder().setEffectType(1).setEffectLoop(false).build();
        this.H = n8.k.b(new f0(context));
        this.K = new GestureDetector(context, new m());
        this.L = n8.k.b(new p(context));
        this.M = n8.k.b(d.INSTANCE);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388659;
        layoutParams.setMarginStart(0);
        layoutParams.topMargin = 0;
        this.N = layoutParams;
        RectF rectF = new RectF();
        this.O = rectF;
        d7.l lVarJ = d7.l.j(context);
        kotlin.jvm.internal.r.d(lVarJ, "create(...)");
        this.P = lVarJ;
        d7.n nVar = new d7.n();
        this.Q = nVar;
        d7.d dVarM = ((d7.c) new d7.c(0, 1, rectF).L(new Runnable() { // from class: com.coloros.translate.screen.widget.r0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.S0(this.f6078a);
            }
        })).M(new Runnable() { // from class: com.coloros.translate.screen.widget.s0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.T0(this.f6081a);
            }
        });
        d7.c cVar = (d7.c) dVarM;
        cVar.B(5.5f, 1.1f);
        cVar.c(nVar);
        kotlin.jvm.internal.r.d(dVarM, "apply(...)");
        this.S = cVar;
        d7.h hVar = (d7.h) ((d7.h) ((d7.h) ((d7.h) new d7.h().L(new Runnable() { // from class: com.coloros.translate.screen.widget.t0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.l1(this.f6084a);
            }
        })).M(new Runnable() { // from class: com.coloros.translate.screen.widget.v0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.m1(this.f6093a);
            }
        })).B(16.0f, 0.6f)).c(nVar);
        this.T = hVar;
        this.U = c2.NONE;
        float dimension = getResources().getDimension(R$dimen.translation_tool_capsule_width);
        this.f5865n0 = dimension;
        this.f5867o0 = (int) dimension;
        this.f5873r0 = context.getResources().getConfiguration().getLayoutDirection() == 1;
        this.f5875s0 = com.coloros.translate.screen.utils.k.d(context);
        this.f5877t0 = com.coloros.translate.screen.utils.k.a(context);
        this.f5883w0 = getHorLimit();
        this.f5885x0 = context.getResources().getDimension(R$dimen.dp_16);
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-2, getResources().getDimensionPixelSize(R$dimen.translation_tool_capsule_height), 2038, 201589544, -2);
        layoutParams2.gravity = 8388659;
        layoutParams2.x = (int) this.f5883w0;
        layoutParams2.y = (int) ((this.f5875s0[1] - layoutParams2.height) - getResources().getDimension(R$dimen.translation_tool_capsule_margin_bottom));
        layoutParams2.setTitle("screen_trans_shot_black_name");
        this.f5887y0 = layoutParams2;
        setWillNotDraw(true);
        lVarJ.b(this, hVar, cVar);
        lVarJ.d(cVar);
        lVarJ.d(hVar);
        this.f5887y0.setTitle("ScreenTranslationToolCapsule");
        setAlpha(1.0f);
        getWindowManager().addView(this, this.f5887y0);
        this.J = new i0(context, drawRoot);
        com.coloros.translate.screen.widget.m mVar = new com.coloros.translate.screen.widget.m(this);
        this.D0 = mVar;
        androidx.core.view.m0.j0(this, mVar);
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "init");
        this.H0 = new t(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(ScreenTranslationToolCapsule this$0, float f10) {
        Drawable backgroundBlurDrawable;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RealView realView = this$0.f5845c;
        if (realView != null) {
            realView.setAlpha(f10);
        }
        ViewRootManager viewRootManager = this$0.C0;
        if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
            Object obj = this$0.A0;
            backgroundBlurDrawable = obj instanceof Drawable ? (Drawable) obj : null;
        }
        if (backgroundBlurDrawable != null) {
            backgroundBlurDrawable.setAlpha((int) (255 * f10));
        }
        RealView realView2 = this$0.f5845c;
        if (realView2 != null) {
            realView2.setScaleX((f10 * 0.100000024f) + 0.9f);
        }
        RealView realView3 = this$0.f5845c;
        if (realView3 == null) {
            return;
        }
        realView3.setScaleY((f10 * 0.100000024f) + 0.9f);
    }

    private final void F1(boolean z10, final float f10, w8.a aVar) {
        ValueAnimator valueAnimator = this.f5861l0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f5861l0 = null;
        int i10 = this.N.height;
        final int i11 = (int) (z10 ? this.f5860l : this.f5862m);
        final boolean z11 = (((float) this.f5875s0[1]) - f10) - getBottomLimit() <= ((float) i11);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.setInterpolator(new COUISpringInterpolator(0.4d, 0.0d));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.l0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ScreenTranslationToolCapsule.G1(this.f6041a, z11, f10, i11, valueAnimator2);
            }
        });
        valueAnimatorOfInt.addListener(new s(aVar, this));
        this.f5861l0 = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(final ScreenTranslationToolCapsule this$0, boolean z10, float f10, int i10, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        float animatedFraction = it.getAnimatedFraction();
        final RealView realView = this$0.f5845c;
        if (realView != null) {
            if (z10) {
                this$0.setRealTranslationY(f10 + ((((this$0.f5875s0[1] - f10) - this$0.getBottomLimit()) - i10) * animatedFraction));
            }
            FrameLayout.LayoutParams layoutParams = this$0.N;
            Object animatedValue = it.getAnimatedValue();
            kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            layoutParams.height = ((Integer) animatedValue).intValue();
            this$0.f5887y0.height = this$0.N.height;
            final View view = this$0.f5872r;
            if (view != null) {
                final ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                layoutParams2.height = this$0.N.height;
                view.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.H1(realView, this$0, view, layoutParams2);
                    }
                });
            }
            com.coloros.translate.screen.widget.m mVar = this$0.D0;
            this$0.e2(mVar != null && mVar.t());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(RealView real, ScreenTranslationToolCapsule this$0, View this_apply, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(real, "$real");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        real.setLayoutParams(this$0.N);
        this_apply.setLayoutParams(layoutParams);
    }

    private final void I1() {
        ViewGroup.LayoutParams layoutParams;
        RealView realView = this.f5845c;
        final int translationY = (int) (realView != null ? realView.getTranslationY() : 0.0f);
        int i10 = this.N.height;
        View view = this.f5872r;
        final int i11 = (view == null || (layoutParams = view.getLayoutParams()) == null) ? 0 : layoutParams.height;
        final float f10 = this.f5860l;
        final float bottomLimit = ((float) (this.f5875s0[1] - translationY)) - getBottomLimit() <= f10 ? (this.f5875s0[1] - getBottomLimit()) - f10 : Math.max(translationY - ((f10 - i10) / 2), this.f5852h);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, (int) f10);
        valueAnimatorOfInt.setDuration(233L);
        valueAnimatorOfInt.setInterpolator(new COUIMoveEaseInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.a1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScreenTranslationToolCapsule.J1(this.f5968a, translationY, bottomLimit, i11, f10, valueAnimator);
            }
        });
        kotlin.jvm.internal.r.b(valueAnimatorOfInt);
        valueAnimatorOfInt.addListener(new u());
        this.f5857j0 = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J1(final ScreenTranslationToolCapsule this$0, int i10, float f10, int i11, float f11, ValueAnimator animator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(animator, "animator");
        final RealView realView = this$0.f5845c;
        if (realView != null) {
            Object animatedValue = animator.getAnimatedValue();
            kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) animatedValue).intValue();
            float f12 = i10;
            float animatedFraction = f12 + ((f10 - f12) * animator.getAnimatedFraction());
            this$0.N.height = iIntValue;
            this$0.setRealTranslationY(animatedFraction);
            this$0.f5887y0.height = iIntValue;
            final View view = this$0.f5872r;
            if (view != null) {
                final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                float f13 = i11;
                layoutParams.height = (int) (f13 + ((f11 - f13) * animator.getAnimatedFraction()));
                view.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.K1(realView, this$0, view, layoutParams);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K1(RealView real, ScreenTranslationToolCapsule this$0, View this_apply, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(real, "$real");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        real.setLayoutParams(this$0.N);
        this_apply.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void L1(w8.a r7) {
        /*
            r6 = this;
            boolean r0 = r6.f5844b0
            com.coloros.translate.screen.widget.m r1 = r6.D0
            r2 = 0
            if (r1 == 0) goto Lf
            boolean r1 = r1.t()
            r3 = 1
            if (r1 != r3) goto Lf
            goto L10
        Lf:
            r3 = r2
        L10:
            r0 = r0 | r3
            r6.R = r2
            d7.l r1 = r6.P
            r3 = 0
            r1.f(r3)
            android.view.VelocityTracker r1 = r6.f5863m0
            if (r1 == 0) goto L20
            r1.recycle()
        L20:
            r6.f5863m0 = r3
            android.widget.FrameLayout$LayoutParams r1 = r6.N
            int r1 = r1.width
            android.view.View r3 = r6.f5872r
            if (r3 == 0) goto L32
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            if (r3 == 0) goto L32
            int r2 = r3.width
        L32:
            float r3 = r6.f5879u0
            int r4 = r6.f5867o0
            int[] r1 = new int[]{r1, r4}
            android.animation.ValueAnimator r1 = android.animation.ValueAnimator.ofInt(r1)
            r4 = 417(0x1a1, double:2.06E-321)
            r1.setDuration(r4)
            com.coui.appcompat.animation.COUIMoveEaseInterpolator r4 = new com.coui.appcompat.animation.COUIMoveEaseInterpolator
            r4.<init>()
            r1.setInterpolator(r4)
            com.coloros.translate.screen.widget.c1 r4 = new com.coloros.translate.screen.widget.c1
            r4.<init>()
            r1.addUpdateListener(r4)
            kotlin.jvm.internal.r.b(r1)
            com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$v r2 = new com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$v
            r2.<init>(r0, r7)
            r1.addListener(r2)
            r1.start()
            r6.f5859k0 = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.L1(w8.a):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M1(final ScreenTranslationToolCapsule this$0, float f10, int i10, ValueAnimator animator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(animator, "animator");
        final RealView realView = this$0.f5845c;
        if (realView != null) {
            Object animatedValue = animator.getAnimatedValue();
            kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) animatedValue).intValue();
            float animatedFraction = animator.getAnimatedFraction();
            this$0.d2(animatedFraction);
            this$0.setRealTranslationX(f10 + ((this$0.f5883w0 - f10) * animatedFraction));
            this$0.N.width = iIntValue;
            this$0.f5887y0.width = iIntValue;
            final View view = this$0.f5872r;
            if (view != null) {
                final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.width = (int) (i10 + ((this$0.f5867o0 - i10) * animator.getAnimatedFraction()));
                view.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.N1(realView, this$0, view, layoutParams);
                    }
                });
            }
        }
        com.coloros.translate.screen.widget.m mVar = this$0.D0;
        boolean z10 = false;
        if (mVar != null && mVar.t()) {
            z10 = true;
        }
        this$0.e2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(RealView real, ScreenTranslationToolCapsule this$0, View this_apply, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(real, "$real");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        real.setLayoutParams(this$0.N);
        this_apply.setLayoutParams(layoutParams);
    }

    private final void P1(AnimatorListenerAdapter animatorListenerAdapter) {
        com.coloros.translate.screen.utils.w.a(this.f5847d0);
        RealView realView = this.f5845c;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(realView != null ? realView.getAlpha() : 1.0f, 0.0f);
        this.f5847d0 = valueAnimatorOfFloat;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "startHideAnim " + valueAnimatorOfFloat);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(J0);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.x0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScreenTranslationToolCapsule.Q1(this.f6110a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new w());
        if (animatorListenerAdapter != null) {
            valueAnimatorOfFloat.addListener(animatorListenerAdapter);
        }
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q1(final ScreenTranslationToolCapsule this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        final float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.y0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.R1(this.f6115a, fFloatValue);
            }
        });
    }

    private final void R0(boolean z10) {
        float f10;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationToolCapsule", "adjustToolbarPanel");
        int i10 = b.f5894a[this.U.ordinal()];
        if (i10 == 1) {
            f10 = this.f5860l;
        } else if (i10 == 2) {
            f10 = z10 ? this.f5860l : this.f5862m;
        } else {
            if (i10 != 3) {
                throw new n8.o();
            }
            f10 = this.f5860l;
        }
        int i11 = (int) f10;
        if (this.f5869p0 == i11) {
            aVar.q("ScreenTranslationToolCapsule", "adjustToolbarPanel:return");
        } else {
            this.f5869p0 = i11;
            F1(z10, this.f5881v0, new c(this.f5867o0, z10 ? this.f5860l : this.f5862m));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R1(ScreenTranslationToolCapsule this$0, float f10) {
        Drawable backgroundBlurDrawable;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RealView realView = this$0.f5845c;
        if (realView != null) {
            realView.setAlpha(f10);
            ViewRootManager viewRootManager = this$0.C0;
            if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
                Object obj = this$0.A0;
                backgroundBlurDrawable = obj instanceof Drawable ? (Drawable) obj : null;
            }
            if (backgroundBlurDrawable != null) {
                backgroundBlurDrawable.setAlpha((int) (255 * f10));
            }
            float f11 = (f10 * 0.100000024f) + 0.9f;
            realView.setScaleX(f11);
            realView.setScaleY(f11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.R = true;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "withStartAction");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S1() {
        com.coloros.translate.screen.utils.w.a(this.f5847d0);
        RealView realView = this.f5845c;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(realView != null ? realView.getAlpha() : 0.0f, 1.0f);
        this.f5847d0 = valueAnimatorOfFloat;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "startShowAnim " + valueAnimatorOfFloat);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(J0);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.p0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScreenTranslationToolCapsule.T1(this.f6067a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new x());
        valueAnimatorOfFloat.setStartDelay(30L);
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "withStopAction");
        this$0.R = false;
        this$0.f1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T1(ScreenTranslationToolCapsule this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.setViewStatusWithAlpha(((Float) animatedValue).floatValue());
    }

    private final void U0() {
        RealView realView = this.f5845c;
        if (realView == null || !realView.isAttachedToWindow()) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "shrinkRunnable, realView is detached to Window");
            return;
        }
        if (this.f5842a0) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "autoShrink:isShrink false");
            return;
        }
        if (this.U == c2.ZONE || r1()) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "autoShrink:isShrinkEnable false");
        } else {
            if (this.f5842a0) {
                return;
            }
            this.f5842a0 = true;
            this.f5844b0 = true;
            k2(this, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1(w8.a aVar) {
        boolean z10 = this.f5844b0;
        com.coloros.translate.screen.widget.m mVar = this.D0;
        boolean z11 = false;
        if (mVar != null && mVar.t()) {
            z11 = true;
        }
        boolean z12 = z10 | z11;
        this.P.f(null);
        VelocityTracker velocityTracker = this.f5863m0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.f5863m0 = null;
        final float f10 = this.f5879u0;
        RealView realView = this.f5845c;
        final int translationY = (int) (realView != null ? realView.getTranslationY() : 0.0f);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.N.width, (int) this.f5856j);
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.setInterpolator(new COUIMoveEaseInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.d1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScreenTranslationToolCapsule.V1(this.f5986a, f10, translationY, valueAnimator);
            }
        });
        kotlin.jvm.internal.r.b(valueAnimatorOfInt);
        valueAnimatorOfInt.addListener(new y(z12, aVar));
        this.f5848e0 = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V1(final ScreenTranslationToolCapsule this$0, float f10, int i10, ValueAnimator animator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(animator, "animator");
        final RealView realView = this$0.f5845c;
        if (realView != null) {
            Object animatedValue = animator.getAnimatedValue();
            kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) animatedValue).intValue();
            float animatedFraction = animator.getAnimatedFraction();
            this$0.d2(animatedFraction);
            this$0.setRealTranslationX(f10 + ((this$0.f5883w0 - f10) * animatedFraction));
            int iMax = Math.max(iIntValue, (int) this$0.f5856j);
            int i11 = this$0.f5869p0;
            float f11 = this$0.f5858k;
            int iMax2 = Math.max((int) (i11 - ((i11 - f11) * animatedFraction)), (int) f11);
            float f12 = i10 + (((this$0.f5869p0 - this$0.f5858k) / 2) * animatedFraction);
            FrameLayout.LayoutParams layoutParams = this$0.N;
            layoutParams.width = iMax;
            layoutParams.height = iMax2;
            this$0.setRealTranslationY(f12);
            final View view = this$0.f5872r;
            if (view != null) {
                final ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                float f13 = this$0.f5885x0;
                layoutParams2.width = (int) (iMax - (f13 * animatedFraction));
                layoutParams2.height = (int) (iMax2 - (f13 * animatedFraction));
                view.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.o0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.W1(realView, this$0, view, layoutParams2);
                    }
                });
            }
            WindowManager.LayoutParams layoutParams3 = this$0.f5887y0;
            FrameLayout.LayoutParams layoutParams4 = this$0.N;
            layoutParams3.width = layoutParams4.width;
            layoutParams3.height = layoutParams4.height;
        }
        com.coloros.translate.screen.widget.m mVar = this$0.D0;
        boolean z10 = false;
        if (mVar != null && mVar.t()) {
            z10 = true;
        }
        this$0.e2(z10);
    }

    private final void W0(com.coloros.translate.screen.translate.engine.language.a aVar, com.coloros.translate.screen.translate.engine.language.a aVar2) {
        String string = getContext().getString(aVar.getFullNameResId());
        kotlin.jvm.internal.r.d(string, "getString(...)");
        setFromLanguage(string);
        String string2 = getContext().getString(aVar2.getFullNameResId());
        kotlin.jvm.internal.r.d(string2, "getString(...)");
        setToLanguage(string2);
        ImageView imageView = this.A;
        if (imageView != null) {
            imageView.setImageResource(com.coloros.translate.screen.translate.engine.language.j.f5577i.a().j(aVar, aVar2) ? R$drawable.tool_capsule_language_transfer : R$drawable.tool_capsule_language_right);
        }
        if (this.f5873r0) {
            ImageView imageView2 = this.A;
            if (imageView2 == null) {
                return;
            }
            imageView2.setRotation(180.0f);
            return;
        }
        ImageView imageView3 = this.A;
        if (imageView3 == null) {
            return;
        }
        imageView3.setRotation(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W1(RealView real, ScreenTranslationToolCapsule this$0, View this_apply, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(real, "$real");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        real.setLayoutParams(this$0.N);
        this_apply.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0() {
        Y0();
        if (!this.f5842a0) {
            i0 i0Var = this.J;
            if (i0Var != null) {
                i0Var.d();
            }
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "checkShrinkCircleView:" + this.f5842a0);
            return;
        }
        if (this.U != c2.FULL) {
            i0 i0Var2 = this.J;
            if (i0Var2 != null) {
                i0Var2.d();
            }
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "checkShrinkCircleView:SelectStatus.FULL");
            return;
        }
        i0 i0Var3 = this.J;
        if (i0Var3 != null) {
            i0Var3.h();
        }
    }

    private final void Y0() {
        ImageView imageView;
        if (!this.D) {
            com.coloros.translate.screen.widget.e0 e0Var = this.I;
            if (e0Var != null) {
                e0Var.n();
            }
            if (!this.f5842a0 || (imageView = this.f5888z) == null) {
                return;
            }
            imageView.setVisibility(0);
            return;
        }
        if (this.f5842a0) {
            x1();
            ImageView imageView2 = this.f5888z;
            if (imageView2 == null) {
                return;
            }
            imageView2.setVisibility(4);
            return;
        }
        com.coloros.translate.screen.widget.e0 e0Var2 = this.I;
        if (e0Var2 != null) {
            e0Var2.n();
        }
        ImageView imageView3 = this.f5888z;
        if (imageView3 == null) {
            return;
        }
        imageView3.setVisibility(8);
    }

    private final boolean Y1() {
        if (!com.coloros.translate.screen.translate.business.b.INSTANCE.b() && !com.coloros.translate.screen.utils.w.f() && !ScreenTranslationService.m()) {
            return true;
        }
        com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_support_full, 0, 2, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0() {
        if (this.U == c2.NONE) {
            this.f5842a0 = true;
            k2(this, null, 1, null);
        } else {
            this.f5843b.n();
            A1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a2() {
        if (this.f5873r0) {
            ImageView imageView = this.f5886y;
            if (imageView != null) {
                imageView.setRotation(0.0f);
            }
        } else {
            ImageView imageView2 = this.f5886y;
            if (imageView2 != null) {
                imageView2.setRotation(180.0f);
            }
        }
        X0();
        this.f5843b.c(c2.NONE, this.U);
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "translateDirectly:" + this.U);
        this.f5844b0 = true;
        g2();
        d7.n nVar = this.Q;
        WindowManager.LayoutParams layoutParams = this.f5887y0;
        nVar.c(layoutParams.x, layoutParams.y);
        if (this.U == c2.FULL) {
            this.f5843b.k(true);
        } else {
            this.f5843b.l(true);
        }
    }

    private final void c2() {
        RectF rectF = this.O;
        float f10 = this.f5883w0;
        float f11 = this.f5852h;
        int[] iArr = this.f5875s0;
        rectF.set(f10, f11, iArr[0] - f10, iArr[1] - getBottomLimit());
        this.S.t0(this.f5873r0 ? 2 : 1);
        this.S.i0(this.O);
        int[] iArr2 = this.f5875s0;
        setSystemGestureExclusionRects(kotlin.collections.o.b(new Rect(0, 0, iArr2[0], iArr2[1])));
    }

    private final void d2(float f10) {
        int i10;
        int i11;
        if (this.f5842a0) {
            i10 = this.f5864n;
            i11 = this.f5866o;
        } else {
            i10 = this.f5866o;
            i11 = this.f5864n;
        }
        Object objEvaluate = getArgbEvaluator().evaluate(f10, Integer.valueOf(i10), Integer.valueOf(i11));
        kotlin.jvm.internal.r.c(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
        setBlurEffect(((Integer) objEvaluate).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e2(boolean z10) {
        Object objM59constructorimpl;
        if (z10) {
            setEventLayoutX((int) this.f5879u0);
            WindowManager.LayoutParams layoutParams = this.f5887y0;
            RealView realView = this.f5845c;
            layoutParams.y = realView != null ? (int) realView.getTranslationY() : 0;
            try {
                r.a aVar = n8.r.Companion;
                postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.w0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.f2(this.f6105a);
                    }
                });
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "updateEventParams updateViewLayout:" + thM62exceptionOrNullimpl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f1() {
        /*
            r5 = this;
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            java.lang.String r1 = "ScreenTranslationToolCapsule"
            java.lang.String r2 = "correctLocation"
            r0.d(r1, r2)
            float r0 = r5.f5883w0
            float r1 = r5.f5879u0
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            r2 = 1
            if (r1 >= 0) goto L17
            r5.setRealTranslationX(r0)
            r0 = r2
            goto L18
        L17:
            r0 = 0
        L18:
            com.coloros.translate.screen.widget.ScreenTranslationToolCapsule$RealView r1 = r5.f5845c
            if (r1 == 0) goto L21
            float r1 = r1.getTranslationY()
            goto L22
        L21:
            r1 = 0
        L22:
            int r1 = (int) r1
            float r3 = (float) r1
            float r4 = r5.f5852h
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L2f
            r5.setRealTranslationY(r4)
        L2d:
            r0 = r2
            goto L51
        L2f:
            int[] r3 = r5.f5875s0
            r3 = r3[r2]
            int r3 = r3 - r1
            int r1 = r5.f5869p0
            int r3 = r3 - r1
            float r1 = (float) r3
            float r3 = r5.getBottomLimit()
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 >= 0) goto L51
            int[] r0 = r5.f5875s0
            r0 = r0[r2]
            int r1 = r5.f5869p0
            int r0 = r0 - r1
            float r0 = (float) r0
            float r1 = r5.getBottomLimit()
            float r0 = r0 - r1
            r5.setRealTranslationY(r0)
            goto L2d
        L51:
            if (r0 == 0) goto L56
            r5.e2(r2)
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.f1():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f2(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.isAttachedToWindow()) {
            this$0.getWindowManager().updateViewLayout(this$0, this$0.f5887y0);
            com.coloros.translate.screen.widget.m mVar = this$0.D0;
            if (mVar != null) {
                mVar.invalidateRoot();
            }
        }
    }

    private final void g1(boolean z10) {
        Drawable backgroundBlurDrawable;
        final ViewGroup.LayoutParams layoutParams;
        Drawable drawable = null;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_trans_tool_capsule, (ViewGroup) null);
        kotlin.jvm.internal.r.c(viewInflate, "null cannot be cast to non-null type com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.RealView");
        RealView realView = (RealView) viewInflate;
        this.f5845c = realView;
        if (realView != null) {
            this.f5872r = realView.findViewById(R$id.backgroundView);
            this.f5874s = realView.findViewById(R$id.mainContainer);
            this.f5876t = realView.findViewById(R$id.fullScreenContainer);
            this.f5878u = realView.findViewById(R$id.zoneAreaScreenContainer);
            this.f5880v = realView.findViewById(R$id.languageContainer);
            this.f5882w = realView.findViewById(R$id.closeLt);
            this.f5884x = realView.findViewById(R$id.backLt);
            this.f5886y = (ImageView) realView.findViewById(R$id.backIv);
            this.f5888z = (ImageView) realView.findViewById(R$id.shrinkIv);
            this.A = (ImageView) realView.findViewById(R$id.switchLanguageIv);
            this.B = (TextView) realView.findViewById(R$id.originLanguageTv);
            this.C = (TextView) realView.findViewById(R$id.targetLanguageTv);
            View view = this.f5874s;
            if (view != null && (layoutParams = view.getLayoutParams()) != null) {
                kotlin.jvm.internal.r.b(layoutParams);
                z1();
                layoutParams.width = this.f5867o0;
                realView.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.e1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.h1(this.f6003a, layoutParams);
                    }
                });
            }
            if (this.f5873r0) {
                ImageView imageView = this.f5886y;
                if (imageView != null) {
                    imageView.setRotation(180.0f);
                }
            } else {
                ImageView imageView2 = this.f5886y;
                if (imageView2 != null) {
                    imageView2.setRotation(0.0f);
                }
            }
        }
        RealView realView2 = this.f5845c;
        if (realView2 != null) {
            realView2.setToolCapsule(this);
        }
        setRealTranslationX(this.f5883w0);
        if (this.f5842a0) {
            final View view2 = this.f5872r;
            if (view2 != null) {
                final ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                float f10 = this.f5856j;
                float f11 = this.f5885x0;
                layoutParams2.width = (int) (f10 - f11);
                layoutParams2.height = (int) (this.f5858k - f11);
                view2.postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.f1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.i1(view2, layoutParams2);
                    }
                });
            }
            setRealTranslationY((this.f5875s0[1] - this.f5858k) - getBottomLimit());
        } else {
            setRealTranslationY((this.f5875s0[1] - this.f5860l) - getBottomLimit());
        }
        FrameLayout.LayoutParams layoutParams3 = this.N;
        layoutParams3.width = -2;
        this.f5841a.addView(this.f5845c, layoutParams3);
        setWillNotDraw(false);
        if (this.V) {
            l2(false);
            this.W = new h();
            return;
        }
        if (z10) {
            RealView realView3 = this.f5845c;
            if (realView3 != null) {
                realView3.setAlpha(0.0f);
            }
            RealView realView4 = this.f5845c;
            if (realView4 == null || !realView4.o()) {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "createRealView:realView is not ready");
                this.W = new i();
                return;
            } else {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "createRealView:realView is ready");
                postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.g1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.j1(this.f6012a);
                    }
                });
                return;
            }
        }
        RealView realView5 = this.f5845c;
        if (realView5 == null || !realView5.o()) {
            this.W = new j();
            return;
        }
        RealView realView6 = this.f5845c;
        if (realView6 != null) {
            realView6.setAlpha(1.0f);
        }
        ViewRootManager viewRootManager = this.C0;
        if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
            Object obj = this.A0;
            if (obj instanceof Drawable) {
                drawable = (Drawable) obj;
            }
        } else {
            drawable = backgroundBlurDrawable;
        }
        if (drawable == null) {
            return;
        }
        drawable.setAlpha(255);
    }

    private final void g2() {
        boolean z10 = this.f5842a0;
        float f10 = z10 ? this.f5856j : this.f5867o0;
        float f11 = z10 ? this.f5858k : this.f5869p0;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "updatePhysicalSize width:" + f10 + " ,height:" + f11 + ",isShrink:" + z10);
        this.Q.b(f10, f11);
        this.T.b(f10, f11);
        this.S.b(f10, f11);
    }

    private final ArgbEvaluator getArgbEvaluator() {
        return (ArgbEvaluator) this.M.getValue();
    }

    private final int getAttachBodySide() {
        return (this.f5845c == null || y8.a.b(this.f5879u0) <= y8.a.b(this.f5883w0)) ? 1 : 2;
    }

    private final float getBottomLimit() {
        return this.f5849f + this.f5877t0;
    }

    public static /* synthetic */ void getEventLayoutParams$annotations() {
    }

    private final float getHorLimit() {
        return com.coloros.translate.screen.utils.g.c() == b.EnumC0223b.LARGE ? getResources().getDimension(R$dimen.translation_tool_capsule_margin_hor_large_window) : getResources().getDimension(R$dimen.translation_tool_capsule_margin_hor);
    }

    private final float getMaxVelocity() {
        return ((Number) this.L.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WindowManager getWindowManager() {
        return (WindowManager) this.H.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(ScreenTranslationToolCapsule this$0, ViewGroup.LayoutParams lp) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(lp, "$lp");
        View view = this$0.f5874s;
        if (view == null) {
            return;
        }
        view.setLayoutParams(lp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h2(final View view) {
        if (view != null) {
            view.setBackgroundResource(R$drawable.tool_capsule_full_press_bg);
            view.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.z0
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationToolCapsule.i2(view);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(View this_apply, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        this_apply.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i2(View view) {
        view.setBackgroundResource(R$drawable.tool_capsule_full_bg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S1();
    }

    private final void j2(w8.a aVar) {
        if (this.f5842a0) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(283L);
            animatorSet.setInterpolator(new COUIMoveEaseInterpolator());
            if (this.U == c2.NONE) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.f5884x, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.f5876t, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.f5878u, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.f5882w, "alpha", 1.0f, 0.0f));
            } else {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.f5884x, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.f5880v, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.f5882w, "alpha", 1.0f, 0.0f));
            }
            animatorSet.addListener(new z(this, aVar));
            animatorSet.start();
            this.f5850f0 = animatorSet;
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setDuration(250L);
            animatorSet2.setInterpolator(new COUIMoveEaseInterpolator());
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.f5888z, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5888z, "scaleX", 0.6f, 1.0f), ObjectAnimator.ofFloat(this.f5888z, "scaleY", 0.6f, 1.0f));
            animatorSet2.addListener(new a0(this));
            animatorSet2.setStartDelay(250L);
            animatorSet2.start();
            this.f5851g0 = animatorSet2;
            return;
        }
        X0();
        c2 c2Var = this.U;
        c2 c2Var2 = c2.NONE;
        if (c2Var == c2Var2) {
            if (this.f5873r0) {
                ImageView imageView = this.f5886y;
                if (imageView != null) {
                    imageView.setRotation(180.0f);
                }
            } else {
                ImageView imageView2 = this.f5886y;
                if (imageView2 != null) {
                    imageView2.setRotation(0.0f);
                }
            }
        } else if (this.f5873r0) {
            ImageView imageView3 = this.f5886y;
            if (imageView3 != null) {
                imageView3.setRotation(0.0f);
            }
        } else {
            ImageView imageView4 = this.f5886y;
            if (imageView4 != null) {
                imageView4.setRotation(180.0f);
            }
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setDuration(283L);
        animatorSet3.setInterpolator(new COUIMoveEaseInterpolator());
        if (this.U == c2Var2) {
            animatorSet3.playTogether(ObjectAnimator.ofFloat(this.f5884x, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5876t, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5878u, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5882w, "alpha", 0.0f, 1.0f));
        } else {
            animatorSet3.playTogether(ObjectAnimator.ofFloat(this.f5884x, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5880v, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f5882w, "alpha", 0.0f, 1.0f));
        }
        animatorSet3.addListener(new b0(this));
        animatorSet3.setStartDelay(134L);
        animatorSet3.start();
        this.f5853h0 = animatorSet3;
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.setDuration(250L);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f5888z, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new COUIMoveEaseInterpolator());
        n8.h0 h0Var = n8.h0.INSTANCE;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f5888z, "scaleX", 1.0f, 0.6f);
        objectAnimatorOfFloat2.setInterpolator(new COUIEaseInterpolator());
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f5888z, "scaleY", 1.0f, 0.6f);
        objectAnimatorOfFloat3.setInterpolator(new COUIEaseInterpolator());
        animatorSet4.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet4.addListener(new c0(this));
        animatorSet4.start();
        this.f5855i0 = animatorSet4;
        L1(aVar);
        I1();
    }

    private final void k1() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationToolCapsule", "destroyRealView:" + (this.f5845c == null));
        RealView realView = this.f5845c;
        if (realView != null && realView.isAttachedToWindow()) {
            aVar.d("ScreenTranslationToolCapsule", "destroyRealView:remove realView");
            this.f5841a.removeView(realView);
        }
        this.f5874s = null;
        this.f5876t = null;
        this.f5878u = null;
        this.f5880v = null;
        this.f5882w = null;
        this.f5884x = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.f5888z = null;
        RealView realView2 = this.f5845c;
        if (realView2 != null) {
            realView2.setToolCapsule(null);
        }
        this.f5845c = null;
        this.A0 = null;
        com.coloros.translate.screen.widget.e0 e0Var = this.I;
        if (e0Var != null) {
            e0Var.i();
        }
        this.I = null;
    }

    static /* synthetic */ void k2(ScreenTranslationToolCapsule screenTranslationToolCapsule, w8.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        screenTranslationToolCapsule.j2(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S.v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l2(boolean z10) {
        if (this.f5842a0) {
            ImageView imageView = this.f5888z;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            View view = this.f5874s;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f5882w;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            if (this.U == c2.NONE) {
                View view3 = this.f5876t;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
                View view4 = this.f5878u;
                if (view4 != null) {
                    view4.setVisibility(0);
                }
                View view5 = this.f5880v;
                if (view5 != null) {
                    view5.setVisibility(8);
                }
            } else {
                View view6 = this.f5876t;
                if (view6 != null) {
                    view6.setVisibility(8);
                }
                View view7 = this.f5878u;
                if (view7 != null) {
                    view7.setVisibility(8);
                }
                View view8 = this.f5880v;
                if (view8 != null) {
                    view8.setVisibility(0);
                }
            }
            View view9 = this.f5876t;
            if (view9 != null) {
                view9.setTranslationY(0.0f);
            }
            View view10 = this.f5878u;
            if (view10 != null) {
                view10.setTranslationY(0.0f);
            }
            View view11 = this.f5880v;
            if (view11 == null) {
                return;
            }
            view11.setTranslationY(0.0f);
            return;
        }
        com.coloros.translate.screen.widget.e0 e0Var = this.I;
        if (e0Var != null) {
            e0Var.n();
        }
        View view12 = this.f5874s;
        if (view12 != null) {
            view12.setVisibility(0);
        }
        ImageView imageView2 = this.f5888z;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
        View view13 = this.f5882w;
        if (view13 != null) {
            view13.setVisibility(0);
        }
        final kotlin.jvm.internal.z zVar = new kotlin.jvm.internal.z();
        if (this.U != c2.NONE) {
            zVar.element = true;
        }
        if (z10) {
            AnimatorSet animatorSet = this.f5846c0;
            if (animatorSet != null) {
                com.coloros.translate.screen.utils.w.a(animatorSet);
            }
            this.f5846c0 = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat.setDuration(333L);
            valueAnimatorOfFloat.setInterpolator(new COUIEaseInterpolator());
            kotlin.jvm.internal.r.b(valueAnimatorOfFloat);
            valueAnimatorOfFloat.addListener(new e0(zVar, this));
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.m0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ScreenTranslationToolCapsule.n2(this.f6053a, zVar, valueAnimator);
                }
            });
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat2.setDuration(333L);
            valueAnimatorOfFloat2.setInterpolator(new COUIEaseInterpolator());
            valueAnimatorOfFloat2.setStartDelay(333L);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.n0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ScreenTranslationToolCapsule.o2(this.f6057a, zVar, valueAnimator);
                }
            });
            kotlin.jvm.internal.r.b(valueAnimatorOfFloat2);
            valueAnimatorOfFloat2.addListener(new d0(zVar, this));
            AnimatorSet animatorSet2 = this.f5846c0;
            if (animatorSet2 != null) {
                animatorSet2.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
            }
            AnimatorSet animatorSet3 = this.f5846c0;
            if (animatorSet3 != null) {
                animatorSet3.start();
                return;
            }
            return;
        }
        if (zVar.element) {
            View view14 = this.f5880v;
            if (view14 != null) {
                view14.setVisibility(0);
            }
            View view15 = this.f5876t;
            if (view15 != null) {
                view15.setVisibility(8);
            }
            View view16 = this.f5878u;
            if (view16 != null) {
                view16.setVisibility(8);
            }
        } else {
            View view17 = this.f5880v;
            if (view17 != null) {
                view17.setVisibility(8);
            }
            View view18 = this.f5876t;
            if (view18 != null) {
                view18.setVisibility(0);
            }
            View view19 = this.f5878u;
            if (view19 != null) {
                view19.setVisibility(0);
            }
        }
        View view20 = this.f5876t;
        if (view20 != null) {
            view20.setTranslationY(0.0f);
        }
        View view21 = this.f5878u;
        if (view21 != null) {
            view21.setTranslationY(0.0f);
        }
        View view22 = this.f5880v;
        if (view22 != null) {
            view22.setTranslationY(0.0f);
        }
        View view23 = this.f5876t;
        if (view23 != null) {
            view23.setAlpha(1.0f);
        }
        View view24 = this.f5878u;
        if (view24 != null) {
            view24.setAlpha(1.0f);
        }
        View view25 = this.f5880v;
        if (view25 == null) {
            return;
        }
        view25.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S.u0();
    }

    static /* synthetic */ void m2(ScreenTranslationToolCapsule screenTranslationToolCapsule, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        screenTranslationToolCapsule.l2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n2(ScreenTranslationToolCapsule this$0, kotlin.jvm.internal.z showLanguageContainer, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(showLanguageContainer, "$showLanguageContainer");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        float animatedFraction = it.getAnimatedFraction();
        ImageView imageView = this$0.f5886y;
        if (imageView != null) {
            imageView.setAlpha(fFloatValue);
        }
        if (!showLanguageContainer.element) {
            View view = this$0.f5880v;
            if (view != null) {
                view.setAlpha(fFloatValue);
            }
            View view2 = this$0.f5880v;
            if (view2 == null) {
                return;
            }
            view2.setTranslationY((-this$0.f5854i) * animatedFraction);
            return;
        }
        View view3 = this$0.f5876t;
        if (view3 != null) {
            view3.setAlpha(fFloatValue);
        }
        View view4 = this$0.f5878u;
        if (view4 != null) {
            view4.setAlpha(fFloatValue);
        }
        View view5 = this$0.f5876t;
        if (view5 != null) {
            view5.setTranslationY((-this$0.f5854i) * animatedFraction);
        }
        View view6 = this$0.f5878u;
        if (view6 == null) {
            return;
        }
        view6.setTranslationY((-this$0.f5854i) * animatedFraction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o2(ScreenTranslationToolCapsule this$0, kotlin.jvm.internal.z showLanguageContainer, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(showLanguageContainer, "$showLanguageContainer");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        float animatedFraction = it.getAnimatedFraction();
        ImageView imageView = this$0.f5886y;
        if (imageView != null) {
            imageView.setAlpha(fFloatValue);
        }
        if (showLanguageContainer.element) {
            View view = this$0.f5880v;
            if (view != null) {
                view.setAlpha(fFloatValue);
            }
            View view2 = this$0.f5880v;
            if (view2 == null) {
                return;
            }
            view2.setTranslationY(this$0.f5854i * (1 - animatedFraction));
            return;
        }
        View view3 = this$0.f5876t;
        if (view3 != null) {
            view3.setAlpha(fFloatValue);
        }
        View view4 = this$0.f5878u;
        if (view4 != null) {
            view4.setAlpha(fFloatValue);
        }
        View view5 = this$0.f5876t;
        if (view5 != null) {
            view5.setTranslationY(this$0.f5854i * (1 - animatedFraction));
        }
        View view6 = this$0.f5878u;
        if (view6 == null) {
            return;
        }
        view6.setTranslationY(this$0.f5854i * (1 - animatedFraction));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(int i10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "initBlurEffect");
        try {
            ViewRootManager viewRootManager = this.C0;
            if (viewRootManager != null && kotlinx.coroutines.g.b(kotlinx.coroutines.d0.a(kotlinx.coroutines.o0.a()), null, null, new n(viewRootManager, this, i10, null), 3, null) != null) {
                return;
            }
            Object obj = this.A0;
            Method declaredMethod = obj != null ? obj.getClass().getDeclaredMethod("setBlurRadius", Integer.TYPE) : null;
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
            }
            if (declaredMethod != null) {
                declaredMethod.invoke(this.A0, 220);
            }
            Object obj2 = this.A0;
            Method declaredMethod2 = obj2 != null ? obj2.getClass().getDeclaredMethod("setCornerRadius", Float.TYPE) : null;
            if (declaredMethod2 != null) {
                declaredMethod2.setAccessible(true);
            }
            if (declaredMethod2 != null) {
                declaredMethod2.invoke(this.A0, Float.valueOf(this.f5870q));
            }
            Object obj3 = this.A0;
            Method declaredMethod3 = obj3 != null ? obj3.getClass().getDeclaredMethod("setColor", Integer.TYPE) : null;
            if (declaredMethod3 != null) {
                declaredMethod3.setAccessible(true);
            }
            if (declaredMethod3 != null) {
                declaredMethod3.invoke(this.A0, Integer.valueOf(i10));
            }
            Object obj4 = this.A0;
            Drawable drawable = obj4 instanceof Drawable ? (Drawable) obj4 : null;
            if (drawable != null) {
                drawable.setAlpha(0);
                View view = this.f5872r;
                if (view != null) {
                    view.setBackground(drawable);
                }
                n8.h0 h0Var = n8.h0.INSTANCE;
            }
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "initBlurEffect exception " + n8.e.b(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p2(boolean z10) {
        this.f5847d0 = null;
        this.f5848e0 = null;
        l2(false);
        WindowManager.LayoutParams layoutParams = this.f5887y0;
        FrameLayout.LayoutParams layoutParams2 = this.N;
        layoutParams.width = layoutParams2.width;
        layoutParams.height = layoutParams2.height;
        e2(true);
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "updateViewWhenAnimationEnd oldFingerRaise: " + z10);
        if (z10) {
            return;
        }
        g2();
        d7.n nVar = this.Q;
        WindowManager.LayoutParams layoutParams3 = this.f5887y0;
        nVar.c(layoutParams3.x, layoutParams3.y);
        this.f5844b0 = true;
        this.P.D();
        this.S.u0();
    }

    private final void q1(c2 c2Var, c2 c2Var2) {
        int[] iArr = b.f5894a;
        int i10 = iArr[c2Var2.ordinal()];
        if (i10 == 1) {
            this.f5843b.l(true);
            return;
        }
        if (i10 == 2) {
            this.f5843b.k(true);
            return;
        }
        if (i10 != 3) {
            return;
        }
        int i11 = iArr[c2Var.ordinal()];
        if (i11 == 1) {
            this.f5843b.l(false);
        } else {
            if (i11 != 2) {
                return;
            }
            this.f5843b.k(false);
        }
    }

    private final void q2(d7.m mVar) {
        int i10;
        Object objM59constructorimpl;
        float f10;
        float f11;
        com.coloros.translate.screen.widget.m mVar2;
        if (this.f5844b0 || ((mVar2 = this.D0) != null && mVar2.t())) {
            final WindowManager.LayoutParams layoutParams = this.f5887y0;
            int i11 = layoutParams.x;
            float f12 = mVar.f11655a;
            if (i11 == ((int) f12) && layoutParams.y == ((int) mVar.f11656b)) {
                return;
            }
            if (this.f5873r0) {
                if (this.f5842a0) {
                    f10 = this.f5875s0[0] - f12;
                    f11 = this.f5856j;
                } else {
                    f10 = this.f5875s0[0] - f12;
                    f11 = this.f5867o0;
                }
                i10 = (int) (f10 - f11);
            } else {
                i10 = (int) f12;
            }
            setEventLayoutX(i10);
            layoutParams.y = (int) mVar.f11656b;
            layoutParams.height = this.f5869p0;
            try {
                r.a aVar = n8.r.Companion;
                postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.b1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.r2(this.f5976a, layoutParams);
                    }
                });
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "updateViewWhenFingerRaise updateViewLayout:" + thM62exceptionOrNullimpl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean r1() {
        AnimatorSet animatorSet = this.f5846c0;
        return (animatorSet != null && animatorSet.isRunning()) || s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r2(ScreenTranslationToolCapsule this$0, WindowManager.LayoutParams this_apply) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        if (this$0.isAttachedToWindow()) {
            this$0.getWindowManager().updateViewLayout(this$0, this_apply);
            com.coloros.translate.screen.widget.m mVar = this$0.D0;
            if (mVar != null) {
                mVar.invalidateRoot();
            }
        }
    }

    private final boolean s1() {
        Animator animator = this.f5847d0;
        if (animator != null && animator.isRunning()) {
            return true;
        }
        ValueAnimator valueAnimator = this.f5848e0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            return true;
        }
        ValueAnimator valueAnimator2 = this.f5861l0;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            return true;
        }
        AnimatorSet animatorSet = this.f5850f0;
        if (animatorSet != null && animatorSet.isRunning()) {
            return true;
        }
        AnimatorSet animatorSet2 = this.f5851g0;
        if (animatorSet2 != null && animatorSet2.isRunning()) {
            return true;
        }
        AnimatorSet animatorSet3 = this.f5853h0;
        if (animatorSet3 != null && animatorSet3.isRunning()) {
            return true;
        }
        AnimatorSet animatorSet4 = this.f5855i0;
        if (animatorSet4 != null && animatorSet4.isRunning()) {
            return true;
        }
        ValueAnimator valueAnimator3 = this.f5857j0;
        if (valueAnimator3 != null && valueAnimator3.isRunning()) {
            return true;
        }
        ValueAnimator valueAnimator4 = this.f5859k0;
        return valueAnimator4 != null && valueAnimator4.isRunning();
    }

    private final void setBlurEffect(int i10) {
        kotlin.jvm.internal.a0 a0Var = new kotlin.jvm.internal.a0();
        a0Var.element = i10;
        if (!this.E) {
            a0Var.element = this.f5842a0 ? this.f5866o : this.f5868p;
        }
        kotlinx.coroutines.g.b(kotlinx.coroutines.d0.a(kotlinx.coroutines.o0.a()), null, null, new q(a0Var, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setEventLayoutX(int i10) {
        int iIntValue;
        WindowManager.LayoutParams layoutParams = this.f5887y0;
        if (this.f5873r0) {
            iIntValue = (this.f5842a0 ? Float.valueOf((this.f5875s0[0] - i10) - this.f5856j) : Integer.valueOf((this.f5875s0[0] - i10) - this.f5867o0)).intValue();
        } else {
            iIntValue = i10;
        }
        layoutParams.x = iIntValue;
        this.f5889z0 = i10;
    }

    private final void setRealTranslationX(float f10) {
        float fB = y8.a.b(f10);
        RealView realView = this.f5845c;
        if (realView != null) {
            realView.setTranslationX(this.f5873r0 ? -fB : fB);
        }
        this.f5879u0 = fB;
        i0 i0Var = this.J;
        if (i0Var != null) {
            if (this.f5873r0) {
                fB = -fB;
            }
            i0Var.f(fB);
        }
    }

    private final void setRealTranslationY(float f10) {
        float fB = y8.a.b(f10);
        if (this.f5842a0) {
            float bottomLimit = ((this.f5875s0[1] - fB) - this.f5858k) - getBottomLimit();
            if (bottomLimit > 0.0f) {
                RealView realView = this.f5845c;
                if (realView != null) {
                    realView.setTranslationY(fB);
                }
                this.f5881v0 = fB;
            } else {
                fB += bottomLimit;
                RealView realView2 = this.f5845c;
                if (realView2 != null) {
                    realView2.setTranslationY(fB);
                }
                this.f5881v0 = fB;
            }
        } else {
            RealView realView3 = this.f5845c;
            if (realView3 != null) {
                realView3.setTranslationY(fB);
            }
            this.f5881v0 = fB;
        }
        i0 i0Var = this.J;
        if (i0Var != null) {
            i0Var.g(fB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setViewStatusWithAlpha(final float f10) {
        postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.j0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.C1(this.f6031a, f10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t1(MotionEvent motionEvent, View view) {
        if (view == null || !view.isShown()) {
            return false;
        }
        n8.q qVarN1 = n1(view);
        float fFloatValue = ((Number) qVarN1.getFirst()).floatValue();
        float fFloatValue2 = ((Number) qVarN1.getSecond()).floatValue();
        return motionEvent.getY() > fFloatValue2 && motionEvent.getY() < fFloatValue2 + ((float) view.getHeight()) && motionEvent.getX() > fFloatValue && motionEvent.getX() < fFloatValue + ((float) view.getWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(ScreenTranslationToolCapsule this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        long jCurrentTimeMillis = System.currentTimeMillis();
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationToolCapsule", "onAttachedToWindow1");
        this$0.g1(true);
        aVar.d("ScreenTranslationToolCapsule", "onAttachedToWindow:" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    private final void w1(c2 c2Var, c2 c2Var2) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "onSelectStatusChange:oldValue:" + c2Var + ",newValue:" + c2Var2);
        X0();
        com.coloros.translate.screen.utils.w.a(this.f5847d0);
        this.f5843b.c(c2Var, c2Var2);
        q1(c2Var, c2Var2);
        m2(this, false, 1, null);
        if (!this.f5842a0) {
            R0(true);
        }
        y1(c2Var, c2Var2);
    }

    private final void x1() {
        if (this.f5845c == null || this.f5888z == null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "playLoadingAnimation  realView  or shrinkIv is null");
            return;
        }
        if (this.I == null) {
            RealView realView = this.f5845c;
            ImageView imageView = this.f5888z;
            Context context = getContext();
            kotlin.jvm.internal.r.d(context, "getContext(...)");
            this.I = new com.coloros.translate.screen.widget.e0(realView, imageView, context);
        }
        com.coloros.translate.screen.widget.e0 e0Var = this.I;
        if (e0Var != null) {
            e0Var.l();
        }
    }

    private final void y1(c2 c2Var, c2 c2Var2) {
        c2 c2Var3 = c2.NONE;
        if (c2Var == c2Var3) {
            this.E0 = System.nanoTime();
            return;
        }
        long jNanoTime = (System.nanoTime() - this.E0) / 1000000000;
        if (c2Var2 != c2Var3) {
            this.E0 = System.nanoTime();
        }
        String str = c2Var == c2.ZONE ? "event_screen_free_duration" : "event_screen_full_duration";
        HashMap map = new HashMap();
        map.put("source_duration", String.valueOf(jNanoTime));
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        com.coloros.translate.screen.utils.f.b(context, str, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void z1() {
        /*
            r4 = this;
            int[] r0 = r4.f5875s0
            r1 = 0
            r2 = r0[r1]
            r3 = 1
            r0 = r0[r3]
            if (r2 >= r0) goto L24
            android.content.Context r0 = r4.getContext()
            java.lang.String r2 = "getContext(...)"
            kotlin.jvm.internal.r.d(r0, r2)
            boolean r0 = com.coloros.translate.screen.utils.k.f(r0)
            if (r0 == 0) goto L24
            int[] r0 = r4.f5875s0
            r0 = r0[r1]
            float r0 = (float) r0
            float r1 = r4.f5883w0
            float r0 = r0 - r1
            float r0 = r0 - r1
        L22:
            int r0 = (int) r0
            goto L27
        L24:
            float r0 = r4.f5865n0
            goto L22
        L27:
            r4.f5867o0 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.z1():void");
    }

    public final void A1() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "restoreNoneStatus");
        if (!isShown()) {
            D1(true, false);
        }
        if (this.U == c2.FULL) {
            X1();
        }
        c2 c2Var = this.U;
        c2 c2Var2 = c2.NONE;
        this.U = c2Var2;
        w1(c2Var, c2Var2);
    }

    public final void B1() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "setToolLanguage:start");
        j.b bVar = com.coloros.translate.screen.translate.engine.language.j.f5577i;
        W0(bVar.a().l(), bVar.a().n());
    }

    public final void D1(boolean z10, boolean z11) {
        Drawable backgroundBlurDrawable;
        Drawable backgroundBlurDrawable2;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "show isShow " + z10 + " withAnim " + z11 + " visibility " + getVisibility());
        com.coloros.translate.screen.utils.w.a(this.f5847d0);
        Drawable drawable = null;
        this.f5847d0 = null;
        if (!z10) {
            if (getVisibility() != 8) {
                if (z11) {
                    P1(new r());
                } else {
                    RealView realView = this.f5845c;
                    if (realView != null) {
                        realView.setAlpha(0.0f);
                    }
                    RealView realView2 = this.f5845c;
                    if (realView2 != null) {
                        realView2.setVisibility(8);
                    }
                }
                setVisibility(8);
                return;
            }
            return;
        }
        if (getVisibility() == 0 || !z11) {
            RealView realView3 = this.f5845c;
            if (realView3 != null) {
                realView3.setAlpha(1.0f);
            }
            RealView realView4 = this.f5845c;
            if (realView4 != null) {
                realView4.setScaleX(1.0f);
            }
            RealView realView5 = this.f5845c;
            if (realView5 != null) {
                realView5.setScaleY(1.0f);
            }
            ViewRootManager viewRootManager = this.C0;
            if (viewRootManager == null || (backgroundBlurDrawable = viewRootManager.getBackgroundBlurDrawable()) == null) {
                Object obj = this.A0;
                if (obj instanceof Drawable) {
                    drawable = (Drawable) obj;
                }
            } else {
                drawable = backgroundBlurDrawable;
            }
            if (drawable != null) {
                drawable.setAlpha(255);
            }
        } else {
            ViewRootManager viewRootManager2 = this.C0;
            if (viewRootManager2 == null || (backgroundBlurDrawable2 = viewRootManager2.getBackgroundBlurDrawable()) == null) {
                Object obj2 = this.A0;
                if (obj2 instanceof Drawable) {
                    drawable = (Drawable) obj2;
                }
            } else {
                drawable = backgroundBlurDrawable2;
            }
            if (drawable != null) {
                drawable.setAlpha(0);
            }
            S1();
        }
        RealView realView6 = this.f5845c;
        if (realView6 != null) {
            realView6.setVisibility(0);
        }
        setVisibility(0);
    }

    public final void E1(int i10, boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "showDirectly : " + i10 + "," + z10);
        this.V = i10 != -1;
        if (i10 == 0) {
            this.f5842a0 = !z10;
            this.U = c2.ZONE;
        } else {
            if (i10 != 1) {
                return;
            }
            this.f5842a0 = !z10;
            this.U = c2.FULL;
        }
    }

    public final void O1() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "startFullTranslation:" + this.f5842a0);
        this.D = true;
        Y0();
    }

    public final void V0(int i10) {
        if (!isShown()) {
            D1(true, false);
        }
        boolean zR1 = r1();
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "autoTranslateWhenLaunchAgain:" + this.f5844b0 + "," + zR1);
        if (!this.f5844b0 || zR1) {
            return;
        }
        if (i10 == 0) {
            if (this.f5842a0) {
                this.f5842a0 = false;
                j2(new e());
                return;
            } else {
                this.U = c2.ZONE;
                l2(false);
                a2();
                return;
            }
        }
        if (i10 != 1) {
            if (this.f5842a0) {
                this.f5842a0 = false;
                k2(this, null, 1, null);
                return;
            }
            return;
        }
        if (this.f5842a0) {
            this.f5842a0 = false;
            j2(new f());
        } else {
            this.U = c2.FULL;
            l2(false);
            a2();
        }
    }

    public final void X1() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "stopFullTranslation:" + this.f5842a0);
        this.D = false;
        Y0();
    }

    public final boolean Z1(float f10, float f11) {
        int i10 = this.f5887y0.x;
        return new RectF(i10, r1.y, i10 + getWidth(), this.f5887y0.y + getHeight()).contains(f10, f11);
    }

    public final void a1() {
        this.f5843b.n();
        P1(new g());
    }

    public final void b1() {
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            com.coloros.translate.screen.utils.u.d(R$string.translate_unified_no_network, 0, 2, null);
            return;
        }
        c2 c2Var = this.U;
        c2 c2Var2 = c2.FULL;
        if (c2Var != c2Var2 && this.G0) {
            com.coloros.translate.screen.utils.u.d(R$string.screenshot_reject_on_secure_window, 0, 2, null);
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "clickFull :isSecurityLayer");
        } else if (Y1()) {
            c2 c2Var3 = this.U;
            this.U = c2Var2;
            w1(c2Var3, c2Var2);
        }
    }

    public final void b2() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "unselectFullTranslation");
        c2 c2Var = this.U;
        c2 c2Var2 = c2.FULL;
        if (c2Var == c2Var2) {
            c2 c2Var3 = c2.NONE;
            this.U = c2Var3;
            w1(c2Var2, c2Var3);
            X1();
        }
    }

    public final void c1(boolean z10) {
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            com.coloros.translate.screen.utils.u.d(R$string.translate_unified_no_network, 0, 2, null);
        } else {
            this.f5843b.j(z10);
        }
    }

    public final void d1() {
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            com.coloros.translate.screen.utils.u.d(R$string.translate_unified_no_network, 0, 2, null);
            return;
        }
        c2 c2Var = this.U;
        c2 c2Var2 = c2.ZONE;
        if (c2Var == c2Var2 || !this.G0) {
            this.U = c2Var2;
            w1(c2Var, c2Var2);
        } else {
            com.coloros.translate.screen.utils.u.d(R$string.screenshot_reject_on_secure_window, 0, 2, null);
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "onClickFree :isSecurityLayer");
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        com.coloros.translate.screen.widget.m mVar;
        Boolean boolValueOf = null;
        if (motionEvent != null && (mVar = this.D0) != null) {
            boolValueOf = Boolean.valueOf(mVar.dispatchHoverEvent(motionEvent));
        }
        if (kotlin.jvm.internal.r.a(boolValueOf, Boolean.TRUE)) {
            return true;
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public final void e1(Configuration newConfig) {
        ViewGroup.LayoutParams layoutParams;
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        onConfigurationChanged(newConfig);
        ValueAnimator valueAnimator = this.f5848e0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f5848e0 = null;
        ValueAnimator valueAnimator2 = this.f5861l0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.f5861l0 = null;
        this.R = false;
        this.P.f(null);
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        this.f5875s0 = com.coloros.translate.screen.utils.k.d(context);
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5877t0 = com.coloros.translate.screen.utils.k.a(context2);
        this.f5883w0 = getHorLimit();
        z1();
        Locale locale = newConfig.getLocales().get(0);
        this.f5873r0 = getContext().getResources().getConfiguration().getLayoutDirection() == 1;
        if (!locale.equals(this.f5871q0)) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("ScreenTranslationToolCapsule", "configurationChanged:recreate");
            c2 c2Var = this.U;
            if (c2Var == c2.FULL) {
                this.f5843b.k(false);
            } else if (c2Var == c2.ZONE) {
                this.f5843b.l(false);
            }
            this.U = c2.NONE;
            this.f5842a0 = false;
            this.f5871q0 = locale;
            if (this.f5845c == null) {
                aVar.q("ScreenTranslationToolCapsule", "configurationChanged:realView is inflating, return");
                return;
            }
            this.N.height = this.f5869p0;
            k1();
            g1(false);
            B1();
            return;
        }
        c2();
        View view = this.f5874s;
        if (view != null && (layoutParams = view.getLayoutParams()) != null) {
            layoutParams.width = this.f5867o0;
            View view2 = this.f5874s;
            if (view2 != null) {
                view2.setLayoutParams(layoutParams);
            }
        }
        setRealTranslationX(this.f5883w0);
        l2(false);
        X0();
        if (this.f5842a0) {
            FrameLayout.LayoutParams layoutParams2 = this.N;
            layoutParams2.width = (int) this.f5856j;
            float f10 = this.f5858k;
            layoutParams2.height = (int) f10;
            setRealTranslationY((this.f5875s0[1] - f10) - getBottomLimit());
            View view3 = this.f5872r;
            if (view3 != null) {
                ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                float f11 = this.f5856j;
                float f12 = this.f5885x0;
                layoutParams3.width = (int) (f11 - f12);
                layoutParams3.height = (int) (this.f5858k - f12);
                view3.setLayoutParams(layoutParams3);
            }
            setBlurEffect(this.f5866o);
        } else {
            int i10 = (int) this.f5860l;
            this.f5869p0 = i10;
            FrameLayout.LayoutParams layoutParams4 = this.N;
            layoutParams4.width = this.f5867o0;
            layoutParams4.height = i10;
            setRealTranslationY((this.f5875s0[1] - i10) - getBottomLimit());
            View view4 = this.f5872r;
            if (view4 != null) {
                ViewGroup.LayoutParams layoutParams5 = view4.getLayoutParams();
                layoutParams5.width = this.f5867o0;
                layoutParams5.height = this.f5869p0;
                view4.setLayoutParams(layoutParams5);
            }
            setBlurEffect(this.f5864n);
        }
        RealView realView = this.f5845c;
        if (realView != null) {
            realView.setLayoutParams(this.N);
        }
        WindowManager.LayoutParams layoutParams6 = this.f5887y0;
        FrameLayout.LayoutParams layoutParams7 = this.N;
        layoutParams6.width = layoutParams7.width;
        layoutParams6.height = layoutParams7.height;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "ready to updateEventParams");
        e2(true);
        g2();
        d7.n nVar = this.Q;
        WindowManager.LayoutParams layoutParams8 = this.f5887y0;
        nVar.c(layoutParams8.x, layoutParams8.y);
        D1(true, false);
    }

    public final WindowManager.LayoutParams getEventLayoutParams() {
        return this.f5887y0;
    }

    public final RealView getRealView() {
        return this.f5845c;
    }

    public final n8.q n1(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        float x10 = view.getX();
        float y10 = view.getY();
        Object parent = view.getParent();
        while ((parent instanceof View) && !(parent instanceof RealView)) {
            View view2 = (View) parent;
            x10 += view2.getX();
            y10 += view2.getY();
            parent = view2.getParent();
        }
        return new n8.q(Float.valueOf(x10), Float.valueOf(y10));
    }

    public final void o1() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "handleCloseSystemDialogs");
        int i10 = b.f5894a[this.U.ordinal()];
        if (i10 == 1) {
            D1(true, true);
        } else {
            if (i10 != 2) {
                return;
            }
            b2();
        }
    }

    @Override // d7.b
    public void onAnimationUpdate(d7.d dVar) {
        d7.m mVarR;
        float f10;
        float f11;
        float f12;
        if (dVar == null || (mVarR = dVar.r()) == null) {
            return;
        }
        if (this.f5845c != null) {
            if (Math.abs(this.f5887y0.y - ((int) mVarR.f11656b)) > 1) {
                this.f5843b.p();
            }
            if (this.f5873r0) {
                if (this.f5842a0) {
                    f11 = this.f5875s0[0] - mVarR.f11655a;
                    f12 = this.f5856j;
                } else {
                    f11 = this.f5875s0[0] - mVarR.f11655a;
                    f12 = this.f5867o0;
                }
                f10 = f11 - f12;
            } else {
                f10 = mVarR.f11655a;
            }
            setRealTranslationX(f10);
            setRealTranslationY(mVarR.f11656b);
        }
        q2(mVarR);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "onAttachedToWindow");
        super.onAttachedToWindow();
        this.f5871q0 = getResources().getConfiguration().getLocales().get(0);
        c2();
        postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.u0
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationToolCapsule.u1(this.f6087a);
            }
        });
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "onDetachedFromWindow");
        super.onDetachedFromWindow();
        this.P.f(null);
        this.P.B();
        k1();
        com.coloros.translate.screen.widget.m mVar = this.D0;
        if (mVar != null) {
            mVar.u();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setEventLayoutParams(WindowManager.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(layoutParams, "<set-?>");
        this.f5887y0 = layoutParams;
    }

    public final void setFromLanguage(String language) {
        kotlin.jvm.internal.r.e(language, "language");
        TextView textView = this.B;
        if (textView == null) {
            return;
        }
        textView.setText(language);
    }

    public final void setSecurityLayer(boolean z10) {
        this.G0 = z10;
    }

    public final void setToLanguage(String language) {
        kotlin.jvm.internal.r.e(language, "language");
        TextView textView = this.C;
        if (textView == null) {
            return;
        }
        textView.setText(language);
    }

    public final void v1() {
        Object objM59constructorimpl;
        D1(false, false);
        i0 i0Var = this.J;
        if (i0Var != null) {
            i0Var.e();
        }
        try {
            r.a aVar = n8.r.Companion;
            if (isAttachedToWindow()) {
                getWindowManager().removeView(this);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "updateEventParams updateViewLayout:" + thM62exceptionOrNullimpl);
        }
    }

    public static final class RealView extends ConstraintLayout {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final a f5890c = new a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ScreenTranslationToolCapsule f5891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5892b;

        private static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RealView(Context context) {
            super(context);
            kotlin.jvm.internal.r.e(context, "context");
            setWillNotDraw(true);
            setImportantForAccessibility(4);
        }

        private final void getRealViewBackgroundDrawable() {
            Object objInvoke;
            try {
                ScreenTranslationToolCapsule screenTranslationToolCapsule = this.f5891a;
                if (screenTranslationToolCapsule == null) {
                    return;
                }
                ScreenTranslationToolCapsule screenTranslationToolCapsule2 = this.f5891a;
                screenTranslationToolCapsule.C0 = new ViewRootManager(screenTranslationToolCapsule2 != null ? screenTranslationToolCapsule2.f5872r : null);
            } catch (NoClassDefFoundError unused) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "getRealViewBackgroundDrawable NoClassDefFoundError");
                try {
                    Method method = RealView.class.getMethod("getViewRootImpl", null);
                    method.setAccessible(true);
                    try {
                        objInvoke = method.invoke(this, null);
                    } catch (IllegalAccessException e10) {
                        com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "get viewRootImpl " + e10.getMessage());
                        objInvoke = null;
                    }
                    c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                    aVar.p("ScreenTranslationToolCapsule", "viewRootImpl " + objInvoke);
                    Method method2 = objInvoke != null ? objInvoke.getClass().getMethod("createBackgroundBlurDrawable", null) : null;
                    if (method2 != null) {
                        method2.setAccessible(true);
                    }
                    Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
                    aVar.d("ScreenTranslationToolCapsule", "backgroundDrawable is " + objInvoke2);
                    ScreenTranslationToolCapsule screenTranslationToolCapsule3 = this.f5891a;
                    if (screenTranslationToolCapsule3 != null) {
                        screenTranslationToolCapsule3.A0 = objInvoke2;
                    }
                    ScreenTranslationToolCapsule screenTranslationToolCapsule4 = this.f5891a;
                    if ((screenTranslationToolCapsule4 != null ? screenTranslationToolCapsule4.B0 : null) == null) {
                        ScreenTranslationToolCapsule screenTranslationToolCapsule5 = this.f5891a;
                        if (screenTranslationToolCapsule5 != null) {
                            screenTranslationToolCapsule5.B0 = objInvoke2 != null ? objInvoke2.getClass().getDeclaredMethod("setColor", Integer.TYPE) : null;
                        }
                        ScreenTranslationToolCapsule screenTranslationToolCapsule6 = this.f5891a;
                        Method method3 = screenTranslationToolCapsule6 != null ? screenTranslationToolCapsule6.B0 : null;
                        if (method3 != null) {
                            method3.setAccessible(true);
                        }
                    }
                    ScreenTranslationToolCapsule screenTranslationToolCapsule7 = this.f5891a;
                    aVar.d("ScreenTranslationToolCapsule", "setColorForBackground is null " + (screenTranslationToolCapsule7 != null ? screenTranslationToolCapsule7.B0 : null));
                } catch (Exception e11) {
                    com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "getRealViewBackgroundDrawable exception " + n8.e.b(e11));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(RealView this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.m(1);
        }

        private final void m(int i10) {
            int i11;
            int i12 = i10 | this.f5892b;
            this.f5892b = i12;
            if (i12 != 7) {
                com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationToolCapsule", "RealView initViewWhenReady:is not ready");
                return;
            }
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "RealView initViewWhenReady");
            getRealViewBackgroundDrawable();
            final ScreenTranslationToolCapsule screenTranslationToolCapsule = this.f5891a;
            if (screenTranslationToolCapsule != null) {
                com.coloros.translate.screen.widget.m mVar = screenTranslationToolCapsule.D0;
                if (mVar != null) {
                    mVar.v(screenTranslationToolCapsule.f5876t, screenTranslationToolCapsule.f5878u, screenTranslationToolCapsule.B, screenTranslationToolCapsule.C, screenTranslationToolCapsule.A, screenTranslationToolCapsule.f5888z, screenTranslationToolCapsule.f5882w, screenTranslationToolCapsule.f5884x);
                }
                screenTranslationToolCapsule.B1();
                final WindowManager.LayoutParams eventLayoutParams = screenTranslationToolCapsule.getEventLayoutParams();
                screenTranslationToolCapsule.E = p();
                if (screenTranslationToolCapsule.f5842a0) {
                    screenTranslationToolCapsule.f5869p0 = (int) screenTranslationToolCapsule.f5858k;
                    screenTranslationToolCapsule.N.width = (int) screenTranslationToolCapsule.f5856j;
                    screenTranslationToolCapsule.N.height = screenTranslationToolCapsule.f5869p0;
                    i11 = screenTranslationToolCapsule.f5866o;
                    ImageView imageView = screenTranslationToolCapsule.f5888z;
                    if (imageView != null) {
                        imageView.setAlpha(1.0f);
                    }
                    screenTranslationToolCapsule.l2(false);
                } else {
                    screenTranslationToolCapsule.f5869p0 = (int) screenTranslationToolCapsule.f5860l;
                    screenTranslationToolCapsule.N.width = screenTranslationToolCapsule.f5867o0;
                    screenTranslationToolCapsule.N.height = screenTranslationToolCapsule.f5869p0;
                    i11 = screenTranslationToolCapsule.f5864n;
                }
                screenTranslationToolCapsule.setEventLayoutX((int) screenTranslationToolCapsule.f5879u0);
                eventLayoutParams.y = (int) getTranslationY();
                if (screenTranslationToolCapsule.E) {
                    screenTranslationToolCapsule.p1(i11);
                } else {
                    screenTranslationToolCapsule.p1(screenTranslationToolCapsule.f5868p);
                }
                postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.l1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScreenTranslationToolCapsule.RealView.n(this.f6045a, screenTranslationToolCapsule, eventLayoutParams);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(RealView this$0, ScreenTranslationToolCapsule it, WindowManager.LayoutParams eventLayoutParams) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(it, "$it");
            kotlin.jvm.internal.r.e(eventLayoutParams, "$eventLayoutParams");
            this$0.setLayoutParams(it.N);
            eventLayoutParams.width = it.N.width;
            eventLayoutParams.height = it.N.height;
            try {
                r.a aVar = n8.r.Companion;
                if (it.isAttachedToWindow()) {
                    it.getWindowManager().updateViewLayout(it, eventLayoutParams);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "updateViewLayout:" + thM62exceptionOrNullimpl);
            }
            this$0.setWillNotDraw(false);
            it.setWillNotDraw(false);
            Runnable runnable = it.W;
            if (runnable != null) {
                runnable.run();
            }
            it.W = null;
        }

        private final boolean p() {
            try {
                r.a aVar = n8.r.Companion;
                boolean z10 = true;
                if (SystemProperties.getInt("ro.surface_flinger.supports_background_blur", 1) != 1) {
                    z10 = false;
                }
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "isSupportedGaussBlur:" + z10);
                return z10;
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationToolCapsule", "isSupportedGaussBlur: onFailure" + thM62exceptionOrNullimpl);
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(RealView this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.m(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(RealView this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.setAlpha(0.0f);
            this$0.m(2);
        }

        public final ScreenTranslationToolCapsule getToolCapsule() {
            return this.f5891a;
        }

        public final boolean o() {
            return this.f5892b == 7;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "RealView onAttachedToWindow");
            super.onAttachedToWindow();
            postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.k1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationToolCapsule.RealView.q(this.f6039a);
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "RealView onDetachedFromWindow");
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "RealView onFinishInflate");
            postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.i1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationToolCapsule.RealView.r(this.f6029a);
                }
            });
        }

        public final void setToolCapsule(ScreenTranslationToolCapsule screenTranslationToolCapsule) {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationToolCapsule", "RealView set toolCapsule");
            this.f5891a = screenTranslationToolCapsule;
            postOnAnimation(new Runnable() { // from class: com.coloros.translate.screen.widget.j1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationToolCapsule.RealView.l(this.f6033a);
                }
            });
        }

        @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
        public boolean shouldDelayChildPressedState() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RealView(Context context, AttributeSet attributes) {
            super(context, attributes);
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(attributes, "attributes");
            setWillNotDraw(true);
            setImportantForAccessibility(4);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RealView(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(attributeSet, "attributeSet");
            setWillNotDraw(true);
            setImportantForAccessibility(4);
        }
    }
}
