package defpackage;

import android.animation.TimeInterpolator;
import b9.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f2a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f3b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f6e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f8g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f9h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f10i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f11j;

    public a(Float f10) {
        this.f2a = f10 != null ? new b(f10.floatValue()) : null;
        this.f3b = Float.MAX_VALUE;
        this.f8g = -3.4028235E38f;
        this.f9h = Float.MAX_VALUE;
    }

    public final float a() {
        return this.f6e;
    }

    public final boolean b(float f10, float f11) {
        b bVar = this.f2a;
        r.b(bVar);
        return bVar.d(f10, f11);
    }

    public final void c() {
        e(0.0f);
        f(this.f11j);
        g();
    }

    public final a d(b force) {
        r.e(force, "force");
        this.f2a = force;
        return this;
    }

    public final a e(float f10) {
        this.f6e = f10;
        return this;
    }

    public final a f(float f10) {
        this.f7f = f10;
        this.f11j = f10;
        return this;
    }

    public final void g() {
        b bVar = this.f2a;
        if (bVar == null) {
            throw new IllegalArgumentException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        r.b(bVar);
        float fB = bVar.b();
        if (fB > this.f9h) {
            throw new IllegalArgumentException("Final position of the spring cannot be greater than the max value.");
        }
        if (fB < this.f8g) {
            throw new IllegalArgumentException("Final position of the spring cannot be less than the min value.");
        }
        b bVar2 = this.f2a;
        r.b(bVar2);
        if (bVar2.a() < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f5d = true;
        this.f10i = 0.0f;
        e(0.0f);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        h(f10 - this.f10i);
        this.f10i = f10;
        return this.f6e / 100.0f;
    }

    public final boolean h(float f10) {
        c cVarH;
        if (this.f4c) {
            if (this.f3b != Float.MAX_VALUE) {
                b bVar = this.f2a;
                r.b(bVar);
                bVar.f(this.f3b);
                this.f3b = Float.MAX_VALUE;
            }
            b bVar2 = this.f2a;
            r.b(bVar2);
            this.f6e = bVar2.b();
            this.f7f = 0.0f;
            this.f4c = false;
            return true;
        }
        if (this.f3b == Float.MAX_VALUE) {
            b bVar3 = this.f2a;
            r.b(bVar3);
            cVarH = bVar3.h(this.f6e, this.f7f, f10);
        } else {
            b bVar4 = this.f2a;
            r.b(bVar4);
            float f11 = f10 / 2;
            c cVarH2 = bVar4.h(this.f6e, this.f7f, f11);
            b bVar5 = this.f2a;
            r.b(bVar5);
            bVar5.f(this.f3b);
            this.f3b = Float.MAX_VALUE;
            b bVar6 = this.f2a;
            r.b(bVar6);
            cVarH = bVar6.h(cVarH2.b(), cVarH2.c(), f11);
        }
        this.f6e = d.g(cVarH.b(), this.f8g, this.f9h);
        float fC = cVarH.c();
        this.f7f = fC;
        if (!b(this.f6e, fC)) {
            return false;
        }
        b bVar7 = this.f2a;
        r.b(bVar7);
        this.f6e = bVar7.b();
        this.f7f = 0.0f;
        return true;
    }

    public /* synthetic */ a(Float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : f10);
    }
}
