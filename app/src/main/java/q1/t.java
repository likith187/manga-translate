package q1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.airbnb.lottie.parser.moshi.c;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
abstract class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static androidx.collection.j f15322b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Interpolator f15321a = new LinearInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static c.a f15323c = c.a.a("t", "s", "e", "o", "i", "h", "to", "ti");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static c.a f15324d = c.a.a("x", "y");

    private static WeakReference a(int i10) {
        WeakReference weakReference;
        synchronized (t.class) {
            weakReference = (WeakReference) g().e(i10);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorA;
        pointF.x = r1.i.b(pointF.x, -1.0f, 1.0f);
        pointF.y = r1.i.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = r1.i.b(pointF2.x, -1.0f, 1.0f);
        float fB = r1.i.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        int i10 = r1.j.i(pointF.x, pointF.y, pointF2.x, fB);
        WeakReference weakReferenceA = com.airbnb.lottie.e.e() ? null : a(i10);
        Interpolator interpolator = weakReferenceA != null ? (Interpolator) weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorA = e0.a.a(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorA = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? e0.a.a(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorA;
            if (!com.airbnb.lottie.e.e()) {
                try {
                    h(i10, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    static s1.a c(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, float f10, n0 n0Var, boolean z10, boolean z11) {
        return (z10 && z11) ? e(jVar, cVar, f10, n0Var) : z10 ? d(jVar, cVar, f10, n0Var) : f(cVar, f10, n0Var);
    }

    private static s1.a d(com.airbnb.lottie.j jVar, com.airbnb.lottie.parser.moshi.c cVar, float f10, n0 n0Var) {
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
            switch (cVar.v0(f15323c)) {
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
                    pointFE = s.e(cVar, 1.0f);
                    break;
                case 4:
                    pointFE4 = s.e(cVar, 1.0f);
                    break;
                case 5:
                    z10 = cVar.I() == 1;
                    break;
                case 6:
                    pointFE2 = s.e(cVar, f10);
                    break;
                case 7:
                    pointFE3 = s.e(cVar, f10);
                    break;
                default:
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        if (z10) {
            interpolatorB = f15321a;
            obj = objA2;
        } else {
            interpolatorB = (pointFE == null || pointFE4 == null) ? f15321a : b(pointFE, pointFE4);
            obj = objA;
        }
        s1.a aVar = new s1.a(jVar, objA2, obj, interpolatorB, fG, null);
        aVar.f15517o = pointFE2;
        aVar.f15518p = pointFE3;
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static s1.a e(com.airbnb.lottie.j r21, com.airbnb.lottie.parser.moshi.c r22, float r23, q1.n0 r24) {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.t.e(com.airbnb.lottie.j, com.airbnb.lottie.parser.moshi.c, float, q1.n0):s1.a");
    }

    private static s1.a f(com.airbnb.lottie.parser.moshi.c cVar, float f10, n0 n0Var) {
        return new s1.a(n0Var.a(cVar, f10));
    }

    private static androidx.collection.j g() {
        if (f15322b == null) {
            f15322b = new androidx.collection.j();
        }
        return f15322b;
    }

    private static void h(int i10, WeakReference weakReference) {
        synchronized (t.class) {
            f15322b.h(i10, weakReference);
        }
    }
}
