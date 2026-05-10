package j1;

import android.graphics.PointF;
import j1.a;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class n extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f12721i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final PointF f12722j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a f12723k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a f12724l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected s1.c f12725m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected s1.c f12726n;

    public n(a aVar, a aVar2) {
        super(Collections.emptyList());
        this.f12721i = new PointF();
        this.f12722j = new PointF();
        this.f12723k = aVar;
        this.f12724l = aVar2;
        n(f());
    }

    @Override // j1.a
    public void n(float f10) {
        this.f12723k.n(f10);
        this.f12724l.n(f10);
        this.f12721i.set(((Float) this.f12723k.h()).floatValue(), ((Float) this.f12724l.h()).floatValue());
        for (int i10 = 0; i10 < this.f12681a.size(); i10++) {
            ((a.b) this.f12681a.get(i10)).c();
        }
    }

    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j1.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public PointF i(s1.a aVar, float f10) {
        Float f11;
        s1.a aVarB;
        s1.a aVarB2;
        Float f12 = null;
        if (this.f12725m == null || (aVarB2 = this.f12723k.b()) == null) {
            f11 = null;
        } else {
            float fD = this.f12723k.d();
            Float f13 = aVarB2.f15510h;
            s1.c cVar = this.f12725m;
            float f14 = aVarB2.f15509g;
            f11 = (Float) cVar.b(f14, f13 == null ? f14 : f13.floatValue(), (Float) aVarB2.f15504b, (Float) aVarB2.f15505c, f10, f10, fD);
        }
        if (this.f12726n != null && (aVarB = this.f12724l.b()) != null) {
            float fD2 = this.f12724l.d();
            Float f15 = aVarB.f15510h;
            s1.c cVar2 = this.f12726n;
            float f16 = aVarB.f15509g;
            f12 = (Float) cVar2.b(f16, f15 == null ? f16 : f15.floatValue(), (Float) aVarB.f15504b, (Float) aVarB.f15505c, f10, f10, fD2);
        }
        if (f11 == null) {
            this.f12722j.set(this.f12721i.x, 0.0f);
        } else {
            this.f12722j.set(f11.floatValue(), 0.0f);
        }
        if (f12 == null) {
            PointF pointF = this.f12722j;
            pointF.set(pointF.x, this.f12721i.y);
        } else {
            PointF pointF2 = this.f12722j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f12722j;
    }

    public void s(s1.c cVar) {
        s1.c cVar2 = this.f12725m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f12725m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void t(s1.c cVar) {
        s1.c cVar2 = this.f12726n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f12726n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
