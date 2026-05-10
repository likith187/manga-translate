package q;

import androidx.constraintlayout.motion.widget.n;
import m.k;
import m.m;

/* JADX INFO: loaded from: classes.dex */
public class b extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m.n f15253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f15254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m f15255c;

    public b() {
        m.n nVar = new m.n();
        this.f15253a = nVar;
        this.f15255c = nVar;
    }

    @Override // androidx.constraintlayout.motion.widget.n
    public float a() {
        return this.f15255c.b();
    }

    public void b(float f10, float f11, float f12, float f13, float f14, float f15) {
        m.n nVar = this.f15253a;
        this.f15255c = nVar;
        nVar.d(f10, f11, f12, f13, f14, f15);
    }

    public boolean c() {
        return this.f15255c.a();
    }

    public void d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i10) {
        if (this.f15254b == null) {
            this.f15254b = new k();
        }
        k kVar = this.f15254b;
        this.f15255c = kVar;
        kVar.d(f10, f11, f12, f13, f14, f15, f16, i10);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        return this.f15255c.getInterpolation(f10);
    }
}
