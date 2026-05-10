package com.coloros.translate.screen.utils;

import android.R;
import android.content.Context;
import android.graphics.Outline;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.screen.R$id;
import com.coloros.translate.screen.R$layout;
import com.coloros.translate.screen.R$style;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.coui.component.responsiveui.ResponsiveUIModel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p1;
import n8.h0;
import n8.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    public static final u INSTANCE = new u();

    /* JADX INFO: renamed from: a */
    private static final n8.j f5723a = n8.k.b(b.INSTANCE);

    private static final class a {

        /* JADX INFO: renamed from: e */
        public static final C0082a f5724e = new C0082a(null);

        /* JADX INFO: renamed from: a */
        private final WindowManager f5725a;

        /* JADX INFO: renamed from: b */
        private final ContextThemeWrapper f5726b;

        /* JADX INFO: renamed from: c */
        private f1 f5727c;

        /* JADX INFO: renamed from: d */
        private View f5728d;

        /* JADX INFO: renamed from: com.coloros.translate.screen.utils.u$a$a */
        public static final class C0082a {
            public /* synthetic */ C0082a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0082a() {
            }
        }

        public /* synthetic */ class b {

            /* JADX INFO: renamed from: a */
            public static final /* synthetic */ int[] f5729a;

            static {
                int[] iArr = new int[b.EnumC0223b.values().length];
                try {
                    iArr[b.EnumC0223b.SMALL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[b.EnumC0223b.MEDIUM.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[b.EnumC0223b.LARGE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f5729a = iArr;
            }
        }

        public static final class c extends ViewOutlineProvider {
            c() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (view == null || outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 5 * a.this.f5726b.getResources().getDisplayMetrics().density);
            }
        }

        static final class d extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ int $duration;
            int label;
            final /* synthetic */ a this$0;

            /* JADX INFO: renamed from: com.coloros.translate.screen.utils.u$a$d$a */
            static final class C0083a extends kotlin.coroutines.jvm.internal.l implements w8.p {
                int label;
                final /* synthetic */ a this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0083a(a aVar, kotlin.coroutines.d dVar) {
                    super(2, dVar);
                    this.this$0 = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                    return new C0083a(this.this$0, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.b.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                    View view = this.this$0.f5728d;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                    this.this$0.f5725a.removeView(this.this$0.f5728d);
                    this.this$0.f5727c = null;
                    this.this$0.f5728d = null;
                    return h0.INSTANCE;
                }

                @Override // w8.p
                public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
                    return ((C0083a) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(int i10, a aVar, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.$duration = i10;
                this.this$0 = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new d(this.$duration, this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    long j10 = this.$duration == 0 ? COUIScrollBar.SCROLLER_FADE_TIMEOUT : 3000L;
                    this.label = 1;
                    if (k0.a(j10, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        n8.s.b(obj);
                        return h0.INSTANCE;
                    }
                    n8.s.b(obj);
                }
                p1 p1VarC = o0.c();
                C0083a c0083a = new C0083a(this.this$0, null);
                this.label = 2;
                if (kotlinx.coroutines.f.c(p1VarC, c0083a, this) == objF) {
                    return objF;
                }
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
                return ((d) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        static final class e extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ int $duration;
            final /* synthetic */ String $message;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(String str, int i10, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.$message = str;
                this.$duration = i10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return a.this.new e(this.$message, this.$duration, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objM59constructorimpl;
                Object objM59constructorimpl2;
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                if (a.this.f5728d == null) {
                    a aVar = a.this;
                    aVar.f5728d = aVar.m();
                    a.this.f5725a.addView(a.this.f5728d, a.this.k());
                } else {
                    f1 f1Var = a.this.f5727c;
                    if (f1Var != null) {
                        f1.a.a(f1Var, null, 1, null);
                    }
                    a.this.f5727c = null;
                    View view = a.this.f5728d;
                    ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                    WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
                    if (layoutParams2 != null) {
                        layoutParams2.width = -2;
                    }
                    a aVar2 = a.this;
                    try {
                        r.a aVar3 = n8.r.Companion;
                        View view2 = aVar2.f5728d;
                        if (view2 != null && view2.isAttachedToWindow()) {
                            WindowManager windowManager = aVar2.f5725a;
                            View view3 = aVar2.f5728d;
                            View view4 = aVar2.f5728d;
                            windowManager.updateViewLayout(view3, view4 != null ? view4.getLayoutParams() : null);
                        }
                        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                    } catch (Throwable th) {
                        r.a aVar4 = n8.r.Companion;
                        objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                    }
                    Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                    if (thM62exceptionOrNullimpl != null) {
                        com.coloros.translate.utils.c0.f7098a.e("ToastHelper", "updateViewLayout1:" + thM62exceptionOrNullimpl);
                    }
                }
                View view5 = a.this.f5728d;
                TextView textView = view5 != null ? (TextView) view5.findViewById(R$id.textview) : null;
                if (textView != null) {
                    textView.setText(this.$message);
                }
                View view6 = a.this.f5728d;
                ImageView imageView = view6 != null ? (ImageView) view6.findViewById(R$id.imageview) : null;
                if (imageView != null) {
                    imageView.setContentDescription(this.$message);
                }
                a aVar5 = a.this;
                aVar5.f5727c = aVar5.n(this.$duration);
                int[] iArrC = k.c(a.this.f5726b);
                View view7 = a.this.f5728d;
                if (view7 != null) {
                    view7.measure(View.MeasureSpec.makeMeasureSpec(iArrC[0], Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(iArrC[1], Integer.MIN_VALUE));
                }
                int iL = a.this.l(iArrC);
                View view8 = a.this.f5728d;
                if ((view8 != null ? view8.getMeasuredWidth() : 0) > iL) {
                    View view9 = a.this.f5728d;
                    ViewGroup.LayoutParams layoutParams3 = view9 != null ? view9.getLayoutParams() : null;
                    WindowManager.LayoutParams layoutParams4 = layoutParams3 instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams3 : null;
                    if (layoutParams4 != null) {
                        layoutParams4.width = iL;
                    }
                    a aVar6 = a.this;
                    try {
                        r.a aVar7 = n8.r.Companion;
                        View view10 = aVar6.f5728d;
                        if (view10 != null && view10.isAttachedToWindow()) {
                            WindowManager windowManager2 = aVar6.f5725a;
                            View view11 = aVar6.f5728d;
                            View view12 = aVar6.f5728d;
                            windowManager2.updateViewLayout(view11, view12 != null ? view12.getLayoutParams() : null);
                        }
                        objM59constructorimpl2 = n8.r.m59constructorimpl(h0.INSTANCE);
                    } catch (Throwable th2) {
                        r.a aVar8 = n8.r.Companion;
                        objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
                    }
                    Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
                    if (thM62exceptionOrNullimpl2 != null) {
                        com.coloros.translate.utils.c0.f7098a.e("ToastHelper", "updateViewLayout2:" + thM62exceptionOrNullimpl2);
                    }
                }
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
                return ((e) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        public a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            Object systemService = context.getSystemService("window");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.f5725a = (WindowManager) systemService;
            this.f5726b = new ContextThemeWrapper(context.getApplicationContext(), R$style.AppTheme);
        }

        public final WindowManager.LayoutParams k() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, this.f5726b.getResources().getDimensionPixelOffset(R$dimen.dp_89) + k.a(this.f5726b), 2038, 201326616, -3);
            layoutParams.setTitle("ToastHelper");
            layoutParams.gravity = 81;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            return layoutParams;
        }

        public final int l(int[] iArr) {
            int i10 = b.f5729a[g.c().ordinal()];
            if (i10 == 1) {
                return y8.a.b(COUIResponsiveUtils.calculateWidth(new ResponsiveUIModel((Context) this.f5726b, iArr[0], iArr[1]), 4, this.f5726b.getResources().getDimensionPixelOffset(R$dimen.dp_16), true));
            }
            if (i10 != 2 && i10 != 3) {
                throw new n8.o();
            }
            return y8.a.b(COUIResponsiveUtils.calculateWidth(new ResponsiveUIModel((Context) this.f5726b, iArr[0], iArr[1]), 6, this.f5726b.getResources().getDimensionPixelOffset(R$dimen.dp_24), true));
        }

        public final View m() {
            View viewInflate = LayoutInflater.from(this.f5726b).inflate(R$layout.layout_toast, (ViewGroup) null);
            viewInflate.setBackground(r.a.e(this.f5726b, R$drawable.custom_toast_background));
            viewInflate.setElevation(20.0f);
            ImageView imageView = (ImageView) viewInflate.findViewById(R$id.imageview);
            imageView.setClipToOutline(true);
            imageView.setOutlineProvider(new c());
            kotlin.jvm.internal.r.b(viewInflate);
            return viewInflate;
        }

        public final f1 n(int i10) {
            return kotlinx.coroutines.g.b(d0.a(o0.a()), null, null, new d(i10, this, null), 3, null);
        }

        public final void o(String message, int i10) {
            kotlin.jvm.internal.r.e(message, "message");
            kotlinx.coroutines.g.b(d0.a(o0.c().F0()), null, null, new e(message, i10, null), 3, null);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a(com.coloros.translate.base.a.INSTANCE.f());
        }
    }

    private u() {
    }

    private final a a() {
        return (a) f5723a.getValue();
    }

    public static final void b(int i10) {
        d(i10, 0, 2, null);
    }

    public static final void c(int i10, int i11) {
        a aVarA = INSTANCE.a();
        String string = com.coloros.translate.base.a.INSTANCE.f().getString(i10);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        aVarA.o(string, i11);
    }

    public static /* synthetic */ void d(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        c(i10, i11);
    }
}
