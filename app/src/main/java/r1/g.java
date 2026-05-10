package r1;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
public class g extends a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.airbnb.lottie.j f15418o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f15410f = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15411h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f15412i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f15413j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f15414k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f15415l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f15416m = -2.1474836E9f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f15417n = 2.1474836E9f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f15419p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f15420q = false;

    private void F() {
        if (this.f15418o == null) {
            return;
        }
        float f10 = this.f15414k;
        if (f10 < this.f15416m || f10 > this.f15417n) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f15416m), Float.valueOf(this.f15417n), Float.valueOf(this.f15414k)));
        }
    }

    private float m() {
        com.airbnb.lottie.j jVar = this.f15418o;
        if (jVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / jVar.i()) / Math.abs(this.f15410f);
    }

    private boolean q() {
        return p() < 0.0f;
    }

    public void A(float f10) {
        B(this.f15416m, f10);
    }

    public void B(float f10, float f11) {
        if (f10 > f11) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
        }
        com.airbnb.lottie.j jVar = this.f15418o;
        float fP = jVar == null ? -3.4028235E38f : jVar.p();
        com.airbnb.lottie.j jVar2 = this.f15418o;
        float f12 = jVar2 == null ? Float.MAX_VALUE : jVar2.f();
        float fB = i.b(f10, fP, f12);
        float fB2 = i.b(f11, fP, f12);
        if (fB == this.f15416m && fB2 == this.f15417n) {
            return;
        }
        this.f15416m = fB;
        this.f15417n = fB2;
        z((int) i.b(this.f15414k, fB, fB2));
    }

    public void C(int i10) {
        B(i10, (int) this.f15417n);
    }

    public void D(float f10) {
        this.f15410f = f10;
    }

    public void E(boolean z10) {
        this.f15420q = z10;
    }

    @Override // r1.a
    void a() {
        super.a();
        b(q());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        a();
        u();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        t();
        if (this.f15418o == null || !isRunning()) {
            return;
        }
        com.airbnb.lottie.e.b("LottieValueAnimator#doFrame");
        float fM = (this.f15412i != 0 ? j10 - r1 : 0L) / m();
        float f10 = this.f15413j;
        if (q()) {
            fM = -fM;
        }
        float f11 = f10 + fM;
        boolean zD = i.d(f11, o(), n());
        float f12 = this.f15413j;
        float fB = i.b(f11, o(), n());
        this.f15413j = fB;
        if (this.f15420q) {
            fB = (float) Math.floor(fB);
        }
        this.f15414k = fB;
        this.f15412i = j10;
        if (!this.f15420q || this.f15413j != f12) {
            h();
        }
        if (!zD) {
            if (getRepeatCount() == -1 || this.f15415l < getRepeatCount()) {
                e();
                this.f15415l++;
                if (getRepeatMode() == 2) {
                    this.f15411h = !this.f15411h;
                    x();
                } else {
                    float fN = q() ? n() : o();
                    this.f15413j = fN;
                    this.f15414k = fN;
                }
                this.f15412i = j10;
            } else {
                float fO = this.f15410f < 0.0f ? o() : n();
                this.f15413j = fO;
                this.f15414k = fO;
                u();
                b(q());
            }
        }
        F();
        com.airbnb.lottie.e.c("LottieValueAnimator#doFrame");
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float fO;
        float fN;
        float fO2;
        if (this.f15418o == null) {
            return 0.0f;
        }
        if (q()) {
            fO = n() - this.f15414k;
            fN = n();
            fO2 = o();
        } else {
            fO = this.f15414k - o();
            fN = n();
            fO2 = o();
        }
        return fO / (fN - fO2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(k());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.j jVar = this.f15418o;
        if (jVar == null) {
            return 0L;
        }
        return (long) jVar.d();
    }

    public void i() {
        this.f15418o = null;
        this.f15416m = -2.1474836E9f;
        this.f15417n = 2.1474836E9f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f15419p;
    }

    public void j() {
        u();
        b(q());
    }

    public float k() {
        com.airbnb.lottie.j jVar = this.f15418o;
        if (jVar == null) {
            return 0.0f;
        }
        return (this.f15414k - jVar.p()) / (this.f15418o.f() - this.f15418o.p());
    }

    public float l() {
        return this.f15414k;
    }

    public float n() {
        com.airbnb.lottie.j jVar = this.f15418o;
        if (jVar == null) {
            return 0.0f;
        }
        float f10 = this.f15417n;
        return f10 == 2.1474836E9f ? jVar.f() : f10;
    }

    public float o() {
        com.airbnb.lottie.j jVar = this.f15418o;
        if (jVar == null) {
            return 0.0f;
        }
        float f10 = this.f15416m;
        return f10 == -2.1474836E9f ? jVar.p() : f10;
    }

    public float p() {
        return this.f15410f;
    }

    public void r() {
        u();
        d();
    }

    public void s() {
        this.f15419p = true;
        g(q());
        z((int) (q() ? n() : o()));
        this.f15412i = 0L;
        this.f15415l = 0;
        t();
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f15411h) {
            return;
        }
        this.f15411h = false;
        x();
    }

    protected void t() {
        if (isRunning()) {
            v(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    protected void u() {
        v(true);
    }

    protected void v(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f15419p = false;
        }
    }

    public void w() {
        this.f15419p = true;
        t();
        this.f15412i = 0L;
        if (q() && l() == o()) {
            z(n());
        } else if (!q() && l() == n()) {
            z(o());
        }
        f();
    }

    public void x() {
        D(-p());
    }

    public void y(com.airbnb.lottie.j jVar) {
        boolean z10 = this.f15418o == null;
        this.f15418o = jVar;
        if (z10) {
            B(Math.max(this.f15416m, jVar.p()), Math.min(this.f15417n, jVar.f()));
        } else {
            B((int) jVar.p(), (int) jVar.f());
        }
        float f10 = this.f15414k;
        this.f15414k = 0.0f;
        this.f15413j = 0.0f;
        z((int) f10);
        h();
    }

    public void z(float f10) {
        if (this.f15413j == f10) {
            return;
        }
        float fB = i.b(f10, o(), n());
        this.f15413j = fB;
        if (this.f15420q) {
            fB = (float) Math.floor(fB);
        }
        this.f15414k = fB;
        this.f15412i = 0L;
        h();
    }
}
