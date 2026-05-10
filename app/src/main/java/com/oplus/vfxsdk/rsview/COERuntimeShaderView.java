package com.oplus.vfxsdk.rsview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RuntimeShader;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Choreographer;
import android.view.View;
import androidx.appcompat.app.t;
import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.common.PassParams;
import com.oplus.vfxsdk.common.q;
import com.oplus.vfxsdk.common.v;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class COERuntimeShaderView extends View implements q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f11399k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f11400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.oplus.vfxsdk.common.a f11401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11402c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v f11403f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final h f11404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f11405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f11406j;

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
            COERuntimeShaderView.this.c(j10);
            if (COERuntimeShaderView.this.f11402c) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    public COERuntimeShaderView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f11400a = paint;
        this.f11403f = new v();
        this.f11404h = new h();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.f11406j = new b();
    }

    private final void e() {
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader");
        t.a(animator);
        throw null;
    }

    public final RuntimeShader b(int i10) {
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader");
        t.a(animator);
        throw null;
    }

    public final void c(long j10) {
        Iterator<T> it = getShaders().iterator();
        while (it.hasNext()) {
            d.a(it.next()).setFloatUniform("u_time", (float) this.f11403f.b(j10 / 1.0E9d));
        }
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader");
        t.a(animator);
        throw null;
    }

    public final void d() {
        if (this.f11402c) {
            this.f11402c = false;
        }
    }

    public HashMap<String, PassParams[]> getAllTrigers() {
        return q.a.a(this);
    }

    @Override // com.oplus.vfxsdk.common.q
    public com.oplus.vfxsdk.common.a getAnimator() {
        com.oplus.vfxsdk.common.a aVar = this.f11401b;
        if (aVar != null) {
            return aVar;
        }
        r.r("animator");
        return null;
    }

    public HashMap<String, Animator> getAnimators() {
        return q.a.b(this);
    }

    public final Paint getPaint() {
        return this.f11400a;
    }

    public final RuntimeShader getShader() {
        return b(0);
    }

    public final List<RuntimeShader> getShaders() {
        com.oplus.vfxsdk.common.a animator = getAnimator();
        r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader");
        t.a(animator);
        throw null;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.i("COE_LOGGER", "COERuntimeShader=>onDetachedFromWindow");
        d();
        Choreographer.getInstance().removeFrameCallback(this.f11406j);
        if (this.f11405i) {
            HashMap<String, Animator> animators = getAnimators();
            if (animators != null) {
                Iterator<Map.Entry<String, Animator>> it = animators.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().stop();
                }
            }
            HashMap<String, Animator> animators2 = getAnimators();
            if (animators2 != null) {
                animators2.clear();
            }
        }
        this.f11400a.setShader(null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.onDraw(canvas);
        if (this.f11405i) {
            canvas.drawPaint(this.f11400a);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f11405i) {
            Iterator<T> it = getShaders().iterator();
            while (it.hasNext()) {
                d.a(it.next()).setFloatUniform("u_resolution", getWidth(), getHeight());
            }
            e();
        }
    }

    public void setAnimator(com.oplus.vfxsdk.common.a aVar) {
        r.e(aVar, "<set-?>");
        this.f11401b = aVar;
    }

    public final void setFPS(Integer num) {
        this.f11404h.b(num);
    }

    public final void setRuntimeShaderListener(c listener) {
        r.e(listener, "listener");
    }

    public COERuntimeShaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f11400a = paint;
        this.f11403f = new v();
        this.f11404h = new h();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.f11406j = new b();
    }

    public COERuntimeShaderView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint();
        this.f11400a = paint;
        this.f11403f = new v();
        this.f11404h = new h();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.f11406j = new b();
    }
}
