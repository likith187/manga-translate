package com.coloros.translate.screen.widget;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.utils.c0;
import com.oplus.vfxsdk.naive.coe.BaseTextureView;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.Event.Event;
import com.oplus.vfxsdk.naive.coe.engine.Message;
import com.oplus.vfxsdk.naive.coe.engine.NativeCallback;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class PaintCustomView extends BaseTextureView {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final b f5758s = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f5759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f5760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5761c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f5762f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f5763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f5764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f5765j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f5766k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f5767l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f5768m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5769n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f5770o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f5771p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f5772q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f5773r;

    public interface a {
        void a();

        void b();

        void c(RectF rectF);

        void d(RectF rectF);

        void e(float f10, float f11);

        void f(float f10, float f11);

        void g(RectF rectF);
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ c[] $VALUES;
        public static final c NONE = new c("NONE", 0);
        public static final c LEFT = new c("LEFT", 1);
        public static final c TOP = new c("TOP", 2);
        public static final c RIGHT = new c("RIGHT", 3);
        public static final c BOTTOM = new c("BOTTOM", 4);
        public static final c LEFT_TOP = new c("LEFT_TOP", 5);
        public static final c LEFT_BOTTOM = new c("LEFT_BOTTOM", 6);
        public static final c RIGHT_TOP = new c("RIGHT_TOP", 7);
        public static final c RIGHT_BOTTOM = new c("RIGHT_BOTTOM", 8);

        private static final /* synthetic */ c[] $values() {
            return new c[]{NONE, LEFT, TOP, RIGHT, BOTTOM, LEFT_TOP, LEFT_BOTTOM, RIGHT_TOP, RIGHT_BOTTOM};
        }

        static {
            c[] cVarArr$values = $values();
            $VALUES = cVarArr$values;
            $ENTRIES = r8.b.a(cVarArr$values);
        }

        private c(String str, int i10) {
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
    }

    public /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5774a;

        static {
            int[] iArr = new int[c.values().length];
            try {
                iArr[c.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[c.LEFT_TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[c.RIGHT_TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[c.LEFT_BOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[c.RIGHT_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f5774a = iArr;
        }
    }

    public static final class e implements NativeCallback {
        e() {
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public int getID() {
            return 0;
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onAnimEnd(String str) {
            com.coloros.translate.utils.c0.f7098a.d("PaintCustom", "onAnimEnd:" + str);
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onAnimStart(String str) {
            com.coloros.translate.utils.c0.f7098a.d("PaintCustom", "onAnimStart:" + str);
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onAnimUpdate(String str, double d10, float... value) {
            kotlin.jvm.internal.r.e(value, "value");
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onEvent(Event event) {
            String name;
            a aVar;
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            aVar2.d("PaintCustom", "onEvent:" + (event != null ? event.getName() : null));
            if (event == null || (name = event.getName()) == null) {
                return;
            }
            PaintCustomView paintCustomView = PaintCustomView.this;
            int iHashCode = name.hashCode();
            if (iHashCode == 221692989) {
                if (name.equals("IconDisappearFinish") && (aVar = paintCustomView.f5759a) != null) {
                    aVar.d(paintCustomView.f5760b);
                    return;
                }
                return;
            }
            if (iHashCode != 920884694) {
                if (iHashCode == 1568336321 && name.equals("IconAppearFinish")) {
                    aVar2.i("PaintCustom", "alpha from 0 to 1 finish");
                    return;
                }
                return;
            }
            if (name.equals("ClearPointFinish")) {
                aVar2.i("PaintCustom", "clear point path finish");
                paintCustomView.stop();
            }
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onStart() {
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onUpdate(double d10) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintCustomView(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        this.f5760b = new RectF();
        this.f5761c = getResources().getDimension(R$dimen.dp_10);
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5762f = dimension;
        this.f5763h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5764i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5766k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5770o = c.NONE;
    }

    private final int getNavigationBarHeight() {
        if (getContext().getResources().getConfiguration().orientation == 2) {
            Context context = getContext();
            kotlin.jvm.internal.r.d(context, "getContext(...)");
            if (com.coloros.translate.screen.utils.k.f(context)) {
                return 0;
            }
        }
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        if (com.coloros.translate.screen.utils.p.d(context2)) {
            return 0;
        }
        Context context3 = getContext();
        kotlin.jvm.internal.r.d(context3, "getContext(...)");
        return com.coloros.translate.screen.utils.k.a(context3);
    }

    private final void l() {
        com.coloros.translate.utils.c0.f7098a.d("PaintCustom", "iconDisappear");
        Message message = new Message("IconDisappear");
        NativeEngine engine = getEngine();
        if (engine != null) {
            engine.sendMessage(message);
        }
    }

    private final void m(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        final float fFloor = (float) Math.floor(motionEvent.getX());
        final float fFloor2 = (float) Math.floor(motionEvent.getY());
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f5772q = fFloor;
            this.f5773r = fFloor2;
            boolean zT = t(fFloor, fFloor2);
            this.f5769n = zT;
            c cVar = c.NONE;
            this.f5770o = cVar;
            if (!zT) {
                this.f5770o = u(fFloor, fFloor2);
            }
            com.coloros.translate.utils.c0.f7098a.d("PaintCustom", "dispatchDragEvent:" + this.f5769n + "," + this.f5770o);
            if (this.f5769n || this.f5770o != cVar) {
                post(new Runnable() { // from class: com.coloros.translate.screen.widget.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        PaintCustomView.n(this.f6018a, fFloor, fFloor2);
                    }
                });
                return;
            }
            return;
        }
        if (action == 1) {
            if (this.f5769n || this.f5770o != c.NONE) {
                post(new Runnable() { // from class: com.coloros.translate.screen.widget.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        PaintCustomView.q(this.f6040a);
                    }
                });
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float f10 = fFloor - this.f5772q;
        float f11 = fFloor2 - this.f5773r;
        this.f5772q = fFloor;
        this.f5773r = fFloor2;
        if (this.f5769n) {
            RectF rectF = this.f5760b;
            float f12 = rectF.left;
            boolean z14 = f12 + f10 >= 0.0f && rectF.right + f10 <= ((float) this.f5764i[0]);
            float f13 = rectF.top;
            boolean z15 = f13 + f11 >= ((float) this.f5765j) && rectF.bottom + f11 <= ((float) (this.f5764i[1] - this.f5767l));
            if (z14) {
                rectF.left = f12 + f10;
                rectF.right += f10;
            }
            if (z15) {
                rectF.top = f13 + f11;
                rectF.bottom += f11;
            }
            post(new Runnable() { // from class: com.coloros.translate.screen.widget.j
                @Override // java.lang.Runnable
                public final void run() {
                    PaintCustomView.o(this.f6030a);
                }
            });
            return;
        }
        c cVar2 = this.f5770o;
        if (cVar2 != c.NONE) {
            switch (d.f5774a[cVar2.ordinal()]) {
                case 1:
                    z10 = true;
                    z11 = false;
                    z12 = z11;
                    z13 = z12;
                    break;
                case 2:
                    z12 = true;
                    z10 = false;
                    z11 = false;
                    z13 = z11;
                    break;
                case 3:
                    z13 = true;
                    z10 = false;
                    z11 = false;
                    z12 = z11;
                    break;
                case 4:
                    z11 = true;
                    z10 = false;
                    z12 = false;
                    z13 = z12;
                    break;
                case 5:
                    z10 = true;
                    z12 = true;
                    z11 = false;
                    z13 = z11;
                    break;
                case 6:
                    z10 = true;
                    z13 = true;
                    z11 = false;
                    z12 = z11;
                    break;
                case 7:
                    z11 = true;
                    z12 = true;
                    z10 = false;
                    z13 = false;
                    break;
                case 8:
                    z11 = true;
                    z13 = true;
                    z10 = false;
                    z12 = false;
                    break;
                default:
                    z10 = false;
                    z11 = false;
                    z12 = z11;
                    z13 = z12;
                    break;
            }
            if (z10) {
                RectF rectF2 = this.f5760b;
                float f14 = rectF2.top + f11;
                if (f14 > this.f5765j && rectF2.bottom - f14 > this.f5763h) {
                    rectF2.top = f14;
                }
            }
            if (z11) {
                RectF rectF3 = this.f5760b;
                float f15 = rectF3.bottom + f11;
                if (f15 < this.f5764i[1] - this.f5767l && f15 - rectF3.top > this.f5763h) {
                    rectF3.bottom = f15;
                }
            }
            if (z12) {
                RectF rectF4 = this.f5760b;
                float f16 = rectF4.left + f10;
                if (rectF4.right - f16 > this.f5762f && f16 > 0.0f) {
                    rectF4.left = f16;
                }
            }
            if (z13) {
                RectF rectF5 = this.f5760b;
                float f17 = rectF5.right;
                float f18 = f17 + f10;
                if (f18 - rectF5.left > this.f5762f && f18 < this.f5764i[0]) {
                    rectF5.right = f17 + f10;
                }
            }
            post(new Runnable() { // from class: com.coloros.translate.screen.widget.k
                @Override // java.lang.Runnable
                public final void run() {
                    PaintCustomView.p(this.f6034a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(PaintCustomView this$0, float f10, float f11) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        a aVar = this$0.f5759a;
        if (aVar != null) {
            aVar.f(f10, f11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(PaintCustomView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        a aVar = this$0.f5759a;
        if (aVar != null) {
            aVar.c(this$0.f5760b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(PaintCustomView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        a aVar = this$0.f5759a;
        if (aVar != null) {
            aVar.c(this$0.f5760b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(PaintCustomView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        a aVar = this$0.f5759a;
        if (aVar != null) {
            aVar.g(this$0.f5760b);
        }
    }

    private final void r(MotionEvent motionEvent) {
        float fFloor = (float) Math.floor(motionEvent.getX());
        float fFloor2 = (float) Math.floor(motionEvent.getY());
        int action = motionEvent.getAction();
        if (action == 0) {
            if (fFloor2 <= this.f5765j) {
                this.f5771p = false;
                return;
            }
            float fMin = Math.min(fFloor2, this.f5764i[1] - this.f5767l);
            this.f5771p = true;
            this.f5760b.set(fFloor, fMin, fFloor, fMin);
            v(motionEvent);
            a aVar = this.f5759a;
            if (aVar != null) {
                aVar.e(fFloor, fFloor2);
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (this.f5771p) {
                    w(fFloor, (float) Math.floor(Math.min(Math.max(fFloor2, this.f5765j), this.f5764i[1] - this.f5767l)));
                    v(motionEvent);
                    return;
                }
                return;
            }
            if (action != 3) {
                return;
            }
            this.f5771p = false;
            a aVar2 = this.f5759a;
            if (aVar2 != null) {
                aVar2.b();
                return;
            }
            return;
        }
        if (this.f5771p) {
            RectF rectF = this.f5760b;
            float fMax = rectF.left;
            float f10 = rectF.right;
            float fMax2 = rectF.top;
            float f11 = rectF.bottom;
            float f12 = f10 - fMax;
            float f13 = f11 - fMax2;
            float f14 = this.f5763h;
            if (f13 < f14) {
                fMax2 = Math.max(0.0f, fMax2 - ((f14 - f13) / 2));
                float f15 = this.f5763h;
                float f16 = fMax2 + f15;
                int i10 = this.f5764i[1];
                int i11 = this.f5767l;
                if (f16 > i10 - i11) {
                    float f17 = i10 - i11;
                    fMax2 = f17 - f15;
                    f11 = f17;
                } else {
                    f11 = f16;
                }
            }
            float f18 = this.f5762f;
            if (f12 < f18) {
                fMax = Math.max(0.0f, fMax - ((f18 - f12) / 2));
                float f19 = this.f5762f;
                float f20 = fMax + f19;
                int i12 = this.f5764i[0];
                if (f20 > i12) {
                    float f21 = i12;
                    float f22 = f21 - f19;
                    f10 = f21;
                    fMax = f22;
                } else {
                    f10 = f20;
                }
            }
            this.f5760b.set(fMax, fMax2, f10, f11);
            this.f5768m = true;
            v(motionEvent);
            l();
        }
    }

    private final void s() {
        TexCreateInfo texCreateInfo = new TexCreateInfo();
        texCreateInfo.setFlipY(false);
        texCreateInfo.setWrapMode(TexCreateInfo.WrapMode.CLAMP);
        texCreateInfo.setFilterMode(TexCreateInfo.FilterMode.LINEAR);
        texCreateInfo.setBitmap(BitmapFactory.decodeResource(getResources(), R$drawable.ic_circle_paint));
        Message message = new Message("setTexture", new Texture(getEngine(), texCreateInfo));
        NativeEngine engine = getEngine();
        if (engine != null) {
            engine.sendMessage(message);
        }
        Message message2 = new Message("setDensity", Float.valueOf(getContext().getResources().getDisplayMetrics().density));
        NativeEngine engine2 = getEngine();
        if (engine2 != null) {
            engine2.sendMessage(message2);
        }
    }

    private final boolean t(float f10, float f11) {
        RectF rectF = this.f5760b;
        float f12 = rectF.left;
        float f13 = this.f5761c;
        return f10 > f12 + f13 && f10 < rectF.right - f13 && f11 > rectF.top + f13 && f11 < rectF.bottom - f13;
    }

    private final c u(float f10, float f11) {
        boolean z10 = false;
        boolean z11 = Math.abs(this.f5760b.left - f10) < this.f5761c;
        boolean z12 = Math.abs(this.f5760b.top - f11) < this.f5761c;
        boolean z13 = Math.abs(this.f5760b.right - f10) < this.f5761c;
        float fAbs = Math.abs(this.f5760b.bottom - f11);
        float f12 = this.f5761c;
        boolean z14 = fAbs < f12;
        RectF rectF = this.f5760b;
        boolean z15 = f10 > rectF.left - f12 && f10 < rectF.right + f12;
        if (f11 > rectF.top - f12 && f11 < rectF.bottom + f12) {
            z10 = true;
        }
        c cVar = c.NONE;
        if (!z15 && !z10) {
            return cVar;
        }
        if (z11) {
            return z12 ? c.LEFT_TOP : z14 ? c.LEFT_BOTTOM : c.LEFT;
        }
        if (z13) {
            return z12 ? c.RIGHT_TOP : z14 ? c.RIGHT_BOTTOM : c.RIGHT;
        }
        return z12 ? c.TOP : z14 ? c.BOTTOM : cVar;
    }

    private final void v(MotionEvent motionEvent) {
        float fFloor = (float) Math.floor(motionEvent.getX());
        float fMin = Math.min(Math.max((float) Math.floor(motionEvent.getY()), this.f5765j), this.f5764i[1] - this.f5767l);
        NativeEngine engine = getEngine();
        if (engine != null) {
            engine.touchEvent(motionEvent.getAction(), fFloor, fMin);
        }
    }

    private final void w(float f10, float f11) {
        RectF rectF = this.f5760b;
        float f12 = rectF.left;
        float f13 = rectF.top;
        float f14 = rectF.right;
        float f15 = rectF.bottom;
        if (f10 < f12) {
            rectF.left = f10;
        } else if (f10 > f14) {
            rectF.right = f10;
        }
        if (f11 < f13) {
            rectF.top = f11;
        } else if (f11 > f15) {
            rectF.bottom = f11;
        }
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public String[] getFeatures() {
        return new String[]{"SelectPaintSystem"};
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public void initRenderer() {
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        this.f5765j = com.coloros.translate.screen.utils.k.e(context) + ((int) this.f5766k);
        this.f5767l = getNavigationBarHeight();
        NativeEngine engine = getEngine();
        kotlin.jvm.internal.r.b(engine);
        setRenderer(new BaseRenderer(engine, 0));
        s();
        NativeEngine engine2 = getEngine();
        if (engine2 != null) {
            engine2.addCallback(new e());
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyDown(i10, keyEvent);
        }
        a aVar = this.f5759a;
        if (aVar == null) {
            return true;
        }
        aVar.a();
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        if (this.f5768m) {
            m(event);
            return true;
        }
        r(event);
        return true;
    }

    public final void setCallback(a aVar) {
        this.f5759a = aVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintCustomView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.r.e(context, "context");
        this.f5760b = new RectF();
        this.f5761c = getResources().getDimension(R$dimen.dp_10);
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5762f = dimension;
        this.f5763h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5764i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5766k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5770o = c.NONE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintCustomView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        kotlin.jvm.internal.r.e(context, "context");
        this.f5760b = new RectF();
        this.f5761c = getResources().getDimension(R$dimen.dp_10);
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5762f = dimension;
        this.f5763h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5764i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5766k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5770o = c.NONE;
    }
}
