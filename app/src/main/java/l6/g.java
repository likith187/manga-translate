package l6;

import android.graphics.Path;
import android.graphics.PointF;
import c6.k;
import h6.n;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a */
    private static final PointF f13622a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static int c(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }

    public static boolean d(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    private static int e(int i10, int i11) {
        int i12 = i10 / i11;
        return (((i10 ^ i11) >= 0) || i10 % i11 == 0) ? i12 : i12 - 1;
    }

    static int f(float f10, float f11) {
        return g((int) f10, (int) f11);
    }

    private static int g(int i10, int i11) {
        return i10 - (i11 * e(i10, i11));
    }

    public static void h(n nVar, Path path) {
        path.reset();
        PointF pointFB = nVar.b();
        path.moveTo(pointFB.x, pointFB.y);
        f13622a.set(pointFB.x, pointFB.y);
        for (int i10 = 0; i10 < nVar.a().size(); i10++) {
            f6.a aVar = (f6.a) nVar.a().get(i10);
            PointF pointFA = aVar.a();
            PointF pointFB2 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointF = f13622a;
            if (pointFA.equals(pointF) && pointFB2.equals(pointFC)) {
                path.lineTo(pointFC.x, pointFC.y);
            } else {
                path.cubicTo(pointFA.x, pointFA.y, pointFB2.x, pointFB2.y, pointFC.x, pointFC.y);
            }
            pointF.set(pointFC.x, pointFC.y);
        }
        if (nVar.d()) {
            path.close();
        }
    }

    public static float i(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static int j(int i10, int i11, float f10) {
        return (int) (i10 + (f10 * (i11 - i10)));
    }

    public static void k(f6.f fVar, int i10, List list, f6.f fVar2, k kVar) {
        if (fVar.c(kVar.getName(), i10)) {
            list.add(fVar2.a(kVar.getName()).i(kVar));
        }
    }
}
