package com.oplus.anim;

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
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class o extends Drawable implements Drawable.Callback, Animatable {
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

    /* JADX INFO: renamed from: a */
    private com.oplus.anim.a f11062a;

    /* JADX INFO: renamed from: b */
    private final l6.b f11063b;

    /* JADX INFO: renamed from: c */
    private boolean f11064c;

    /* JADX INFO: renamed from: f */
    private boolean f11065f;

    /* JADX INFO: renamed from: h */
    private boolean f11066h;

    /* JADX INFO: renamed from: i */
    private c f11067i;

    /* JADX INFO: renamed from: j */
    private final ArrayList f11068j;

    /* JADX INFO: renamed from: k */
    private final ValueAnimator.AnimatorUpdateListener f11069k;

    /* JADX INFO: renamed from: l */
    private e6.b f11070l;

    /* JADX INFO: renamed from: m */
    private String f11071m;

    /* JADX INFO: renamed from: n */
    private e6.a f11072n;

    /* JADX INFO: renamed from: o */
    private Map f11073o;

    /* JADX INFO: renamed from: p */
    String f11074p;

    /* JADX INFO: renamed from: q */
    private boolean f11075q;

    /* JADX INFO: renamed from: r */
    private boolean f11076r;

    /* JADX INFO: renamed from: s */
    private boolean f11077s;

    /* JADX INFO: renamed from: t */
    private i6.c f11078t;

    /* JADX INFO: renamed from: u */
    private int f11079u;

    /* JADX INFO: renamed from: v */
    private boolean f11080v;

    /* JADX INFO: renamed from: w */
    private boolean f11081w;

    /* JADX INFO: renamed from: x */
    private boolean f11082x;

    /* JADX INFO: renamed from: y */
    private m0 f11083y;

    /* JADX INFO: renamed from: z */
    private boolean f11084z;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (o.this.f11078t != null) {
                o.this.f11078t.M(o.this.f11063b.k());
            }
        }
    }

    interface b {
        void a(com.oplus.anim.a aVar);
    }

    private enum c {
        NONE,
        PLAY,
        RESUME
    }

    public o() {
        l6.b bVar = new l6.b();
        this.f11063b = bVar;
        this.f11064c = true;
        this.f11065f = false;
        this.f11066h = false;
        this.f11067i = c.NONE;
        this.f11068j = new ArrayList();
        a aVar = new a();
        this.f11069k = aVar;
        this.f11076r = false;
        this.f11077s = true;
        this.f11079u = 255;
        this.f11083y = m0.AUTOMATIC;
        this.f11084z = false;
        this.A = new Matrix();
        this.M = false;
        bVar.addUpdateListener(aVar);
    }

    private void C(int i10, int i11) {
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

    private void D() {
        if (this.C != null) {
            return;
        }
        this.C = new Canvas();
        this.J = new RectF();
        this.K = new Matrix();
        this.L = new Matrix();
        this.D = new Rect();
        this.E = new RectF();
        this.F = new b6.a();
        this.G = new Rect();
        this.H = new Rect();
        this.I = new RectF();
    }

    private Context H() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private e6.a I() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f11072n == null) {
            e6.a aVar = new e6.a(getCallback(), null);
            this.f11072n = aVar;
            String str = this.f11074p;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f11072n;
    }

    private e6.b K() {
        e6.b bVar = this.f11070l;
        if (bVar != null && !bVar.b(H())) {
            this.f11070l = null;
        }
        if (this.f11070l == null) {
            this.f11070l = new e6.b(getCallback(), this.f11071m, null, this.f11062a.j());
        }
        return this.f11070l;
    }

    private boolean Y() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        if (((View) callback).getParent() instanceof ViewGroup) {
            return !((ViewGroup) r2).getClipChildren();
        }
        return false;
    }

    public /* synthetic */ void c0(f6.f fVar, Object obj, m6.b bVar, com.oplus.anim.a aVar) {
        q(fVar, obj, bVar);
    }

    public /* synthetic */ void d0(com.oplus.anim.a aVar) {
        q0();
    }

    public /* synthetic */ void e0(com.oplus.anim.a aVar) {
        t0();
    }

    public /* synthetic */ void f0(int i10, com.oplus.anim.a aVar) {
        B0(i10);
    }

    public /* synthetic */ void g0(int i10, com.oplus.anim.a aVar) {
        G0(i10);
    }

    public /* synthetic */ void h0(String str, com.oplus.anim.a aVar) {
        H0(str);
    }

    public /* synthetic */ void i0(float f10, com.oplus.anim.a aVar) {
        I0(f10);
    }

    public /* synthetic */ void j0(int i10, int i11, com.oplus.anim.a aVar) {
        J0(i10, i11);
    }

    public /* synthetic */ void k0(String str, com.oplus.anim.a aVar) {
        K0(str);
    }

    public /* synthetic */ void l0(int i10, com.oplus.anim.a aVar) {
        L0(i10);
    }

    public /* synthetic */ void m0(String str, com.oplus.anim.a aVar) {
        M0(str);
    }

    public /* synthetic */ void n0(float f10, com.oplus.anim.a aVar) {
        N0(f10);
    }

    public /* synthetic */ void o0(float f10, com.oplus.anim.a aVar) {
        Q0(f10);
    }

    private boolean r() {
        return this.f11064c || this.f11065f;
    }

    private void r0(Canvas canvas, i6.c cVar) {
        if (this.f11062a == null || cVar == null) {
            return;
        }
        D();
        canvas.getMatrix(this.K);
        canvas.getClipBounds(this.D);
        w(this.D, this.E);
        this.K.mapRect(this.E);
        x(this.E, this.D);
        if (this.f11077s) {
            this.J.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            cVar.b(this.J, null, false);
        }
        this.K.mapRect(this.J);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        u0(this.J, fWidth, fHeight);
        if (!Y()) {
            RectF rectF = this.J;
            Rect rect = this.D;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.J.width());
        int iCeil2 = (int) Math.ceil(this.J.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        C(iCeil, iCeil2);
        if (this.M) {
            this.A.set(this.K);
            this.A.preScale(fWidth, fHeight);
            Matrix matrix = this.A;
            RectF rectF2 = this.J;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.B.eraseColor(0);
            cVar.f(this.C, this.A, this.f11079u);
            this.K.invert(this.L);
            this.L.mapRect(this.I, this.J);
            x(this.I, this.H);
        }
        this.G.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.B, this.G, this.H, this.F);
    }

    private void s() {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            return;
        }
        i6.c cVar = new i6.c(this, k6.w.a(aVar), aVar.k(), aVar);
        this.f11078t = cVar;
        if (this.f11081w) {
            cVar.K(true);
        }
        this.f11078t.P(this.f11077s);
    }

    private void u0(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }

    private void v() {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            return;
        }
        this.f11084z = this.f11083y.useSoftwareRendering(Build.VERSION.SDK_INT, aVar.q(), aVar.m());
    }

    private void w(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void x(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void y(Canvas canvas) {
        i6.c cVar = this.f11078t;
        com.oplus.anim.a aVar = this.f11062a;
        if (cVar == null || aVar == null) {
            return;
        }
        this.A.reset();
        if (!getBounds().isEmpty()) {
            this.A.preScale(r2.width() / aVar.b().width(), r2.height() / aVar.b().height());
            this.A.preTranslate(r2.left, r2.top);
        }
        cVar.f(canvas, this.A, this.f11079u);
    }

    public boolean A() {
        return this.f11075q;
    }

    public void A0(Map map) {
        if (map == this.f11073o) {
            return;
        }
        this.f11073o = map;
        invalidateSelf();
    }

    public void B() {
        this.f11068j.clear();
        this.f11063b.j();
        if (isVisible()) {
            return;
        }
        this.f11067i = c.NONE;
    }

    public void B0(final int i10) {
        if (this.f11062a == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.i
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11035a.f0(i10, aVar);
                }
            });
        } else {
            this.f11063b.B(i10);
        }
    }

    public void C0(boolean z10) {
        this.f11065f = z10;
    }

    public void D0(j0 j0Var) {
        e6.b bVar = this.f11070l;
        if (bVar != null) {
            bVar.d(j0Var);
        }
    }

    public Bitmap E(String str) {
        e6.b bVarK = K();
        if (bVarK != null) {
            return bVarK.a(str);
        }
        return null;
    }

    public void E0(String str) {
        this.f11071m = str;
    }

    public boolean F() {
        return this.f11077s;
    }

    public void F0(boolean z10) {
        this.f11076r = z10;
    }

    public com.oplus.anim.a G() {
        return this.f11062a;
    }

    public void G0(final int i10) {
        if (this.f11062a == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.d
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11009a.g0(i10, aVar);
                }
            });
        } else {
            this.f11063b.C(i10 + 0.99f);
        }
    }

    public void H0(final String str) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.b
                @Override // com.oplus.anim.o.b
                public final void a(a aVar2) {
                    this.f11001a.h0(str, aVar2);
                }
            });
            return;
        }
        f6.h hVarL = aVar.l(str);
        if (hVarL != null) {
            G0((int) (hVarL.f12004b + hVarL.f12005c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void I0(final float f10) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.g
                @Override // com.oplus.anim.o.b
                public final void a(a aVar2) {
                    this.f11023a.i0(f10, aVar2);
                }
            });
        } else {
            this.f11063b.C(l6.g.i(aVar.p(), this.f11062a.f(), f10));
        }
    }

    public int J() {
        return (int) this.f11063b.l();
    }

    public void J0(final int i10, final int i11) {
        if (this.f11062a == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.e
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11013a.j0(i10, i11, aVar);
                }
            });
        } else {
            this.f11063b.D(i10, i11 + 0.99f);
        }
    }

    public void K0(final String str) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.k
                @Override // com.oplus.anim.o.b
                public final void a(a aVar2) {
                    this.f11038a.k0(str, aVar2);
                }
            });
            return;
        }
        f6.h hVarL = aVar.l(str);
        if (hVarL != null) {
            int i10 = (int) hVarL.f12004b;
            J0(i10, ((int) hVarL.f12005c) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public String L() {
        return this.f11071m;
    }

    public void L0(final int i10) {
        if (this.f11062a == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.m
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11057a.l0(i10, aVar);
                }
            });
        } else {
            this.f11063b.E(i10);
        }
    }

    public g0 M(String str) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            return null;
        }
        return (g0) aVar.j().get(str);
    }

    public void M0(final String str) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.n
                @Override // com.oplus.anim.o.b
                public final void a(a aVar2) {
                    this.f11060a.m0(str, aVar2);
                }
            });
            return;
        }
        f6.h hVarL = aVar.l(str);
        if (hVarL != null) {
            L0((int) hVarL.f12004b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public boolean N() {
        return this.f11076r;
    }

    public void N0(final float f10) {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.c
                @Override // com.oplus.anim.o.b
                public final void a(a aVar2) {
                    this.f11006a.n0(f10, aVar2);
                }
            });
        } else {
            L0((int) l6.g.i(aVar.p(), this.f11062a.f(), f10));
        }
    }

    public float O() {
        return this.f11063b.n();
    }

    public void O0(boolean z10) {
        if (this.f11081w == z10) {
            return;
        }
        this.f11081w = z10;
        i6.c cVar = this.f11078t;
        if (cVar != null) {
            cVar.K(z10);
        }
    }

    public float P() {
        return this.f11063b.o();
    }

    public void P0(boolean z10) {
        this.f11080v = z10;
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar != null) {
            aVar.v(z10);
        }
    }

    public l0 Q() {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar != null) {
            return aVar.n();
        }
        return null;
    }

    public void Q0(final float f10) {
        if (this.f11062a == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.f
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11018a.o0(f10, aVar);
                }
            });
            return;
        }
        k0.a("Drawable#setProgress");
        this.f11063b.B(this.f11062a.h(f10));
        k0.b("Drawable#setProgress");
    }

    public float R() {
        return this.f11063b.k();
    }

    public void R0(m0 m0Var) {
        this.f11083y = m0Var;
        v();
    }

    public m0 S() {
        return this.f11084z ? m0.SOFTWARE : m0.HARDWARE;
    }

    public void S0(int i10) {
        this.f11063b.setRepeatCount(i10);
    }

    public int T() {
        return this.f11063b.getRepeatCount();
    }

    public void T0(int i10) {
        this.f11063b.setRepeatMode(i10);
    }

    public int U() {
        return this.f11063b.getRepeatMode();
    }

    public void U0(boolean z10) {
        this.f11066h = z10;
    }

    public float V() {
        return this.f11063b.p();
    }

    public void V0(float f10) {
        this.f11063b.F(f10);
    }

    public o0 W() {
        return null;
    }

    public void W0(Boolean bool) {
        this.f11064c = bool.booleanValue();
    }

    public Typeface X(f6.d dVar) {
        Map map = this.f11073o;
        if (map != null) {
            String strA = dVar.a();
            if (map.containsKey(strA)) {
                return (Typeface) map.get(strA);
            }
            String strB = dVar.b();
            if (map.containsKey(strB)) {
                return (Typeface) map.get(strB);
            }
            String str = dVar.a() + "-" + dVar.c();
            if (map.containsKey(str)) {
                return (Typeface) map.get(str);
            }
        }
        e6.a aVarI = I();
        if (aVarI != null) {
            return aVarI.b(dVar);
        }
        return null;
    }

    public void X0(o0 o0Var) {
    }

    public void Y0(boolean z10) {
        this.f11063b.G(z10);
    }

    public boolean Z() {
        l6.b bVar = this.f11063b;
        if (bVar == null) {
            return false;
        }
        return bVar.isRunning();
    }

    public boolean Z0() {
        return this.f11073o == null && this.f11062a.c().i() > 0;
    }

    boolean a0() {
        if (isVisible()) {
            return this.f11063b.isRunning();
        }
        c cVar = this.f11067i;
        return cVar == c.PLAY || cVar == c.RESUME;
    }

    public boolean b0() {
        return this.f11082x;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        k0.a("Drawable#draw");
        if (this.f11066h) {
            try {
                if (this.f11084z) {
                    r0(canvas, this.f11078t);
                } else {
                    y(canvas);
                }
            } catch (Throwable th) {
                l6.e.b("Lottie crashed in draw!", th);
            }
        } else if (this.f11084z) {
            r0(canvas, this.f11078t);
        } else {
            y(canvas);
        }
        this.M = false;
        k0.b("Drawable#draw");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11079u;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            return -1;
        }
        return aVar.b().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.oplus.anim.a aVar = this.f11062a;
        if (aVar == null) {
            return -1;
        }
        return aVar.b().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
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
        if (this.M) {
            return;
        }
        this.M = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return Z();
    }

    public void p(Animator.AnimatorListener animatorListener) {
        this.f11063b.addListener(animatorListener);
    }

    public void p0() {
        this.f11068j.clear();
        this.f11063b.t();
        if (isVisible()) {
            return;
        }
        this.f11067i = c.NONE;
    }

    public void q(final f6.f fVar, final Object obj, final m6.b bVar) {
        i6.c cVar = this.f11078t;
        if (cVar == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.h
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11031a.c0(fVar, obj, bVar, aVar);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (fVar == f6.f.f12000c) {
            cVar.h(obj, bVar);
        } else if (fVar.d() != null) {
            fVar.d().h(obj, bVar);
        } else {
            List listS0 = s0(fVar);
            for (int i10 = 0; i10 < listS0.size(); i10++) {
                ((f6.f) listS0.get(i10)).d().h(obj, bVar);
            }
            zIsEmpty = true ^ listS0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == q.E) {
                Q0(R());
            }
        }
    }

    public void q0() {
        if (this.f11078t == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.j
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11037a.d0(aVar);
                }
            });
            return;
        }
        v();
        if (r() || T() == 0) {
            if (isVisible()) {
                this.f11063b.u();
                this.f11067i = c.NONE;
            } else {
                this.f11067i = c.PLAY;
            }
        }
        if (r()) {
            return;
        }
        B0((int) (V() < 0.0f ? P() : O()));
        this.f11063b.j();
        if (isVisible()) {
            return;
        }
        this.f11067i = c.NONE;
    }

    public List s0(f6.f fVar) {
        if (this.f11078t == null) {
            l6.e.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f11078t.i(fVar, 0, arrayList, new f6.f(new String[0]));
        return arrayList;
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
        this.f11079u = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        l6.e.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            c cVar = this.f11067i;
            if (cVar == c.PLAY) {
                q0();
            } else if (cVar == c.RESUME) {
                t0();
            }
        } else if (this.f11063b.isRunning()) {
            p0();
            this.f11067i = c.RESUME;
        } else if (zIsVisible) {
            this.f11067i = c.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        q0();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        B();
    }

    public void t() {
        this.f11068j.clear();
        this.f11063b.cancel();
        if (isVisible()) {
            return;
        }
        this.f11067i = c.NONE;
    }

    public void t0() {
        if (this.f11078t == null) {
            this.f11068j.add(new b() { // from class: com.oplus.anim.l
                @Override // com.oplus.anim.o.b
                public final void a(a aVar) {
                    this.f11051a.e0(aVar);
                }
            });
            return;
        }
        v();
        if (r() || T() == 0) {
            if (isVisible()) {
                this.f11063b.y();
                this.f11067i = c.NONE;
            } else {
                this.f11067i = c.RESUME;
            }
        }
        if (r()) {
            return;
        }
        B0((int) (V() < 0.0f ? P() : O()));
        this.f11063b.j();
        if (isVisible()) {
            return;
        }
        this.f11067i = c.NONE;
    }

    public void u() {
        if (this.f11063b.isRunning()) {
            this.f11063b.cancel();
            if (!isVisible()) {
                this.f11067i = c.NONE;
            }
        }
        this.f11062a = null;
        this.f11078t = null;
        this.f11070l = null;
        this.f11063b.i();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v0(boolean z10) {
        this.f11082x = z10;
    }

    public void w0(boolean z10) {
        if (z10 != this.f11077s) {
            this.f11077s = z10;
            i6.c cVar = this.f11078t;
            if (cVar != null) {
                cVar.P(z10);
            }
            invalidateSelf();
        }
    }

    public boolean x0(com.oplus.anim.a aVar) {
        if (this.f11062a == aVar) {
            return false;
        }
        this.M = true;
        u();
        this.f11062a = aVar;
        s();
        this.f11063b.A(aVar);
        Q0(this.f11063b.getAnimatedFraction());
        Iterator it = new ArrayList(this.f11068j).iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar != null) {
                bVar.a(aVar);
            }
            it.remove();
        }
        this.f11068j.clear();
        aVar.v(this.f11080v);
        v();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void y0(String str) {
        this.f11074p = str;
        e6.a aVarI = I();
        if (aVarI != null) {
            aVarI.c(str);
        }
    }

    public void z(boolean z10) {
        if (this.f11075q == z10) {
            return;
        }
        this.f11075q = z10;
        if (this.f11062a != null) {
            s();
        }
    }

    public void z0(i0 i0Var) {
        e6.a aVar = this.f11072n;
        if (aVar != null) {
            aVar.d(i0Var);
        }
    }
}
