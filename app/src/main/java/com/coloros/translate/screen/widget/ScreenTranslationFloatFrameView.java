package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.screen.R$raw;
import com.coloros.translate.screen.widget.PaintCustomView;
import com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView;
import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import d8.a;
import h8.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.sync.a;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationFloatFrameView extends FrameLayout implements PaintCustomView.a {

    /* JADX INFO: renamed from: t */
    public static final b f5776t = new b(null);

    /* JADX INFO: renamed from: u */
    private static final PathInterpolator f5777u = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);

    /* JADX INFO: renamed from: a */
    private final Context f5778a;

    /* JADX INFO: renamed from: b */
    private final n8.j f5779b;

    /* JADX INFO: renamed from: c */
    private a f5780c;

    /* JADX INFO: renamed from: f */
    private COETextureView f5781f;

    /* JADX INFO: renamed from: h */
    private PaintCustomView f5782h;

    /* JADX INFO: renamed from: i */
    private int[] f5783i;

    /* JADX INFO: renamed from: j */
    private boolean f5784j;

    /* JADX INFO: renamed from: k */
    private volatile kotlinx.coroutines.f1 f5785k;

    /* JADX INFO: renamed from: l */
    private RectF f5786l;

    /* JADX INFO: renamed from: m */
    private String f5787m;

    /* JADX INFO: renamed from: n */
    private boolean f5788n;

    /* JADX INFO: renamed from: o */
    private boolean f5789o;

    /* JADX INFO: renamed from: p */
    private final n8.j f5790p;

    /* JADX INFO: renamed from: q */
    private final kotlinx.coroutines.sync.a f5791q;

    /* JADX INFO: renamed from: r */
    private LottieAnimationView f5792r;

    /* JADX INFO: renamed from: s */
    private boolean f5793s;

    public interface a {
        void b(RectF rectF);

        void d();

        void q();
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public static final class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            super.onAnimationEnd(animation);
            ScreenTranslationFloatFrameView.this.M();
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final kotlinx.coroutines.c0 mo8invoke() {
            return kotlinx.coroutines.d0.a(kotlinx.coroutines.x1.b(null, 1, null).plus(kotlinx.coroutines.o0.a()));
        }
    }

    public static final class e extends AnimatorListenerAdapter {

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ ScreenTranslationFloatFrameView this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView$e$a$a */
            static final class C0084a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                int label;
                final /* synthetic */ ScreenTranslationFloatFrameView this$0;

                /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView$e$a$a$a */
                static final class C0085a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                    int label;
                    final /* synthetic */ ScreenTranslationFloatFrameView this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0085a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                        super(2, dVar);
                        this.this$0 = screenTranslationFloatFrameView;
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                        return new C0085a(this.this$0, dVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    public final Object invokeSuspend(Object obj) {
                        com.oplus.vfxsdk.naive.a engine;
                        kotlin.coroutines.intrinsics.b.f();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        n8.s.b(obj);
                        COETextureView cOETextureView = this.this$0.f5781f;
                        if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
                            engine.u();
                        }
                        PaintCustomView paintCustomView = this.this$0.f5782h;
                        if (paintCustomView == null) {
                            return null;
                        }
                        paintCustomView.onDestroy();
                        return n8.h0.INSTANCE;
                    }

                    @Override // w8.p
                    public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                        return ((C0085a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0084a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.this$0 = screenTranslationFloatFrameView;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0084a(this.this$0, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    Object objF = kotlin.coroutines.intrinsics.b.f();
                    int i10 = this.label;
                    if (i10 == 0) {
                        n8.s.b(obj);
                        this.this$0.setWillNotDraw(true);
                        this.this$0.setAlpha(0.0f);
                        this.this$0.setVisibility(8);
                        kotlinx.coroutines.y yVarA = kotlinx.coroutines.o0.a();
                        C0085a c0085a = new C0085a(this.this$0, null);
                        this.label = 1;
                        if (kotlinx.coroutines.f.c(yVarA, c0085a, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        n8.s.b(obj);
                    }
                    ScreenTranslationFloatFrameView screenTranslationFloatFrameView = this.this$0;
                    screenTranslationFloatFrameView.removeView(screenTranslationFloatFrameView.f5781f);
                    ScreenTranslationFloatFrameView screenTranslationFloatFrameView2 = this.this$0;
                    screenTranslationFloatFrameView2.removeView(screenTranslationFloatFrameView2.f5782h);
                    this.this$0.f5781f = null;
                    this.this$0.f5782h = null;
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0084a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationFloatFrameView;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    kotlinx.coroutines.sync.a aVar = this.this$0.f5791q;
                    this.label = 1;
                    if (a.C0171a.a(aVar, null, this, 1, null) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        n8.s.b(obj);
                        a.C0171a.b(this.this$0.f5791q, null, 1, null);
                        return n8.h0.INSTANCE;
                    }
                    n8.s.b(obj);
                }
                kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
                C0084a c0084a = new C0084a(this.this$0, null);
                this.label = 2;
                if (kotlinx.coroutines.f.c(p1VarC, c0084a, this) == objF) {
                    return objF;
                }
                a.C0171a.b(this.this$0.f5791q, null, 1, null);
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            kotlinx.coroutines.g.b(ScreenTranslationFloatFrameView.this.getDefaultScope(), null, null, new a(ScreenTranslationFloatFrameView.this, null), 3, null);
        }
    }

    static final class f extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        f(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScreenTranslationFloatFrameView.this.I(this);
        }
    }

    static final class g extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(com.oplus.vfxsdk.naive.a aVar, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$this_apply = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new g(this.$this_apply, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            a.C0134a.a(this.$this_apply, "screen_recognition.coz", false, false, 6, null);
            if (com.coloros.translate.screen.utils.p.e()) {
                this.$this_apply.D(30);
            } else {
                this.$this_apply.D(60);
            }
            BaseRenderer baseRendererQ = this.$this_apply.q(0);
            if (baseRendererQ != null) {
                baseRendererQ.setParameter(2, "u_density", kotlin.coroutines.jvm.internal.b.b(this.$this_apply.k().getResources().getDisplayMetrics().density));
            }
            BaseRenderer baseRendererQ2 = this.$this_apply.q(0);
            if (baseRendererQ2 != null) {
                baseRendererQ2.setParameter(2, "uCornerRadius", kotlin.coroutines.jvm.internal.b.b(0.0f));
            }
            com.oplus.vfxsdk.naive.a aVar = this.$this_apply;
            Animator.a aVar2 = Animator.a.REVERSE_LOOP;
            aVar.B("SelectLoop", aVar2);
            this.$this_apply.B("FrameLoop", aVar2);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((g) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectStart anim start");
            ScreenTranslationFloatFrameView.this.f5787m = "SelectStart";
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(com.oplus.vfxsdk.naive.a aVar) {
            super(0);
            this.$this_apply = aVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectStart anim end:" + ScreenTranslationFloatFrameView.this.f5788n);
            if (ScreenTranslationFloatFrameView.this.f5788n) {
                return;
            }
            this.$this_apply.y("SelectLoop");
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        j() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "SelectLoop";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectLoop anim start");
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.a {
        k() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectLoop anim end");
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.a {
        l() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "SelectEnd";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectEnd anim start");
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.a {
        m() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "SelectEnd anim end");
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.a {
        n() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "FrameStart";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "FrameStart anim start");
        }
    }

    static final class o extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(com.oplus.vfxsdk.naive.a aVar) {
            super(0);
            this.$this_apply = aVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "FrameStart anim end");
            this.$this_apply.y("FrameLoop");
        }
    }

    static final class p extends kotlin.jvm.internal.s implements w8.a {
        p() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "FrameLoop";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "FrameLoop anim start");
        }
    }

    static final class q extends kotlin.jvm.internal.s implements w8.a {
        q() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationFloatFrameView.this.f5787m = "";
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "FrameLoop anim end");
        }
    }

    public static final class r implements h8.a {
        r() {
        }

        @Override // h8.a
        public void a() {
            a.C0147a.b(this);
            PaintCustomView paintCustomView = ScreenTranslationFloatFrameView.this.f5782h;
            if (paintCustomView != null) {
                paintCustomView.start();
            }
        }

        @Override // h8.a
        public void b() {
            a.C0147a.g(this);
        }

        @Override // h8.a
        public void c() {
            a.C0147a.a(this);
        }

        @Override // h8.a
        public void d() {
            a.C0147a.c(this);
        }

        @Override // h8.a
        public void onRenderQuit() {
            a.C0147a.d(this);
        }

        @Override // h8.a
        public void onRenderStart() {
            a.C0147a.e(this);
        }

        @Override // h8.a
        public void onStart() {
            a.C0147a.f(this);
        }
    }

    static final class s extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ long $timeMillis;
        int label;
        final /* synthetic */ ScreenTranslationFloatFrameView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(long j10, ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$timeMillis = j10;
            this.this$0 = screenTranslationFloatFrameView;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new s(this.$timeMillis, this.this$0, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            a aVar;
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                long j10 = this.$timeMillis;
                this.label = 1;
                if (kotlinx.coroutines.k0.a(j10, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            this.this$0.f5785k = null;
            if (!this.this$0.isEnabled()) {
                com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationFloatFrameView", "launchDelayedScreenshotJob:isEnabled false");
                return n8.h0.INSTANCE;
            }
            RectF rectF = this.this$0.f5786l;
            if (rectF != null && (aVar = this.this$0.f5780c) != null) {
                aVar.b(rectF);
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((s) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class t extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ ScreenTranslationFloatFrameView this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView$t$a$a */
            static final class C0086a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                int label;
                final /* synthetic */ ScreenTranslationFloatFrameView this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0086a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.this$0 = screenTranslationFloatFrameView;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0086a(this.this$0, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    com.oplus.vfxsdk.naive.a engine;
                    kotlin.coroutines.intrinsics.b.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    COETextureView cOETextureView = this.this$0.f5781f;
                    if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
                        engine.u();
                    }
                    PaintCustomView paintCustomView = this.this$0.f5782h;
                    if (paintCustomView == null) {
                        return null;
                    }
                    paintCustomView.onDestroy();
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0086a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationFloatFrameView;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    this.this$0.setEnabled(false);
                    this.this$0.M();
                    kotlinx.coroutines.f1 f1Var = this.this$0.f5785k;
                    if (f1Var != null) {
                        f1.a.a(f1Var, null, 1, null);
                    }
                    PaintCustomView paintCustomView = this.this$0.f5782h;
                    if (paintCustomView != null) {
                        paintCustomView.setCallback(null);
                    }
                    kotlinx.coroutines.y yVarA = kotlinx.coroutines.o0.a();
                    C0086a c0086a = new C0086a(this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(yVarA, c0086a, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                }
                ScreenTranslationFloatFrameView screenTranslationFloatFrameView = this.this$0;
                try {
                    r.a aVar = n8.r.Companion;
                    if (screenTranslationFloatFrameView.isAttachedToWindow()) {
                        screenTranslationFloatFrameView.setWillNotDraw(true);
                        screenTranslationFloatFrameView.removeView(screenTranslationFloatFrameView.f5781f);
                        screenTranslationFloatFrameView.removeView(screenTranslationFloatFrameView.f5782h);
                        screenTranslationFloatFrameView.f5781f = null;
                        screenTranslationFloatFrameView.f5782h = null;
                        screenTranslationFloatFrameView.getWindowManager().removeView(screenTranslationFloatFrameView);
                    }
                    n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    n8.r.m59constructorimpl(n8.s.a(th));
                }
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        t(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationFloatFrameView.this.new t(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
                a aVar = new a(ScreenTranslationFloatFrameView.this, null);
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
            return ((t) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class u extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ ScreenTranslationFloatFrameView this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView$u$a$a */
            static final class C0087a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;
                int label;
                final /* synthetic */ ScreenTranslationFloatFrameView this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0087a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, com.oplus.vfxsdk.naive.a aVar, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.this$0 = screenTranslationFloatFrameView;
                    this.$this_apply = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0087a(this.this$0, this.$this_apply, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.b.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    Bitmap bitmapA = com.coloros.translate.screen.utils.l.a(this.$this_apply.k(), new Rect(0, 0, this.this$0.f5783i[0], this.this$0.f5783i[1]), kotlin.coroutines.jvm.internal.b.a(true));
                    if (bitmapA == null) {
                        return n8.h0.INSTANCE;
                    }
                    Bitmap.Config config = Bitmap.Config.ARGB_8888;
                    Bitmap bitmapCopy = bitmapA.copy(config, true);
                    Bitmap bitmapCopy2 = bitmapA.copy(config, true);
                    TexCreateInfo texCreateInfo = new TexCreateInfo();
                    texCreateInfo.setBitmap(bitmapCopy);
                    texCreateInfo.setFlipY(true);
                    TexCreateInfo.WrapMode wrapMode = TexCreateInfo.WrapMode.CLAMP;
                    texCreateInfo.setWrapMode(wrapMode);
                    TexCreateInfo.FilterMode filterMode = TexCreateInfo.FilterMode.LINEAR;
                    texCreateInfo.setFilterMode(filterMode);
                    TexCreateInfo texCreateInfo2 = new TexCreateInfo();
                    texCreateInfo2.setBitmap(bitmapCopy2);
                    texCreateInfo2.setFlipY(true);
                    texCreateInfo2.setWrapMode(wrapMode);
                    texCreateInfo2.setFilterMode(filterMode);
                    BaseRenderer baseRendererQ = this.$this_apply.q(0);
                    if (baseRendererQ != null) {
                        baseRendererQ.setParameter(0, "uBaseTexture", this.$this_apply.h(texCreateInfo));
                    }
                    BaseRenderer baseRendererQ2 = this.$this_apply.q(0);
                    if (baseRendererQ2 != null) {
                        baseRendererQ2.setParameter(2, "uRawTexture", this.$this_apply.h(texCreateInfo2));
                    }
                    bitmapA.recycle();
                    bitmapCopy.recycle();
                    bitmapCopy2.recycle();
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0087a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationFloatFrameView;
            }

            public static final void invokeSuspend$lambda$2$lambda$1(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                screenTranslationFloatFrameView.setAlpha(((Float) animatedValue).floatValue());
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                com.oplus.vfxsdk.naive.a engine;
                com.oplus.vfxsdk.naive.a aVar;
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    ScreenTranslationFloatFrameView screenTranslationFloatFrameView = this.this$0;
                    this.label = 1;
                    if (screenTranslationFloatFrameView.I(this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar = (com.oplus.vfxsdk.naive.a) this.L$1;
                        n8.s.b(obj);
                        aVar.E();
                        aVar.y("SelectLoop");
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        final ScreenTranslationFloatFrameView screenTranslationFloatFrameView2 = this.this$0;
                        valueAnimatorOfFloat.setDuration(500L);
                        valueAnimatorOfFloat.setInterpolator(ScreenTranslationFloatFrameView.f5777u);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.o
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ScreenTranslationFloatFrameView.u.a.invokeSuspend$lambda$2$lambda$1(screenTranslationFloatFrameView2, valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat.start();
                        this.this$0.f5789o = false;
                        return n8.h0.INSTANCE;
                    }
                    n8.s.b(obj);
                }
                this.this$0.f5788n = false;
                this.this$0.setGoingHideFloatView(false);
                COETextureView cOETextureView = this.this$0.f5781f;
                if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
                    ScreenTranslationFloatFrameView screenTranslationFloatFrameView3 = this.this$0;
                    kotlinx.coroutines.y yVarA = kotlinx.coroutines.o0.a();
                    C0087a c0087a = new C0087a(screenTranslationFloatFrameView3, engine, null);
                    this.L$0 = engine;
                    this.L$1 = engine;
                    this.label = 2;
                    if (kotlinx.coroutines.f.c(yVarA, c0087a, this) == objF) {
                        return objF;
                    }
                    aVar = engine;
                    aVar.E();
                    aVar.y("SelectLoop");
                }
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                final ScreenTranslationFloatFrameView screenTranslationFloatFrameView22 = this.this$0;
                valueAnimatorOfFloat2.setDuration(500L);
                valueAnimatorOfFloat2.setInterpolator(ScreenTranslationFloatFrameView.f5777u);
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.o
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ScreenTranslationFloatFrameView.u.a.invokeSuspend$lambda$2$lambda$1(screenTranslationFloatFrameView22, valueAnimator);
                    }
                });
                valueAnimatorOfFloat2.start();
                this.this$0.f5789o = false;
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        u(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationFloatFrameView.this.new u(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.sync.a aVar = ScreenTranslationFloatFrameView.this.f5791q;
                this.label = 1;
                if (a.C0171a.a(aVar, null, this, 1, null) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    a.C0171a.b(ScreenTranslationFloatFrameView.this.f5791q, null, 1, null);
                    return n8.h0.INSTANCE;
                }
                n8.s.b(obj);
            }
            kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
            a aVar2 = new a(ScreenTranslationFloatFrameView.this, null);
            this.label = 2;
            if (kotlinx.coroutines.f.c(p1VarC, aVar2, this) == objF) {
                return objF;
            }
            a.C0171a.b(ScreenTranslationFloatFrameView.this.f5791q, null, 1, null);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((u) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class v extends kotlin.jvm.internal.s implements w8.a {
        v() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final WindowManager mo8invoke() {
            Object systemService = ScreenTranslationFloatFrameView.this.f5778a.getSystemService("window");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            return (WindowManager) systemService;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenTranslationFloatFrameView(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        this.f5778a = context;
        this.f5779b = n8.k.b(new v());
        this.f5783i = com.coloros.translate.screen.utils.k.d(context);
        this.f5790p = n8.k.b(d.INSTANCE);
        this.f5791q = kotlinx.coroutines.sync.c.b(false, 1, null);
        this.f5793s = ((Boolean) com.coloros.translate.screen.utils.e.b(context, "pref_screen_translation_free_tip", Boolean.FALSE)).booleanValue();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1);
        int[] iArr = this.f5783i;
        layoutParams.width = iArr[0];
        layoutParams.height = iArr[1];
        layoutParams.format = -3;
        layoutParams.type = 2038;
        layoutParams.flags = 201327392;
        setWillNotDraw(true);
        setAlpha(0.0f);
        setVisibility(8);
        int[] iArr2 = this.f5783i;
        setSystemGestureExclusionRects(kotlin.collections.o.b(new Rect(0, 0, iArr2[0], iArr2[1])));
        getWindowManager().addView(this, layoutParams);
    }

    public static /* synthetic */ void D(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        screenTranslationFloatFrameView.C(z10);
    }

    private final void E() {
        if (this.f5793s) {
            return;
        }
        this.f5793s = true;
        LottieAnimationView lottieAnimationView = new LottieAnimationView(this.f5778a);
        lottieAnimationView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        lottieAnimationView.setAnimation(R$raw.screen_free_guide);
        lottieAnimationView.setRepeatCount(0);
        lottieAnimationView.g(new c());
        lottieAnimationView.v();
        this.f5792r = lottieAnimationView;
        addView(lottieAnimationView);
        com.coloros.translate.screen.utils.e.d(this.f5778a, "pref_screen_translation_free_tip", Boolean.TRUE);
    }

    public static final void H(ScreenTranslationFloatFrameView this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.setAlpha(((Float) animatedValue).floatValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object I(kotlin.coroutines.d r7) {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView.I(kotlin.coroutines.d):java.lang.Object");
    }

    public static /* synthetic */ void K(ScreenTranslationFloatFrameView screenTranslationFloatFrameView, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 1000;
        }
        screenTranslationFloatFrameView.J(j10);
    }

    public final void M() {
        Object objM59constructorimpl;
        LottieAnimationView lottieAnimationView = this.f5792r;
        if (lottieAnimationView != null) {
            try {
                r.a aVar = n8.r.Companion;
                if (lottieAnimationView.q()) {
                    LottieAnimationView lottieAnimationView2 = this.f5792r;
                    if (lottieAnimationView2 != null) {
                        lottieAnimationView2.w();
                    }
                    lottieAnimationView.j();
                }
                removeView(lottieAnimationView);
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationFloatFrameView", "removeGuideView:" + thM62exceptionOrNullimpl);
            }
            n8.r.m58boximpl(objM59constructorimpl);
        }
        this.f5792r = null;
    }

    public final kotlinx.coroutines.c0 getDefaultScope() {
        return (kotlinx.coroutines.c0) this.f5790p.getValue();
    }

    public final WindowManager getWindowManager() {
        return (WindowManager) this.f5779b.getValue();
    }

    public final void C(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "cancel():" + z10);
        kotlinx.coroutines.f1 f1Var = this.f5785k;
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        a aVar = this.f5780c;
        if (aVar != null) {
            aVar.q();
        }
        if (z10) {
            G();
        }
    }

    public final void F(Configuration configuration) {
        Object objM59constructorimpl;
        this.f5783i = com.coloros.translate.screen.utils.k.d(this.f5778a);
        int[] iArr = this.f5783i;
        setSystemGestureExclusionRects(kotlin.collections.o.b(new Rect(0, 0, iArr[0], iArr[1])));
        try {
            r.a aVar = n8.r.Companion;
            if (isAttachedToWindow()) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                int[] iArr2 = this.f5783i;
                layoutParams.width = iArr2[0];
                layoutParams.height = iArr2[1];
                getWindowManager().updateViewLayout(this, layoutParams);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationFloatFrameView", "updateWhenConfigurationChanged updateViewLayout:" + thM62exceptionOrNullimpl);
        }
    }

    public final void G() {
        com.oplus.vfxsdk.naive.a engine;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "hide():" + this.f5787m);
        setEnabled(false);
        kotlinx.coroutines.f1 f1Var = this.f5785k;
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        setSystemUiVisibility(1024);
        setGoingHideFloatView(true);
        this.f5786l = null;
        COETextureView cOETextureView = this.f5781f;
        if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
            String str = this.f5787m;
            if (str != null) {
                engine.G(str);
            }
            if (kotlin.jvm.internal.r.a(this.f5787m, "SelectStart") || kotlin.jvm.internal.r.a(this.f5787m, "SelectLoop") || kotlin.jvm.internal.r.a(this.f5787m, "SelectEnd")) {
                engine.y("SelectStop");
            } else if (kotlin.jvm.internal.r.a(this.f5787m, "FrameStart") || kotlin.jvm.internal.r.a(this.f5787m, "FrameLoop")) {
                engine.y("FrameEnd");
            }
        }
        M();
        this.f5787m = "";
        if (isShown()) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat.setDuration(500L);
            valueAnimatorOfFloat.setInterpolator(f5777u);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.n
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ScreenTranslationFloatFrameView.H(this.f6056a, valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new e());
            valueAnimatorOfFloat.start();
        }
    }

    public final void J(long j10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "launchDelayedScreenshotJob:" + this.f5784j + "," + isEnabled());
        if (!isEnabled() || this.f5784j || this.f5786l == null) {
            return;
        }
        kotlinx.coroutines.f1 f1Var = this.f5785k;
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        this.f5785k = kotlinx.coroutines.g.b(kotlinx.coroutines.d0.a(kotlinx.coroutines.o0.c()), null, null, new s(j10, this, null), 3, null);
    }

    public final void L() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "onDestroy");
        kotlinx.coroutines.g.b(getDefaultScope(), null, null, new t(null), 3, null);
    }

    public final void N() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "show:" + this.f5789o);
        if (this.f5789o) {
            return;
        }
        this.f5789o = true;
        kotlinx.coroutines.g.b(getDefaultScope(), null, null, new u(null), 3, null);
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void a() {
        a aVar = this.f5780c;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void b() {
        com.oplus.vfxsdk.naive.a engine;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "onDrawCancel");
        this.f5786l = null;
        COETextureView cOETextureView = this.f5781f;
        if (cOETextureView == null || (engine = cOETextureView.getEngine()) == null) {
            return;
        }
        String str = this.f5787m;
        if (str != null) {
            engine.G(str);
        }
        engine.y("SelectLoop");
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void c(RectF rect) {
        COETextureView cOETextureView;
        com.oplus.vfxsdk.naive.a engine;
        kotlin.jvm.internal.r.e(rect, "rect");
        if (!isEnabled() || (cOETextureView = this.f5781f) == null || (engine = cOETextureView.getEngine()) == null) {
            return;
        }
        BaseRenderer baseRendererQ = engine.q(0);
        if (baseRendererQ != null) {
            baseRendererQ.setParameter(2, "uFrameCenter", Float.valueOf(rect.centerX()), Float.valueOf(rect.centerY()));
        }
        BaseRenderer baseRendererQ2 = engine.q(0);
        if (baseRendererQ2 != null) {
            baseRendererQ2.setParameter(2, "uFrameSize", Float.valueOf(rect.width()), Float.valueOf(rect.height()));
        }
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void d(RectF rect) {
        com.oplus.vfxsdk.naive.a engine;
        kotlin.jvm.internal.r.e(rect, "rect");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "onDrawFinish():" + isEnabled());
        if (isEnabled()) {
            COETextureView cOETextureView = this.f5781f;
            if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
                BaseRenderer baseRendererQ = engine.q(0);
                if (baseRendererQ != null) {
                    baseRendererQ.setParameter(2, "uFrameCenter", Float.valueOf(rect.centerX()), Float.valueOf(rect.centerY()));
                }
                BaseRenderer baseRendererQ2 = engine.q(0);
                if (baseRendererQ2 != null) {
                    baseRendererQ2.setParameter(2, "uFrameSize", Float.valueOf(rect.width()), Float.valueOf(rect.height()));
                }
                engine.y("FrameStart");
            }
            this.f5786l = rect;
            K(this, 0L, 1, null);
        }
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void e(float f10, float f11) {
        com.oplus.vfxsdk.naive.a engine;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "onDrawStart():" + isEnabled());
        M();
        if (isEnabled()) {
            this.f5788n = true;
            COETextureView cOETextureView = this.f5781f;
            if (cOETextureView == null || (engine = cOETextureView.getEngine()) == null) {
                return;
            }
            BaseRenderer baseRendererQ = engine.q(0);
            if (baseRendererQ != null) {
                baseRendererQ.setParameter(2, "uCircle1Pos", Float.valueOf(f10), Float.valueOf(f11));
            }
            String str = this.f5787m;
            if (str != null) {
                engine.G(str);
            }
            engine.y("SelectEnd");
        }
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void f(float f10, float f11) {
        kotlinx.coroutines.f1 f1Var = this.f5785k;
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        a aVar = this.f5780c;
        if (aVar != null) {
            aVar.q();
        }
    }

    @Override // com.coloros.translate.screen.widget.PaintCustomView.a
    public void g(RectF rect) {
        kotlin.jvm.internal.r.e(rect, "rect");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "onDragFinish:" + isEnabled());
        if (isEnabled()) {
            this.f5786l = rect;
            K(this, 0L, 1, null);
        }
    }

    public final boolean getGoingHideFloatView() {
        return this.f5784j;
    }

    public final void setCallback(a onCallback) {
        kotlin.jvm.internal.r.e(onCallback, "onCallback");
        this.f5780c = onCallback;
    }

    public final void setGoingHideFloatView(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatFrameView", "goingHideFloatView " + z10);
        this.f5784j = z10;
    }
}
