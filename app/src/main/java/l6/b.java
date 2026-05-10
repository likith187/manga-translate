package l6;

import android.view.Choreographer;
import com.oplus.anim.k0;
import com.oplus.wrapper.os.Debug;
import com.oplus.wrapper.os.Trace;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13606f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.oplus.anim.a f13615p;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f13607h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f13608i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f13609j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f13610k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f13611l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f13612m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f13613n = -2.1474836E9f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f13614o = 2.1474836E9f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f13616q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f13617r = false;

    public b() {
        this.f13606f = "";
        try {
            this.f13606f = Debug.getCallers(20);
        } catch (Exception | NoClassDefFoundError unused) {
        }
    }

    private void H() {
        if (this.f13615p == null) {
            return;
        }
        float f10 = this.f13611l;
        if (f10 < this.f13613n || f10 > this.f13614o) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f13613n), Float.valueOf(this.f13614o), Float.valueOf(this.f13611l)));
        }
    }

    private float m() {
        com.oplus.anim.a aVar = this.f13615p;
        if (aVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / aVar.i()) / Math.abs(this.f13607h);
    }

    private boolean q() {
        return p() < 0.0f;
    }

    private void r() {
        try {
            Trace.asyncTraceEnd(Trace.TRACE_TAG_VIEW, "lottie_animator", System.identityHashCode(this));
        } catch (Error | Exception unused) {
        }
    }

    private void s() {
        try {
            long j10 = Trace.TRACE_TAG_VIEW;
            Trace.traceBegin(j10, "AnimatorStart " + this.f13606f);
            Trace.traceEnd(j10);
            Trace.asyncTraceBegin(j10, "lottie_animator", System.identityHashCode(this));
        } catch (Error | Exception unused) {
        }
    }

    public void A(com.oplus.anim.a aVar) {
        boolean z10 = this.f13615p == null;
        this.f13615p = aVar;
        if (z10) {
            D(Math.max(this.f13613n, aVar.p()), Math.min(this.f13614o, aVar.f()));
        } else {
            D((int) aVar.p(), (int) aVar.f());
        }
        float f10 = this.f13611l;
        this.f13611l = 0.0f;
        this.f13610k = 0.0f;
        B((int) f10);
        h();
    }

    public void B(float f10) {
        if (this.f13610k == f10) {
            return;
        }
        float fB = g.b(f10, o(), n());
        this.f13610k = fB;
        if (this.f13617r) {
            fB = (float) Math.floor(fB);
        }
        this.f13611l = fB;
        this.f13609j = 0L;
        h();
    }

    public void C(float f10) {
        D(this.f13613n, f10);
    }

    public void D(float f10, float f11) {
        if (f10 > f11) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
        }
        com.oplus.anim.a aVar = this.f13615p;
        float fP = aVar == null ? -3.4028235E38f : aVar.p();
        com.oplus.anim.a aVar2 = this.f13615p;
        float f12 = aVar2 == null ? Float.MAX_VALUE : aVar2.f();
        float fB = g.b(f10, fP, f12);
        float fB2 = g.b(f11, fP, f12);
        if (fB == this.f13613n && fB2 == this.f13614o) {
            return;
        }
        this.f13613n = fB;
        this.f13614o = fB2;
        B((int) g.b(this.f13611l, fB, fB2));
    }

    public void E(int i10) {
        D(i10, (int) this.f13614o);
    }

    public void F(float f10) {
        this.f13607h = f10;
    }

    public void G(boolean z10) {
        this.f13617r = z10;
    }

    @Override // l6.a
    void a() {
        super.a();
        b(q());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        r();
        a();
        w();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        v();
        if (this.f13615p == null || !isRunning()) {
            return;
        }
        k0.a("LottieValueAnimator#doFrame");
        float fM = (this.f13609j != 0 ? j10 - r1 : 0L) / m();
        float f10 = this.f13610k;
        if (q()) {
            fM = -fM;
        }
        float f11 = f10 + fM;
        boolean zD = g.d(f11, o(), n());
        float f12 = this.f13610k;
        float fB = g.b(f11, o(), n());
        this.f13610k = fB;
        if (this.f13617r) {
            fB = (float) Math.floor(fB);
        }
        this.f13611l = fB;
        this.f13609j = j10;
        if (!this.f13617r || this.f13610k != f12) {
            h();
        }
        if (!zD) {
            if (getRepeatCount() == -1 || this.f13612m < getRepeatCount()) {
                s();
                e();
                this.f13612m++;
                if (getRepeatMode() == 2) {
                    this.f13608i = !this.f13608i;
                    z();
                } else {
                    float fN = q() ? n() : o();
                    this.f13610k = fN;
                    this.f13611l = fN;
                }
                this.f13609j = j10;
            } else {
                float fO = this.f13607h < 0.0f ? o() : n();
                this.f13610k = fO;
                this.f13611l = fO;
                w();
                r();
                b(q());
            }
        }
        H();
        k0.b("LottieValueAnimator#doFrame");
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float fO;
        float fN;
        float fO2;
        if (this.f13615p == null) {
            return 0.0f;
        }
        if (q()) {
            fO = n() - this.f13611l;
            fN = n();
            fO2 = o();
        } else {
            fO = this.f13611l - o();
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
        com.oplus.anim.a aVar = this.f13615p;
        if (aVar == null) {
            return 0L;
        }
        return (long) aVar.d();
    }

    public void i() {
        this.f13615p = null;
        this.f13613n = -2.1474836E9f;
        this.f13614o = 2.1474836E9f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f13616q;
    }

    public void j() {
        w();
        r();
        b(q());
    }

    public float k() {
        com.oplus.anim.a aVar = this.f13615p;
        if (aVar == null) {
            return 0.0f;
        }
        return (this.f13611l - aVar.p()) / (this.f13615p.f() - this.f13615p.p());
    }

    public float l() {
        return this.f13611l;
    }

    public float n() {
        com.oplus.anim.a aVar = this.f13615p;
        if (aVar == null) {
            return 0.0f;
        }
        float f10 = this.f13614o;
        return f10 == 2.1474836E9f ? aVar.f() : f10;
    }

    public float o() {
        com.oplus.anim.a aVar = this.f13615p;
        if (aVar == null) {
            return 0.0f;
        }
        float f10 = this.f13613n;
        return f10 == -2.1474836E9f ? aVar.p() : f10;
    }

    public float p() {
        return this.f13607h;
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f13608i) {
            return;
        }
        this.f13608i = false;
        z();
    }

    public void t() {
        w();
        r();
        d();
    }

    public void u() {
        this.f13616q = true;
        s();
        g(q());
        B((int) (q() ? n() : o()));
        this.f13609j = 0L;
        this.f13612m = 0;
        v();
    }

    protected void v() {
        if (isRunning()) {
            x(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    protected void w() {
        x(true);
    }

    protected void x(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f13616q = false;
        }
    }

    public void y() {
        this.f13616q = true;
        v();
        this.f13609j = 0L;
        if (q() && l() == o()) {
            B(n());
        } else if (!q() && l() == n()) {
            B(o());
        }
        s();
        f();
    }

    public void z() {
        F(-p());
    }
}
