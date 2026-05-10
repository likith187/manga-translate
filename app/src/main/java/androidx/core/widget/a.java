package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.m0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f2146u = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final View f2149c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f2150f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2153j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2154k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2158o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f2159p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f2160q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f2161r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f2162s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f2163t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final C0016a f2147a = new C0016a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Interpolator f2148b = new AccelerateInterpolator();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f2151h = {0.0f, 0.0f};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f2152i = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float[] f2155l = {0.0f, 0.0f};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float[] f2156m = {0.0f, 0.0f};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float[] f2157n = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    private static class C0016a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f2166c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f2167d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f2173j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f2174k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2168e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f2172i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f2169f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f2170g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f2171h = 0;

        C0016a() {
        }

        private float e(long j10) {
            if (j10 < this.f2168e) {
                return 0.0f;
            }
            long j11 = this.f2172i;
            if (j11 < 0 || j10 < j11) {
                return a.e((j10 - r0) / this.f2164a, 0.0f, 1.0f) * 0.5f;
            }
            float f10 = this.f2173j;
            return (1.0f - f10) + (f10 * a.e((j10 - j11) / this.f2174k, 0.0f, 1.0f));
        }

        private float g(float f10) {
            return ((-4.0f) * f10 * f10) + (f10 * 4.0f);
        }

        public void a() {
            if (this.f2169f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j10 = jCurrentAnimationTimeMillis - this.f2169f;
            this.f2169f = jCurrentAnimationTimeMillis;
            float f10 = j10 * fG;
            this.f2170g = (int) (this.f2166c * f10);
            this.f2171h = (int) (f10 * this.f2167d);
        }

        public int b() {
            return this.f2170g;
        }

        public int c() {
            return this.f2171h;
        }

        public int d() {
            float f10 = this.f2166c;
            return (int) (f10 / Math.abs(f10));
        }

        public int f() {
            float f10 = this.f2167d;
            return (int) (f10 / Math.abs(f10));
        }

        public boolean h() {
            return this.f2172i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2172i + ((long) this.f2174k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2174k = a.f((int) (jCurrentAnimationTimeMillis - this.f2168e), 0, this.f2165b);
            this.f2173j = e(jCurrentAnimationTimeMillis);
            this.f2172i = jCurrentAnimationTimeMillis;
        }

        public void j(int i10) {
            this.f2165b = i10;
        }

        public void k(int i10) {
            this.f2164a = i10;
        }

        public void l(float f10, float f11) {
            this.f2166c = f10;
            this.f2167d = f11;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2168e = jCurrentAnimationTimeMillis;
            this.f2172i = -1L;
            this.f2169f = jCurrentAnimationTimeMillis;
            this.f2173j = 0.5f;
            this.f2170g = 0;
            this.f2171h = 0;
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.f2161r) {
                if (aVar.f2159p) {
                    aVar.f2159p = false;
                    aVar.f2147a.m();
                }
                C0016a c0016a = a.this.f2147a;
                if (c0016a.h() || !a.this.u()) {
                    a.this.f2161r = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.f2160q) {
                    aVar2.f2160q = false;
                    aVar2.c();
                }
                c0016a.a();
                a.this.j(c0016a.b(), c0016a.c());
                m0.a0(a.this.f2149c, this);
            }
        }
    }

    public a(View view) {
        this.f2149c = view;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = (int) ((1575.0f * f10) + 0.5f);
        o(f11, f11);
        float f12 = (int) ((f10 * 315.0f) + 0.5f);
        p(f12, f12);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(f2146u);
        r(500);
        q(500);
    }

    private float d(int i10, float f10, float f11, float f12) {
        float fH = h(this.f2151h[i10], f11, this.f2152i[i10], f10);
        if (fH == 0.0f) {
            return 0.0f;
        }
        float f13 = this.f2155l[i10];
        float f14 = this.f2156m[i10];
        float f15 = this.f2157n[i10];
        float f16 = f13 * f12;
        return fH > 0.0f ? e(fH * f16, f14, f15) : -e((-fH) * f16, f14, f15);
    }

    static float e(float f10, float f11, float f12) {
        return f10 > f12 ? f12 : f10 < f11 ? f11 : f10;
    }

    static int f(int i10, int i11, int i12) {
        return i10 > i12 ? i12 : i10 < i11 ? i11 : i10;
    }

    private float g(float f10, float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.f2153j;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= 0.0f) {
                    return 1.0f - (f10 / f11);
                }
                if (this.f2161r && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < 0.0f) {
            return f10 / (-f11);
        }
        return 0.0f;
    }

    private float h(float f10, float f11, float f12, float f13) {
        float interpolation;
        float fE = e(f10 * f11, 0.0f, f12);
        float fG = g(f11 - f13, fE) - g(f13, fE);
        if (fG < 0.0f) {
            interpolation = -this.f2148b.getInterpolation(-fG);
        } else {
            if (fG <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f2148b.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    private void i() {
        if (this.f2159p) {
            this.f2161r = false;
        } else {
            this.f2147a.i();
        }
    }

    private void v() {
        int i10;
        if (this.f2150f == null) {
            this.f2150f = new b();
        }
        this.f2161r = true;
        this.f2159p = true;
        if (this.f2158o || (i10 = this.f2154k) <= 0) {
            this.f2150f.run();
        } else {
            m0.b0(this.f2149c, this.f2150f, i10);
        }
        this.f2158o = true;
    }

    public abstract boolean a(int i10);

    public abstract boolean b(int i10);

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f2149c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void j(int i10, int i11);

    public a k(int i10) {
        this.f2154k = i10;
        return this;
    }

    public a l(int i10) {
        this.f2153j = i10;
        return this;
    }

    public a m(boolean z10) {
        if (this.f2162s && !z10) {
            i();
        }
        this.f2162s = z10;
        return this;
    }

    public a n(float f10, float f11) {
        float[] fArr = this.f2152i;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a o(float f10, float f11) {
        float[] fArr = this.f2157n;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.f2162s
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.i()
            goto L58
        L1a:
            r5.f2160q = r2
            r5.f2158o = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f2149c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.d(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f2149c
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.d(r2, r7, r6, r3)
            androidx.core.widget.a$a r7 = r5.f2147a
            r7.l(r0, r6)
            boolean r6 = r5.f2161r
            if (r6 != 0) goto L58
            boolean r6 = r5.u()
            if (r6 == 0) goto L58
            r5.v()
        L58:
            boolean r6 = r5.f2163t
            if (r6 == 0) goto L61
            boolean r5 = r5.f2161r
            if (r5 == 0) goto L61
            r1 = r2
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public a p(float f10, float f11) {
        float[] fArr = this.f2156m;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    public a q(int i10) {
        this.f2147a.j(i10);
        return this;
    }

    public a r(int i10) {
        this.f2147a.k(i10);
        return this;
    }

    public a s(float f10, float f11) {
        float[] fArr = this.f2151h;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a t(float f10, float f11) {
        float[] fArr = this.f2155l;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    boolean u() {
        C0016a c0016a = this.f2147a;
        int iF = c0016a.f();
        int iD = c0016a.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }
}
