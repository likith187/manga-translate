package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import androidx.dynamicanimation.animation.c;

/* JADX INFO: loaded from: classes.dex */
public final class f extends c {
    private g A;
    private float B;
    private boolean C;

    public f(e eVar) {
        super(eVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
    }

    private void w() {
        g gVar = this.A;
        if (gVar == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double dA = gVar.a();
        if (dA > this.f2308g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (dA < this.f2309h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    @Override // androidx.dynamicanimation.animation.c
    void o(float f10) {
    }

    @Override // androidx.dynamicanimation.animation.c
    public void p() {
        w();
        this.A.g(f());
        super.p();
    }

    @Override // androidx.dynamicanimation.animation.c
    boolean r(long j10) {
        if (this.C) {
            float f10 = this.B;
            if (f10 != Float.MAX_VALUE) {
                this.A.e(f10);
                this.B = Float.MAX_VALUE;
            }
            this.f2303b = this.A.a();
            this.f2302a = 0.0f;
            this.C = false;
            return true;
        }
        if (this.B != Float.MAX_VALUE) {
            this.A.a();
            long j11 = j10 / 2;
            c.p pVarH = this.A.h(this.f2303b, this.f2302a, j11);
            this.A.e(this.B);
            this.B = Float.MAX_VALUE;
            c.p pVarH2 = this.A.h(pVarH.f2316a, pVarH.f2317b, j11);
            this.f2303b = pVarH2.f2316a;
            this.f2302a = pVarH2.f2317b;
        } else {
            c.p pVarH3 = this.A.h(this.f2303b, this.f2302a, j10);
            this.f2303b = pVarH3.f2316a;
            this.f2302a = pVarH3.f2317b;
        }
        float fMax = Math.max(this.f2303b, this.f2309h);
        this.f2303b = fMax;
        float fMin = Math.min(fMax, this.f2308g);
        this.f2303b = fMin;
        if (!v(fMin, this.f2302a)) {
            return false;
        }
        this.f2303b = this.A.a();
        this.f2302a = 0.0f;
        return true;
    }

    public void s(float f10) {
        if (g()) {
            this.B = f10;
            return;
        }
        if (this.A == null) {
            this.A = new g(f10);
        }
        this.A.e(f10);
        p();
    }

    public boolean t() {
        return this.A.f2321b > 0.0d;
    }

    public g u() {
        return this.A;
    }

    boolean v(float f10, float f11) {
        return this.A.c(f10, f11);
    }

    public f x(g gVar) {
        this.A = gVar;
        return this;
    }

    public void y() {
        if (!t()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f2307f) {
            this.C = true;
        }
    }

    public f(Object obj, d dVar) {
        super(obj, dVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
    }

    public f(Object obj, d dVar, float f10) {
        super(obj, dVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
        this.A = new g(f10);
    }
}
