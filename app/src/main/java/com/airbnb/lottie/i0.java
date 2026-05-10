package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class i0 extends Drawable implements Drawable.Callback, Animatable {
    private static final boolean U = false;
    private static final Executor V = new ThreadPoolExecutor(0, 2, 35, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new r1.e());
    private final Matrix A;
    private Bitmap B;
    private Canvas C;
    private Rect D;
    private RectF E;
    private Paint F;
    private Rect G;
    private Rect H;
    private RectF I;
    private RectF J;
    private Matrix K;
    private Matrix L;
    private boolean M;
    private com.airbnb.lottie.a N;
    private final ValueAnimator.AnimatorUpdateListener O;
    private final Semaphore P;
    private Handler Q;
    private Runnable R;
    private final Runnable S;
    private float T;

    /* JADX INFO: renamed from: a */
    private j f4566a;

    /* JADX INFO: renamed from: b */
    private final r1.g f4567b;

    /* JADX INFO: renamed from: c */
    private boolean f4568c;

    /* JADX INFO: renamed from: f */
    private boolean f4569f;

    /* JADX INFO: renamed from: h */
    private boolean f4570h;

    /* JADX INFO: renamed from: i */
    private b f4571i;

    /* JADX INFO: renamed from: j */
    private final ArrayList f4572j;

    /* JADX INFO: renamed from: k */
    private k1.b f4573k;

    /* JADX INFO: renamed from: l */
    private String f4574l;

    /* JADX INFO: renamed from: m */
    private k1.a f4575m;

    /* JADX INFO: renamed from: n */
    private Map f4576n;

    /* JADX INFO: renamed from: o */
    String f4577o;

    /* JADX INFO: renamed from: p */
    private boolean f4578p;

    /* JADX INFO: renamed from: q */
    private boolean f4579q;

    /* JADX INFO: renamed from: r */
    private boolean f4580r;

    /* JADX INFO: renamed from: s */
    private o1.c f4581s;

    /* JADX INFO: renamed from: t */
    private int f4582t;

    /* JADX INFO: renamed from: u */
    private boolean f4583u;

    /* JADX INFO: renamed from: v */
    private boolean f4584v;

    /* JADX INFO: renamed from: w */
    private boolean f4585w;

    /* JADX INFO: renamed from: x */
    private boolean f4586x;

    /* JADX INFO: renamed from: y */
    private r0 f4587y;

    /* JADX INFO: renamed from: z */
    private boolean f4588z;

    interface a {
        void a(j jVar);
    }

    private enum b {
        NONE,
        PLAY,
        RESUME
    }

    public i0() {
        r1.g gVar = new r1.g();
        this.f4567b = gVar;
        this.f4568c = true;
        this.f4569f = false;
        this.f4570h = false;
        this.f4571i = b.NONE;
        this.f4572j = new ArrayList();
        this.f4579q = false;
        this.f4580r = true;
        this.f4582t = 255;
        this.f4586x = false;
        this.f4587y = r0.AUTOMATIC;
        this.f4588z = false;
        this.A = new Matrix();
        this.M = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.c0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f4542a.i0(valueAnimator);
            }
        };
        this.O = animatorUpdateListener;
        this.P = new Semaphore(1);
        this.S = new Runnable() { // from class: com.airbnb.lottie.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f4544a.k0();
            }
        };
        this.T = -3.4028235E38f;
        gVar.addUpdateListener(animatorUpdateListener);
    }

    private void A(Canvas canvas) {
        o1.c cVar = this.f4581s;
        j jVar = this.f4566a;
        if (cVar == null || jVar == null) {
            return;
        }
        this.A.reset();
        if (!getBounds().isEmpty()) {
            this.A.preScale(r2.width() / jVar.b().width(), r2.height() / jVar.b().height());
            this.A.preTranslate(r2.left, r2.top);
        }
        cVar.f(canvas, this.A, this.f4582t);
    }

    private void B0(Canvas canvas, o1.c cVar) {
        if (this.f4566a == null || cVar == null) {
            return;
        }
        F();
        canvas.getMatrix(this.K);
        canvas.getClipBounds(this.D);
        y(this.D, this.E);
        this.K.mapRect(this.E);
        z(this.E, this.D);
        if (this.f4580r) {
            this.J.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            cVar.b(this.J, null, false);
        }
        this.K.mapRect(this.J);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        E0(this.J, fWidth, fHeight);
        if (!d0()) {
            RectF rectF = this.J;
            Rect rect = this.D;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.J.width());
        int iCeil2 = (int) Math.ceil(this.J.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            return;
        }
        E(iCeil, iCeil2);
        if (this.M) {
            this.A.set(this.K);
            this.A.preScale(fWidth, fHeight);
            Matrix matrix = this.A;
            RectF rectF2 = this.J;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.B.eraseColor(0);
            cVar.f(this.C, this.A, this.f4582t);
            this.K.invert(this.L);
            this.L.mapRect(this.I, this.J);
            z(this.I, this.H);
        }
        this.G.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.B, this.G, this.H, this.F);
    }

    private void E(int i10, int i11) {
        Bitmap bitmap = this.B;
        if (bitmap == null || bitmap.getWidth() < i10 || this.B.getHeight() < i11) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            this.B = bitmapCreateBitmap;
            this.C.setBitmap(bitmapCreateBitmap);
            this.M = true;
            return;
        }
        if (this.B.getWidth() > i10 || this.B.getHeight() > i11) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.B, 0, 0, i10, i11);
            this.B = bitmapCreateBitmap2;
            this.C.setBitmap(bitmapCreateBitmap2);
            this.M = true;
        }
    }

    private void E0(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }

    private void F() {
        if (this.C != null) {
            return;
        }
        this.C = new Canvas();
        this.J = new RectF();
        this.K = new Matrix();
        this.L = new Matrix();
        this.D = new Rect();
        this.E = new RectF();
        this.F = new h1.a();
        this.G = new Rect();
        this.H = new Rect();
        this.I = new RectF();
    }

    private Context M() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private k1.a N() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f4575m == null) {
            k1.a aVar = new k1.a(getCallback(), null);
            this.f4575m = aVar;
            String str = this.f4577o;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f4575m;
    }

    private k1.b P() {
        k1.b bVar = this.f4573k;
        if (bVar != null && !bVar.b(M())) {
            this.f4573k = null;
        }
        if (this.f4573k == null) {
            this.f4573k = new k1.b(getCallback(), this.f4574l, null, this.f4566a.j());
        }
        return this.f4573k;
    }

    private boolean d0() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        if (((View) callback).getParent() instanceof ViewGroup) {
            return !((ViewGroup) r2).getClipChildren();
        }
        return false;
    }

    public /* synthetic */ void h0(l1.e eVar, Object obj, s1.c cVar, j jVar) {
        s(eVar, obj, cVar);
    }

    public /* synthetic */ void i0(ValueAnimator valueAnimator) {
        if (H()) {
            invalidateSelf();
            return;
        }
        o1.c cVar = this.f4581s;
        if (cVar != null) {
            cVar.N(this.f4567b.k());
        }
    }

    public /* synthetic */ void j0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public /* synthetic */ void k0() {
        o1.c cVar = this.f4581s;
        if (cVar == null) {
            return;
        }
        try {
            this.P.acquire();
            cVar.N(this.f4567b.k());
            if (U && this.M) {
                if (this.Q == null) {
                    this.Q = new Handler(Looper.getMainLooper());
                    this.R = new Runnable() { // from class: com.airbnb.lottie.y
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f4708a.j0();
                        }
                    };
                }
                this.Q.post(this.R);
            }
        } catch (InterruptedException unused) {
        } catch (Throwable th) {
            this.P.release();
            throw th;
        }
        this.P.release();
    }

    public /* synthetic */ void l0(j jVar) {
        y0();
    }

    private boolean l1() {
        j jVar = this.f4566a;
        if (jVar == null) {
            return false;
        }
        float f10 = this.T;
        float fK = this.f4567b.k();
        this.T = fK;
        return Math.abs(fK - f10) * jVar.d() >= 50.0f;
    }

    public /* synthetic */ void m0(j jVar) {
        D0();
    }

    public /* synthetic */ void n0(int i10, j jVar) {
        N0(i10);
    }

    public /* synthetic */ void o0(String str, j jVar) {
        T0(str);
    }

    public /* synthetic */ void p0(int i10, j jVar) {
        S0(i10);
    }

    public /* synthetic */ void q0(float f10, j jVar) {
        U0(f10);
    }

    public /* synthetic */ void r0(String str, j jVar) {
        W0(str);
    }

    public /* synthetic */ void s0(int i10, int i11, j jVar) {
        V0(i10, i11);
    }

    private boolean t() {
        return this.f4568c || this.f4569f;
    }

    public /* synthetic */ void t0(int i10, j jVar) {
        X0(i10);
    }

    private void u() {
        j jVar = this.f4566a;
        if (jVar == null) {
            return;
        }
        o1.c cVar = new o1.c(this, q1.v.a(jVar), jVar.k(), jVar);
        this.f4581s = cVar;
        if (this.f4584v) {
            cVar.L(true);
        }
        this.f4581s.R(this.f4580r);
    }

    public /* synthetic */ void u0(String str, j jVar) {
        Y0(str);
    }

    public /* synthetic */ void v0(float f10, j jVar) {
        Z0(f10);
    }

    public /* synthetic */ void w0(float f10, j jVar) {
        c1(f10);
    }

    private void x() {
        j jVar = this.f4566a;
        if (jVar == null) {
            return;
        }
        this.f4588z = this.f4587y.useSoftwareRendering(Build.VERSION.SDK_INT, jVar.q(), jVar.m());
    }

    private void y(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void z(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public void A0() {
        this.f4567b.removeAllUpdateListeners();
        this.f4567b.addUpdateListener(this.O);
    }

    public void B(boolean z10) {
        if (this.f4578p == z10) {
            return;
        }
        this.f4578p = z10;
        if (this.f4566a != null) {
            u();
        }
    }

    public boolean C() {
        return this.f4578p;
    }

    public List C0(l1.e eVar) {
        if (this.f4581s == null) {
            r1.d.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f4581s.g(eVar, 0, arrayList, new l1.e(new String[0]));
        return arrayList;
    }

    public void D() {
        this.f4572j.clear();
        this.f4567b.j();
        if (isVisible()) {
            return;
        }
        this.f4571i = b.NONE;
    }

    public void D0() {
        if (this.f4581s == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.z
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4709a.m0(jVar);
                }
            });
            return;
        }
        x();
        if (t() || Y() == 0) {
            if (isVisible()) {
                this.f4567b.w();
                this.f4571i = b.NONE;
            } else {
                this.f4571i = b.RESUME;
            }
        }
        if (t()) {
            return;
        }
        N0((int) (a0() < 0.0f ? U() : T()));
        this.f4567b.j();
        if (isVisible()) {
            return;
        }
        this.f4571i = b.NONE;
    }

    public void F0(boolean z10) {
        this.f4585w = z10;
    }

    public com.airbnb.lottie.a G() {
        com.airbnb.lottie.a aVar = this.N;
        return aVar != null ? aVar : e.d();
    }

    public void G0(com.airbnb.lottie.a aVar) {
        this.N = aVar;
    }

    public boolean H() {
        return G() == com.airbnb.lottie.a.ENABLED;
    }

    public void H0(boolean z10) {
        if (z10 != this.f4586x) {
            this.f4586x = z10;
            invalidateSelf();
        }
    }

    public Bitmap I(String str) {
        k1.b bVarP = P();
        if (bVarP != null) {
            return bVarP.a(str);
        }
        return null;
    }

    public void I0(boolean z10) {
        if (z10 != this.f4580r) {
            this.f4580r = z10;
            o1.c cVar = this.f4581s;
            if (cVar != null) {
                cVar.R(z10);
            }
            invalidateSelf();
        }
    }

    public boolean J() {
        return this.f4586x;
    }

    public boolean J0(j jVar) {
        if (this.f4566a == jVar) {
            return false;
        }
        this.M = true;
        w();
        this.f4566a = jVar;
        u();
        this.f4567b.y(jVar);
        c1(this.f4567b.getAnimatedFraction());
        Iterator it = new ArrayList(this.f4572j).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.a(jVar);
            }
            it.remove();
        }
        this.f4572j.clear();
        jVar.v(this.f4583u);
        x();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public boolean K() {
        return this.f4580r;
    }

    public void K0(String str) {
        this.f4577o = str;
        k1.a aVarN = N();
        if (aVarN != null) {
            aVarN.c(str);
        }
    }

    public j L() {
        return this.f4566a;
    }

    public void L0(com.airbnb.lottie.b bVar) {
        k1.a aVar = this.f4575m;
        if (aVar != null) {
            aVar.d(bVar);
        }
    }

    public void M0(Map map) {
        if (map == this.f4576n) {
            return;
        }
        this.f4576n = map;
        invalidateSelf();
    }

    public void N0(final int i10) {
        if (this.f4566a == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.h0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4564a.n0(i10, jVar);
                }
            });
        } else {
            this.f4567b.z(i10);
        }
    }

    public int O() {
        return (int) this.f4567b.l();
    }

    public void O0(boolean z10) {
        this.f4569f = z10;
    }

    public void P0(c cVar) {
        k1.b bVar = this.f4573k;
        if (bVar != null) {
            bVar.d(cVar);
        }
    }

    public String Q() {
        return this.f4574l;
    }

    public void Q0(String str) {
        this.f4574l = str;
    }

    public j0 R(String str) {
        j jVar = this.f4566a;
        if (jVar == null) {
            return null;
        }
        return (j0) jVar.j().get(str);
    }

    public void R0(boolean z10) {
        this.f4579q = z10;
    }

    public boolean S() {
        return this.f4579q;
    }

    public void S0(final int i10) {
        if (this.f4566a == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.t
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4695a.p0(i10, jVar);
                }
            });
        } else {
            this.f4567b.A(i10 + 0.99f);
        }
    }

    public float T() {
        return this.f4567b.n();
    }

    public void T0(final String str) {
        j jVar = this.f4566a;
        if (jVar == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.a0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar2) {
                    this.f4538a.o0(str, jVar2);
                }
            });
            return;
        }
        l1.h hVarL = jVar.l(str);
        if (hVarL != null) {
            S0((int) (hVarL.f13570b + hVarL.f13571c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public float U() {
        return this.f4567b.o();
    }

    public void U0(final float f10) {
        j jVar = this.f4566a;
        if (jVar == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.w
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar2) {
                    this.f4703a.q0(f10, jVar2);
                }
            });
        } else {
            this.f4567b.A(r1.i.i(jVar.p(), this.f4566a.f(), f10));
        }
    }

    public q0 V() {
        j jVar = this.f4566a;
        if (jVar != null) {
            return jVar.n();
        }
        return null;
    }

    public void V0(final int i10, final int i11) {
        if (this.f4566a == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.x
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4705a.s0(i10, i11, jVar);
                }
            });
        } else {
            this.f4567b.B(i10, i11 + 0.99f);
        }
    }

    public float W() {
        return this.f4567b.k();
    }

    public void W0(final String str) {
        j jVar = this.f4566a;
        if (jVar == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.s
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar2) {
                    this.f4693a.r0(str, jVar2);
                }
            });
            return;
        }
        l1.h hVarL = jVar.l(str);
        if (hVarL != null) {
            int i10 = (int) hVarL.f13570b;
            V0(i10, ((int) hVarL.f13571c) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public r0 X() {
        return this.f4588z ? r0.SOFTWARE : r0.HARDWARE;
    }

    public void X0(final int i10) {
        if (this.f4566a == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.u
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4697a.t0(i10, jVar);
                }
            });
        } else {
            this.f4567b.C(i10);
        }
    }

    public int Y() {
        return this.f4567b.getRepeatCount();
    }

    public void Y0(final String str) {
        j jVar = this.f4566a;
        if (jVar == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.b0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar2) {
                    this.f4540a.u0(str, jVar2);
                }
            });
            return;
        }
        l1.h hVarL = jVar.l(str);
        if (hVarL != null) {
            X0((int) hVarL.f13570b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public int Z() {
        return this.f4567b.getRepeatMode();
    }

    public void Z0(final float f10) {
        j jVar = this.f4566a;
        if (jVar == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.f0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar2) {
                    this.f4558a.v0(f10, jVar2);
                }
            });
        } else {
            X0((int) r1.i.i(jVar.p(), this.f4566a.f(), f10));
        }
    }

    public float a0() {
        return this.f4567b.p();
    }

    public void a1(boolean z10) {
        if (this.f4584v == z10) {
            return;
        }
        this.f4584v = z10;
        o1.c cVar = this.f4581s;
        if (cVar != null) {
            cVar.L(z10);
        }
    }

    public t0 b0() {
        return null;
    }

    public void b1(boolean z10) {
        this.f4583u = z10;
        j jVar = this.f4566a;
        if (jVar != null) {
            jVar.v(z10);
        }
    }

    public Typeface c0(l1.c cVar) {
        Map map = this.f4576n;
        if (map != null) {
            String strA = cVar.a();
            if (map.containsKey(strA)) {
                return (Typeface) map.get(strA);
            }
            String strB = cVar.b();
            if (map.containsKey(strB)) {
                return (Typeface) map.get(strB);
            }
            String str = cVar.a() + "-" + cVar.c();
            if (map.containsKey(str)) {
                return (Typeface) map.get(str);
            }
        }
        k1.a aVarN = N();
        if (aVarN != null) {
            return aVarN.b(cVar);
        }
        return null;
    }

    public void c1(final float f10) {
        if (this.f4566a == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.g0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4560a.w0(f10, jVar);
                }
            });
            return;
        }
        e.b("Drawable#setProgress");
        this.f4567b.z(this.f4566a.h(f10));
        e.c("Drawable#setProgress");
    }

    public void d1(r0 r0Var) {
        this.f4587y = r0Var;
        x();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        o1.c cVar = this.f4581s;
        if (cVar == null) {
            return;
        }
        boolean zH = H();
        if (zH) {
            try {
                this.P.acquire();
            } catch (InterruptedException unused) {
                e.c("Drawable#draw");
                if (!zH) {
                    return;
                }
                this.P.release();
                if (cVar.Q() == this.f4567b.k()) {
                    return;
                }
            } catch (Throwable th) {
                e.c("Drawable#draw");
                if (zH) {
                    this.P.release();
                    if (cVar.Q() != this.f4567b.k()) {
                        V.execute(this.S);
                    }
                }
                throw th;
            }
        }
        e.b("Drawable#draw");
        if (zH && l1()) {
            c1(this.f4567b.k());
        }
        if (this.f4570h) {
            try {
                if (this.f4588z) {
                    B0(canvas, cVar);
                } else {
                    A(canvas);
                }
            } catch (Throwable th2) {
                r1.d.b("Lottie crashed in draw!", th2);
            }
        } else if (this.f4588z) {
            B0(canvas, cVar);
        } else {
            A(canvas);
        }
        this.M = false;
        e.c("Drawable#draw");
        if (zH) {
            this.P.release();
            if (cVar.Q() == this.f4567b.k()) {
                return;
            }
            V.execute(this.S);
        }
    }

    public boolean e0() {
        r1.g gVar = this.f4567b;
        if (gVar == null) {
            return false;
        }
        return gVar.isRunning();
    }

    public void e1(int i10) {
        this.f4567b.setRepeatCount(i10);
    }

    boolean f0() {
        if (isVisible()) {
            return this.f4567b.isRunning();
        }
        b bVar = this.f4571i;
        return bVar == b.PLAY || bVar == b.RESUME;
    }

    public void f1(int i10) {
        this.f4567b.setRepeatMode(i10);
    }

    public boolean g0() {
        return this.f4585w;
    }

    public void g1(boolean z10) {
        this.f4570h = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4582t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        j jVar = this.f4566a;
        if (jVar == null) {
            return -1;
        }
        return jVar.b().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        j jVar = this.f4566a;
        if (jVar == null) {
            return -1;
        }
        return jVar.b().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h1(float f10) {
        this.f4567b.D(f10);
    }

    public void i1(Boolean bool) {
        this.f4568c = bool.booleanValue();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.M) {
            return;
        }
        this.M = true;
        if ((!U || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return e0();
    }

    public void j1(t0 t0Var) {
    }

    public void k1(boolean z10) {
        this.f4567b.E(z10);
    }

    public boolean m1() {
        return this.f4576n == null && this.f4566a.c().i() > 0;
    }

    public void q(Animator.AnimatorListener animatorListener) {
        this.f4567b.addListener(animatorListener);
    }

    public void r(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4567b.addUpdateListener(animatorUpdateListener);
    }

    public void s(final l1.e eVar, final Object obj, final s1.c cVar) {
        o1.c cVar2 = this.f4581s;
        if (cVar2 == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.v
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4699a.h0(eVar, obj, cVar, jVar);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (eVar == l1.e.f13564c) {
            cVar2.h(obj, cVar);
        } else if (eVar.d() != null) {
            eVar.d().h(obj, cVar);
        } else {
            List listC0 = C0(eVar);
            for (int i10 = 0; i10 < listC0.size(); i10++) {
                ((l1.e) listC0.get(i10)).d().h(obj, cVar);
            }
            zIsEmpty = true ^ listC0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == m0.E) {
                c1(W());
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f4582t = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        r1.d.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            b bVar = this.f4571i;
            if (bVar == b.PLAY) {
                y0();
            } else if (bVar == b.RESUME) {
                D0();
            }
        } else if (this.f4567b.isRunning()) {
            x0();
            this.f4571i = b.RESUME;
        } else if (zIsVisible) {
            this.f4571i = b.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        y0();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        D();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v() {
        this.f4572j.clear();
        this.f4567b.cancel();
        if (isVisible()) {
            return;
        }
        this.f4571i = b.NONE;
    }

    public void w() {
        if (this.f4567b.isRunning()) {
            this.f4567b.cancel();
            if (!isVisible()) {
                this.f4571i = b.NONE;
            }
        }
        this.f4566a = null;
        this.f4581s = null;
        this.f4573k = null;
        this.T = -3.4028235E38f;
        this.f4567b.i();
        invalidateSelf();
    }

    public void x0() {
        this.f4572j.clear();
        this.f4567b.r();
        if (isVisible()) {
            return;
        }
        this.f4571i = b.NONE;
    }

    public void y0() {
        if (this.f4581s == null) {
            this.f4572j.add(new a() { // from class: com.airbnb.lottie.e0
                @Override // com.airbnb.lottie.i0.a
                public final void a(j jVar) {
                    this.f4555a.l0(jVar);
                }
            });
            return;
        }
        x();
        if (t() || Y() == 0) {
            if (isVisible()) {
                this.f4567b.s();
                this.f4571i = b.NONE;
            } else {
                this.f4571i = b.PLAY;
            }
        }
        if (t()) {
            return;
        }
        N0((int) (a0() < 0.0f ? U() : T()));
        this.f4567b.j();
        if (isVisible()) {
            return;
        }
        this.f4571i = b.NONE;
    }

    public void z0() {
        this.f4567b.removeAllListeners();
    }
}
