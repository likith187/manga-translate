package d7;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public class i extends g {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f11635w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f11636x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11637y;

    public i(int i10, float f10, float f11) {
        this(i10, new RectF(f10, f10, f11, f11));
    }

    @Override // d7.g, d7.d
    protected void C() {
        super.C();
        float f10 = this.f11636x;
        if (f10 != 0.0f) {
            b7.a aVar = this.f11613k;
            this.f11635w = aVar.f4250t;
            aVar.n(f10);
            b7.a aVar2 = this.f11623p;
            if (aVar2 != null) {
                aVar2.n(this.f11636x);
            }
        }
    }

    @Override // d7.g, d7.d
    protected boolean D() {
        float f10 = this.f11635w;
        if (f10 != 0.0f) {
            this.f11613k.n(f10);
            b7.a aVar = this.f11623p;
            if (aVar != null) {
                aVar.n(this.f11635w);
            }
        }
        return super.D();
    }

    @Override // d7.d
    protected void I() {
        if (this.f11637y) {
            return;
        }
        super.I();
    }

    public void k0(float f10, float f11) {
        l0(new RectF(f10, f10, f11, f11));
    }

    public void l0(RectF rectF) {
        super.i0(rectF);
    }

    public i m0(float f10) {
        this.f11636x = f10;
        return this;
    }

    public void n0() {
        C();
    }

    public void o0(float f10) {
        p0(f10, 0.0f);
    }

    public void p0(float f10, float f11) {
        if (a7.b.b()) {
            a7.b.c("FlingBehavior : Fling : start : xVel =:" + f10 + ",yVel =:" + f11);
        }
        this.f11637y = true;
        this.f11613k.d().d(a7.a.d(f10), a7.a.d(f11));
        n0();
        this.f11637y = false;
    }

    public void q0() {
        D();
    }

    @Override // d7.d
    public int s() {
        return 2;
    }

    public i(int i10, RectF rectF) {
        super(i10, rectF);
        this.f11635w = 0.0f;
        this.f11636x = 0.0f;
        this.f11637y = false;
    }
}
