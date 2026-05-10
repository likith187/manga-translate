package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.f1;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationFloatView extends View {
    public static final a G = new a(null);
    private static final PathInterpolator H = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
    private static final PathInterpolator I = new PathInterpolator(0.26f, 0.0f, 0.16f, 0.9f);
    private long A;
    private float B;
    private float C;
    private float D;
    private float E;
    private c F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n8.j f5798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f5799c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final WindowManager.LayoutParams f5800f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f5801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f5802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f5803j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n8.j f5804k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final n8.j f5805l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final n8.j f5806m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f5807n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f5808o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f5809p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f5810q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile kotlinx.coroutines.f1 f5811r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Animator f5812s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f5813t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f5814u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f5815v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f5816w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f5817x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f5818y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f5819z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static final class c {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ c[] $VALUES;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final int f5820v;
        public static final c MOVE = new c("MOVE", 0, 0);
        public static final c LEFT_TOP = new c("LEFT_TOP", 1, 3);
        public static final c TOP = new c("TOP", 2, 2);
        public static final c TOP_RIGHT = new c("TOP_RIGHT", 3, 6);
        public static final c RIGHT = new c("RIGHT", 4, 4);
        public static final c RIGHT_BOTTOM = new c("RIGHT_BOTTOM", 5, 12);
        public static final c BOTTOM = new c("BOTTOM", 6, 8);
        public static final c BOTTOM_LEFT = new c("BOTTOM_LEFT", 7, 9);
        public static final c LEFT = new c("LEFT", 8, 1);

        private static final /* synthetic */ c[] $values() {
            return new c[]{MOVE, LEFT_TOP, TOP, TOP_RIGHT, RIGHT, RIGHT_BOTTOM, BOTTOM, BOTTOM_LEFT, LEFT};
        }

        static {
            c[] cVarArr$values = $values();
            $VALUES = cVarArr$values;
            $ENTRIES = r8.b.a(cVarArr$values);
        }

        private c(String str, int i10, int i11) {
            this.f5820v = i11;
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }

        public final int getV() {
            return this.f5820v;
        }
    }

    public static final class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ScreenTranslationFloatView.this.f5812s = null;
        }
    }

    static final class e extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ long $timeMillis;
        int label;
        final /* synthetic */ ScreenTranslationFloatView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(long j10, ScreenTranslationFloatView screenTranslationFloatView, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$timeMillis = j10;
            this.this$0 = screenTranslationFloatView;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new e(this.$timeMillis, this.this$0, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
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
            ScreenTranslationFloatView.i(this.this$0);
            new Rect((int) this.this$0.f5814u, (int) this.this$0.f5815v, (int) (this.this$0.f5814u + this.this$0.f5817x), (int) (this.this$0.f5815v + this.this$0.f5816w));
            throw null;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((e) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    private final Paint getBackgroundPaint() {
        return (Paint) this.f5806m.getValue();
    }

    private final int[] getDeltaX() {
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        if (!com.coloros.translate.screen.utils.k.f(context)) {
            return new int[]{0, 0};
        }
        Object systemService = getContext().getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        int rotation = ((WindowManager) systemService).getDefaultDisplay().getRotation();
        boolean z10 = rotation == 3;
        boolean z11 = rotation == 1;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatView", "Screen Direction = " + rotation);
        return new int[]{z10 ? this.f5808o : 0, z11 ? this.f5808o : 0};
    }

    private final Paint getLinePaint() {
        return (Paint) this.f5804k.getValue();
    }

    private final Paint getLinePaint2() {
        return (Paint) this.f5805l.getValue();
    }

    private final int getNavigationBarHeight() {
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        if (com.coloros.translate.screen.utils.p.d(context)) {
            return 0;
        }
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        return com.coloros.translate.screen.utils.k.a(context2);
    }

    private final float getShrinkX() {
        return com.coloros.translate.screen.utils.g.c() == b.EnumC0223b.LARGE ? getResources().getDimension(R$dimen.translation_tool_capsule_margin_hor_large_window) : getResources().getDimension(R$dimen.translation_tool_capsule_margin_hor);
    }

    private final float getShrinkY() {
        return this.f5799c[1] * 0.16f;
    }

    private final WindowManager getWindowManager() {
        return (WindowManager) this.f5798b.getValue();
    }

    public static final /* synthetic */ b i(ScreenTranslationFloatView screenTranslationFloatView) {
        screenTranslationFloatView.getClass();
        return null;
    }

    private final void k(float f10, float f11) {
        c cVar;
        float f12 = this.f5814u;
        float f13 = this.f5802i;
        if (f10 < f12 + f13) {
            float f14 = this.f5815v;
            cVar = f11 < f14 + f13 ? c.LEFT_TOP : f11 < (f14 + this.f5816w) - f13 ? c.LEFT : c.BOTTOM_LEFT;
        } else if (f10 < (f12 + this.f5817x) - f13) {
            float f15 = this.f5815v;
            cVar = f11 < f15 + f13 ? c.TOP : f11 < (f15 + this.f5816w) - f13 ? c.MOVE : c.BOTTOM;
        } else {
            float f16 = this.f5815v;
            cVar = f11 < f16 + f13 ? c.TOP_RIGHT : f11 < (f16 + this.f5816w) - f13 ? c.RIGHT : c.RIGHT_BOTTOM;
        }
        this.F = cVar;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatView", "calculateTouchMode " + (cVar != null ? cVar.name() : null));
    }

    private final void l(float f10, float f11) {
        if (this.f5809p) {
            float f12 = this.f5814u;
            float f13 = this.f5802i;
            if (f10 < f12 + f13) {
                float f14 = this.f5815v;
                if (f11 < f14 + f13) {
                    this.F = c.LEFT_TOP;
                    return;
                } else if (f11 > (f14 + this.f5816w) - f13) {
                    this.F = c.BOTTOM_LEFT;
                    return;
                }
            }
        } else {
            float f15 = this.f5814u + this.f5817x;
            float f16 = this.f5802i;
            if (f10 > f15 - f16) {
                float f17 = this.f5815v;
                if (f11 < f17 + f16) {
                    this.F = c.TOP_RIGHT;
                    return;
                } else if (f11 > (f17 + this.f5816w) - f16) {
                    this.F = c.RIGHT_BOTTOM;
                    return;
                }
            }
        }
        float f18 = this.f5814u;
        if (f10 > f18 && f10 < f18 + this.f5817x) {
            float f19 = this.f5815v;
            if (f11 > f19 && f11 < f19 + this.f5816w) {
                this.F = c.MOVE;
            }
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        c cVar = this.F;
        aVar.d("ScreenTranslationFloatView", "calculateTouchMode " + (cVar != null ? cVar.name() : null));
    }

    private final void m(kotlinx.coroutines.f1 f1Var) {
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        this.f5811r = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void n(float r11, float r12) {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationFloatView.n(float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void o(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 463
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationFloatView.o(android.view.MotionEvent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ScreenTranslationFloatView this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.f5814u = ((Float) animatedValue).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ScreenTranslationFloatView this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.f5817x = ((Float) animatedValue).floatValue();
        this$0.f5810q = ((int) ((it.getAnimatedFraction() * 0.3f) * 255)) << 24;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(ScreenTranslationFloatView this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.f5816w = ((Float) animatedValue).floatValue();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ScreenTranslationFloatView this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.f5815v = ((Float) animatedValue).floatValue();
    }

    private final void setShrink(boolean z10) {
        this.f5813t = z10;
        if (!z10) {
            int[] iArr = this.f5799c;
            setSystemGestureExclusionRects(kotlin.collections.o.b(new Rect(0, 0, iArr[0], iArr[1])));
        } else {
            float f10 = this.f5815v;
            float f11 = this.f5802i;
            setSystemGestureExclusionRects(kotlin.collections.o.b(new Rect(0, (int) (f10 - f11), this.f5799c[0], (int) (f10 + this.f5816w + f11))));
        }
    }

    private final boolean t() {
        return getContext().getResources().getConfiguration().orientation == 2;
    }

    public static /* synthetic */ void v(ScreenTranslationFloatView screenTranslationFloatView, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 1000;
        }
        screenTranslationFloatView.u(j10);
    }

    public final RectF getCurrentDrawPosition() {
        float f10 = this.f5814u;
        float f11 = this.f5815v;
        return new RectF(f10, f11, this.f5817x + f10, this.f5816w + f11);
    }

    public final boolean getGoingHideFloatView() {
        return this.f5797a;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatView", "onKeyDown " + i10);
        if (i10 != 4) {
            return super.onKeyDown(i10, keyEvent);
        }
        m(this.f5811r);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationFloatView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setGoingHideFloatView(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationFloatView", "goingHideFloatView " + z10);
        this.f5797a = z10;
    }

    public final void u(long j10) {
        kotlinx.coroutines.f1 f1Var = this.f5811r;
        if (f1Var != null) {
            f1.a.a(f1Var, null, 1, null);
        }
        this.f5811r = kotlinx.coroutines.g.b(kotlinx.coroutines.d0.a(kotlinx.coroutines.o0.c()), null, null, new e(j10, this, null), 3, null);
    }
}
