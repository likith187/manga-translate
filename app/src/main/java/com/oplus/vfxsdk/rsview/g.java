package com.oplus.vfxsdk.rsview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RuntimeShader;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Choreographer;
import android.view.View;
import com.oplus.vfxsdk.common.COEParse;
import com.oplus.vfxsdk.common.q;
import com.oplus.vfxsdk.common.v;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends Drawable implements q {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f11414s = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f11415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.oplus.vfxsdk.common.a f11416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f11417c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f11418f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RectF f11419h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f11420i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f11421j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f11422k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f11423l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WeakReference f11424m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View.OnAttachStateChangeListener f11425n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private v f11426o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f11427p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final h f11428q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final b f11429r;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Choreographer.FrameCallback {
        b() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            View view;
            WeakReference weakReference = g.this.f11424m;
            if (weakReference == null || (view = (View) weakReference.get()) == null) {
                return;
            }
            g gVar = g.this;
            if (gVar.f11428q.a()) {
                view.invalidate();
            }
            if (gVar.f11427p) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    public static final class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v10) {
            r.e(v10, "v");
            Log.i("COE_LOGGER", "COE:ShadowDrawable=>Host onViewAttachedToWindow");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v10) {
            r.e(v10, "v");
            Log.i("COE_LOGGER", "COE:ShadowDrawable=>Host onViewDetachedFromWindow");
            g.this.k();
        }
    }

    public /* synthetic */ g(Context context, String str, boolean z10, p pVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? true : z10, (i10 & 8) != 0 ? new p(false, false, false, false, 15, null) : pVar);
    }

    private final void e() {
        RectF rectF = this.f11419h;
        RectF rectF2 = this.f11418f;
        float f10 = rectF2.left;
        int i10 = this.f11420i;
        rectF.left = f10 + i10;
        float f11 = rectF2.top;
        int i11 = this.f11421j;
        rectF.top = f11 + i11;
        rectF.right = rectF2.right - i10;
        rectF.bottom = rectF2.bottom - i11;
    }

    public final RuntimeShader d() {
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader");
        return ((com.oplus.vfxsdk.rsview.a) animator).g0();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        r.e(canvas, "canvas");
        f();
        canvas.drawRect(this.f11419h, this.f11417c);
    }

    protected final void f() {
        double dB = this.f11426o.b(System.currentTimeMillis() / 1000.0d);
        RuntimeShader runtimeShaderD = d();
        if (runtimeShaderD != null) {
            runtimeShaderD.setFloatUniform("u_time", (float) dB);
        }
        RuntimeShader runtimeShaderD2 = d();
        if (runtimeShaderD2 != null) {
            runtimeShaderD2.setFloatUniform("u_resolution", new float[]{this.f11419h.width(), this.f11419h.height()});
        }
        float[] fArr = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, this.f11420i * (-1.0f), this.f11421j * (-1.0f), 1.0f};
        RuntimeShader runtimeShaderD3 = d();
        if (runtimeShaderD3 != null) {
            runtimeShaderD3.setFloatUniform("u_matResolution", fArr);
        }
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader");
        ((com.oplus.vfxsdk.rsview.a) animator).j0();
    }

    public void g(com.oplus.vfxsdk.common.a aVar) {
        r.e(aVar, "<set-?>");
        this.f11416b = aVar;
    }

    @Override // com.oplus.vfxsdk.common.q
    public com.oplus.vfxsdk.common.a getAnimator() {
        com.oplus.vfxsdk.common.a aVar = this.f11416b;
        if (aVar != null) {
            return aVar;
        }
        r.r("animator");
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>getOpacity: " + this.f11422k);
        return this.f11422k;
    }

    public final g h(int i10, int i11) {
        this.f11420i = i10;
        this.f11421j = i11;
        e();
        return this;
    }

    public final void i(String str, Object... value) {
        r.e(value, "value");
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader");
        r.b(str);
        ((com.oplus.vfxsdk.rsview.a) animator).a0(str, Arrays.copyOf(value, value.length));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        return this.f11423l;
    }

    public final g j(View view) {
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>start");
        if (this.f11427p) {
            return this;
        }
        this.f11427p = true;
        this.f11424m = new WeakReference(view);
        if (view != null) {
            c cVar = new c();
            this.f11425n = cVar;
            r.b(cVar);
            view.addOnAttachStateChangeListener(cVar);
        }
        Choreographer.getInstance().postFrameCallback(this.f11429r);
        return this;
    }

    public final g k() {
        if (!this.f11427p) {
            return this;
        }
        this.f11427p = false;
        WeakReference weakReference = this.f11424m;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null) {
            view.removeOnAttachStateChangeListener(this.f11425n);
        }
        this.f11424m = null;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        r.e(bounds, "bounds");
        super.onBoundsChange(bounds);
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>bounds:" + bounds.width() + ", " + bounds.height());
        this.f11418f.set(bounds);
        e();
        RuntimeShader runtimeShaderD = d();
        if (runtimeShaderD != null) {
            runtimeShaderD.setFloatUniform("u_resolution", new float[]{this.f11419h.width(), this.f11419h.height()});
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>setAlpha: " + i10);
        this.f11417c.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>setColorFilter: " + colorFilter);
        this.f11417c.setColorFilter(colorFilter);
    }

    public g(Context context, String cozFile, boolean z10, p options) throws IOException {
        r.e(context, "context");
        r.e(cozFile, "cozFile");
        r.e(options, "options");
        this.f11415a = z10;
        Paint paint = new Paint();
        this.f11417c = paint;
        this.f11418f = new RectF();
        this.f11419h = new RectF();
        this.f11422k = -3;
        this.f11423l = true;
        this.f11426o = new v();
        this.f11428q = new h();
        Log.i("COE_LOGGER", "COE:ShadowDrawable=>construct shadowDrawable");
        InputStream inputStreamOpen = context.getAssets().open(cozFile);
        try {
            COEParse cOEParse = new COEParse();
            r.b(inputStreamOpen);
            g(new com.oplus.vfxsdk.rsview.a(cOEParse.parse(kotlin.io.b.c(inputStreamOpen), z10), 0, options, 2, null));
            inputStreamOpen.close();
            h0 h0Var = h0.INSTANCE;
            kotlin.io.c.a(inputStreamOpen, null);
            com.oplus.vfxsdk.common.a animator = getAnimator();
            r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader");
            paint.setShader(((com.oplus.vfxsdk.rsview.a) animator).g0());
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_OVER;
            paint.setXfermode(new PorterDuffXfermode(mode));
            if (options.b()) {
                com.oplus.vfxsdk.common.a animator2 = getAnimator();
                r.c(animator2, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.RuntimeShaderAnimator");
                paint.setXfermode(new PorterDuffXfermode(o.W((o) animator2, 0, 1, null)));
            } else {
                paint.setXfermode(new PorterDuffXfermode(mode));
            }
            this.f11426o = new v();
            this.f11429r = new b();
        } finally {
        }
    }
}
