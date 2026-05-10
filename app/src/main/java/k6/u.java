package k6;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.oplus.anim.parser.moshi.c;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
abstract class u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static androidx.collection.j f12966b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Interpolator f12965a = new LinearInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static c.a f12967c = c.a.a("t", "s", "e", "o", "i", "h", "to", "ti");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static c.a f12968d = c.a.a("x", "y");

    private static WeakReference a(int i10) {
        WeakReference weakReference;
        synchronized (u.class) {
            weakReference = (WeakReference) g().e(i10);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorA;
        pointF.x = l6.g.b(pointF.x, -1.0f, 1.0f);
        pointF.y = l6.g.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = l6.g.b(pointF2.x, -1.0f, 1.0f);
        float fB = l6.g.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        int i10 = l6.h.i(pointF.x, pointF.y, pointF2.x, fB);
        WeakReference weakReferenceA = a(i10);
        Interpolator interpolator = weakReferenceA != null ? (Interpolator) weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorA = e0.a.a(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorA = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? e0.a.a(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorA;
            try {
                h(i10, new WeakReference(interpolator));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return interpolator;
    }

    static m6.c c(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, float f10, n0 n0Var, boolean z10, boolean z11) {
        return (z10 && z11) ? e(aVar, cVar, f10, n0Var) : z10 ? d(aVar, cVar, f10, n0Var) : f(cVar, f10, n0Var);
    }

    private static m6.c d(com.oplus.anim.a aVar, com.oplus.anim.parser.moshi.c cVar, float f10, n0 n0Var) {
        Interpolator interpolatorB;
        Object obj;
        cVar.k();
        PointF pointFE = null;
        Object objA = null;
        Object objA2 = null;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        float fG = 0.0f;
        boolean z10 = false;
        PointF pointFE4 = null;
        while (cVar.B()) {
            switch (cVar.v0(f12967c)) {
                case 0:
                    fG = (float) cVar.G();
                    break;
                case 1:
                    objA2 = n0Var.a(cVar, f10);
                    break;
                case 2:
                    objA = n0Var.a(cVar, f10);
                    break;
                case 3:
                    pointFE = t.e(cVar, 1.0f);
                    break;
                case 4:
                    pointFE4 = t.e(cVar, 1.0f);
                    break;
                case 5:
                    z10 = cVar.I() == 1;
                    break;
                case 6:
                    pointFE2 = t.e(cVar, f10);
                    break;
                case 7:
                    pointFE3 = t.e(cVar, f10);
                    break;
                default:
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        if (z10) {
            interpolatorB = f12965a;
            obj = objA2;
        } else {
            interpolatorB = (pointFE == null || pointFE4 == null) ? f12965a : b(pointFE, pointFE4);
            obj = objA;
        }
        m6.c cVar2 = new m6.c(aVar, objA2, obj, interpolatorB, fG, null);
        cVar2.f13860o = pointFE2;
        cVar2.f13861p = pointFE3;
        return cVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static m6.c e(com.oplus.anim.a r21, com.oplus.anim.parser.moshi.c r22, float r23, k6.n0 r24) {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.u.e(com.oplus.anim.a, com.oplus.anim.parser.moshi.c, float, k6.n0):m6.c");
    }

    private static m6.c f(com.oplus.anim.parser.moshi.c cVar, float f10, n0 n0Var) {
        return new m6.c(n0Var.a(cVar, f10));
    }

    private static androidx.collection.j g() {
        if (f12966b == null) {
            f12966b = new androidx.collection.j();
        }
        return f12966b;
    }

    private static void h(int i10, WeakReference weakReference) {
        synchronized (u.class) {
            f12966b.h(i10, weakReference);
        }
    }
}
