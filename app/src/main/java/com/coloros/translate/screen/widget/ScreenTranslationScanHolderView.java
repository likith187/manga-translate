package com.coloros.translate.screen.widget;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import d8.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.sync.a;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class ScreenTranslationScanHolderView extends FrameLayout {

    /* JADX INFO: renamed from: o */
    private static final a f5828o = new a(null);

    /* JADX INFO: renamed from: p */
    private static final PathInterpolator f5829p = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);

    /* JADX INFO: renamed from: a */
    private final Context f5830a;

    /* JADX INFO: renamed from: b */
    private final FrameLayout f5831b;

    /* JADX INFO: renamed from: c */
    private COETextureView f5832c;

    /* JADX INFO: renamed from: f */
    private int[] f5833f;

    /* JADX INFO: renamed from: h */
    private Texture f5834h;

    /* JADX INFO: renamed from: i */
    private Texture f5835i;

    /* JADX INFO: renamed from: j */
    private final n8.j f5836j;

    /* JADX INFO: renamed from: k */
    private kotlinx.coroutines.f1 f5837k;

    /* JADX INFO: renamed from: l */
    private kotlinx.coroutines.f1 f5838l;

    /* JADX INFO: renamed from: m */
    private boolean f5839m;

    /* JADX INFO: renamed from: n */
    private final kotlinx.coroutines.sync.a f5840n;

    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final kotlinx.coroutines.c0 mo8invoke() {
            return kotlinx.coroutines.d0.a(kotlinx.coroutines.x1.b(null, 1, null).plus(kotlinx.coroutines.o0.a()));
        }
    }

    static final class c extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ boolean $isExit;
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ boolean $isExit;
            Object L$0;
            int label;
            final /* synthetic */ ScreenTranslationScanHolderView this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$c$a$a */
            static final class C0088a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;
                int label;
                final /* synthetic */ ScreenTranslationScanHolderView this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0088a(ScreenTranslationScanHolderView screenTranslationScanHolderView, com.oplus.vfxsdk.naive.a aVar, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.this$0 = screenTranslationScanHolderView;
                    this.$this_apply = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0088a(this.this$0, this.$this_apply, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.b.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    Texture texture = this.this$0.f5834h;
                    if (texture != null) {
                        com.oplus.vfxsdk.naive.a aVar = this.$this_apply;
                        ScreenTranslationScanHolderView screenTranslationScanHolderView = this.this$0;
                        aVar.z(texture);
                        screenTranslationScanHolderView.f5834h = null;
                    }
                    Texture texture2 = this.this$0.f5835i;
                    if (texture2 != null) {
                        com.oplus.vfxsdk.naive.a aVar2 = this.$this_apply;
                        ScreenTranslationScanHolderView screenTranslationScanHolderView2 = this.this$0;
                        aVar2.z(texture2);
                        screenTranslationScanHolderView2.f5835i = null;
                    }
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0088a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ScreenTranslationScanHolderView screenTranslationScanHolderView, boolean z10, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationScanHolderView;
                this.$isExit = z10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, this.$isExit, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                com.oplus.vfxsdk.naive.a engine;
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    this.this$0.setVisibility(8);
                    COETextureView cOETextureView = this.this$0.f5832c;
                    if (cOETextureView != null && (engine = cOETextureView.getEngine()) != null) {
                        ScreenTranslationScanHolderView screenTranslationScanHolderView = this.this$0;
                        engine.G("SelectLoop");
                        engine.F();
                        kotlinx.coroutines.y yVarA = kotlinx.coroutines.o0.a();
                        C0088a c0088a = new C0088a(screenTranslationScanHolderView, engine, null);
                        this.L$0 = engine;
                        this.label = 1;
                        if (kotlinx.coroutines.f.c(yVarA, c0088a, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        n8.s.b(obj);
                        this.this$0.f5838l = null;
                        return n8.h0.INSTANCE;
                    }
                    n8.s.b(obj);
                }
                if (this.$isExit) {
                    ScreenTranslationScanHolderView screenTranslationScanHolderView2 = this.this$0;
                    this.L$0 = null;
                    this.label = 2;
                    if (screenTranslationScanHolderView2.p(this) == objF) {
                        return objF;
                    }
                }
                this.this$0.f5838l = null;
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z10, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$isExit = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationScanHolderView.this.new c(this.$isExit, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.sync.a aVar = ScreenTranslationScanHolderView.this.f5840n;
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
                    a.C0171a.b(ScreenTranslationScanHolderView.this.f5840n, null, 1, null);
                    return n8.h0.INSTANCE;
                }
                n8.s.b(obj);
            }
            kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
            a aVar2 = new a(ScreenTranslationScanHolderView.this, this.$isExit, null);
            this.label = 2;
            if (kotlinx.coroutines.f.c(p1VarC, aVar2, this) == objF) {
                return objF;
            }
            a.C0171a.b(ScreenTranslationScanHolderView.this.f5840n, null, 1, null);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((c) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScreenTranslationScanHolderView.this.p(this);
        }
    }

    static final class e extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        e(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationScanHolderView.this.new e(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            com.oplus.vfxsdk.naive.a engine;
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            COETextureView cOETextureView = ScreenTranslationScanHolderView.this.f5832c;
            if (cOETextureView == null || (engine = cOETextureView.getEngine()) == null) {
                return null;
            }
            engine.u();
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((e) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class f extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            Object L$0;
            Object L$1;
            Object L$2;
            int label;
            final /* synthetic */ ScreenTranslationScanHolderView this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$f$a$a */
            static final class C0089a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0089a(com.oplus.vfxsdk.naive.a aVar, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.$this_apply = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0089a(this.$this_apply, dVar);
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
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0089a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            static final class b extends kotlin.coroutines.jvm.internal.l implements w8.p {
                final /* synthetic */ w $params;
                final /* synthetic */ com.oplus.vfxsdk.naive.a $this_apply;
                int label;
                final /* synthetic */ ScreenTranslationScanHolderView this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(com.oplus.vfxsdk.naive.a aVar, w wVar, ScreenTranslationScanHolderView screenTranslationScanHolderView, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.$this_apply = aVar;
                    this.$params = wVar;
                    this.this$0 = screenTranslationScanHolderView;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new b(this.$this_apply, this.$params, this.this$0, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.b.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    Bitmap bitmapA = com.coloros.translate.screen.utils.l.a(this.$this_apply.k(), this.$params.b(), kotlin.coroutines.jvm.internal.b.a(true));
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
                    Texture textureH = this.$this_apply.h(texCreateInfo2);
                    Texture textureH2 = this.$this_apply.h(texCreateInfo);
                    BaseRenderer baseRendererQ = this.$this_apply.q(0);
                    if (baseRendererQ != null) {
                        baseRendererQ.setParameter(0, "uBaseTexture", textureH);
                    }
                    BaseRenderer baseRendererQ2 = this.$this_apply.q(0);
                    if (baseRendererQ2 != null) {
                        baseRendererQ2.setParameter(2, "uRawTexture", textureH2);
                    }
                    bitmapA.recycle();
                    bitmapCopy.recycle();
                    bitmapCopy2.recycle();
                    Texture texture = this.this$0.f5834h;
                    if (texture != null) {
                        this.$this_apply.z(texture);
                    }
                    Texture texture2 = this.this$0.f5835i;
                    if (texture2 != null) {
                        this.$this_apply.z(texture2);
                    }
                    this.this$0.f5834h = textureH;
                    this.this$0.f5835i = textureH2;
                    return n8.h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((b) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ScreenTranslationScanHolderView screenTranslationScanHolderView, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = screenTranslationScanHolderView;
            }

            public static final void invokeSuspend$lambda$5$lambda$4$lambda$3(ScreenTranslationScanHolderView screenTranslationScanHolderView, ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                screenTranslationScanHolderView.setAlpha(((Float) animatedValue).floatValue());
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            /* JADX WARN: Removed duplicated region for block: B:104:0x0175 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0176  */
            /* JADX WARN: Removed duplicated region for block: B:111:0x0185  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0117  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x0141  */
            @Override // kotlin.coroutines.jvm.internal.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                /*
                    Method dump skipped, instruction units count: 456
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationScanHolderView.f.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        f(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationScanHolderView.this.new f(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.sync.a aVar = ScreenTranslationScanHolderView.this.f5840n;
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
                    a.C0171a.b(ScreenTranslationScanHolderView.this.f5840n, null, 1, null);
                    return n8.h0.INSTANCE;
                }
                n8.s.b(obj);
            }
            kotlinx.coroutines.p1 p1VarC = kotlinx.coroutines.o0.c();
            a aVar2 = new a(ScreenTranslationScanHolderView.this, null);
            this.label = 2;
            if (kotlinx.coroutines.f.c(p1VarC, aVar2, this) == objF) {
                return objF;
            }
            a.C0171a.b(ScreenTranslationScanHolderView.this.f5840n, null, 1, null);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((f) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenTranslationScanHolderView(Context context, FrameLayout rootView) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(rootView, "rootView");
        this.f5830a = context;
        this.f5831b = rootView;
        this.f5833f = com.coloros.translate.screen.utils.k.d(context);
        this.f5836j = n8.k.b(b.INSTANCE);
        this.f5840n = kotlinx.coroutines.sync.c.b(false, 1, null);
        int[] iArr = this.f5833f;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iArr[0], iArr[1], 8388659);
        setWillNotDraw(true);
        setAlpha(0.0f);
        setVisibility(8);
        rootView.addView(this, layoutParams);
    }

    private final kotlinx.coroutines.c0 getDefaultScope() {
        return (kotlinx.coroutines.c0) this.f5836j.getValue();
    }

    public static /* synthetic */ void o(ScreenTranslationScanHolderView screenTranslationScanHolderView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        screenTranslationScanHolderView.n(z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object p(kotlin.coroutines.d r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.coloros.translate.screen.widget.ScreenTranslationScanHolderView.d
            if (r0 == 0) goto L13
            r0 = r6
            com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$d r0 = (com.coloros.translate.screen.widget.ScreenTranslationScanHolderView.d) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$d r0 = new com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.f()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2e
            java.lang.Object r5 = r0.L$0
            com.coloros.translate.screen.widget.ScreenTranslationScanHolderView r5 = (com.coloros.translate.screen.widget.ScreenTranslationScanHolderView) r5
            n8.s.b(r6)
            goto L4d
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            n8.s.b(r6)
            kotlinx.coroutines.y r6 = kotlinx.coroutines.o0.a()
            com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$e r2 = new com.coloros.translate.screen.widget.ScreenTranslationScanHolderView$e
            r2.<init>(r3)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = kotlinx.coroutines.f.c(r6, r2, r0)
            if (r6 != r1) goto L4d
            return r1
        L4d:
            com.coloros.translate.screen.widget.COETextureView r6 = r5.f5832c
            r5.removeView(r6)
            r5.f5832c = r3
            n8.h0 r5 = n8.h0.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationScanHolderView.p(kotlin.coroutines.d):java.lang.Object");
    }

    public final void n(boolean z10) {
        this.f5838l = kotlinx.coroutines.g.b(getDefaultScope(), null, null, new c(z10, null), 3, null);
    }

    public final void q() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationScanHolderView", "destroy");
            n(true);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationScanHolderView", "onDestroy onFailure: " + thM62exceptionOrNullimpl);
        }
    }

    public final void r() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationScanHolderView", "releaseWhenExitFullTranslation");
        n(true);
    }

    public final void s() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationScanHolderView", "showScan:" + this.f5839m);
        if (this.f5839m) {
            return;
        }
        this.f5839m = true;
        this.f5837k = kotlinx.coroutines.g.b(getDefaultScope(), null, null, new f(null), 3, null);
    }
}
