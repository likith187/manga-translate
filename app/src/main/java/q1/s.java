package q1;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15319a = c.a.a("x", "y");

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15320a;

        static {
            int[] iArr = new int[c.b.values().length];
            f15320a = iArr;
            try {
                iArr[c.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15320a[c.b.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15320a[c.b.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        cVar.i();
        float fG = (float) cVar.G();
        float fG2 = (float) cVar.G();
        while (cVar.b0() != c.b.END_ARRAY) {
            cVar.D0();
        }
        cVar.v();
        return new PointF(fG * f10, fG2 * f10);
    }

    private static PointF b(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        float fG = (float) cVar.G();
        float fG2 = (float) cVar.G();
        while (cVar.B()) {
            cVar.D0();
        }
        return new PointF(fG * f10, fG2 * f10);
    }

    private static PointF c(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        cVar.k();
        float fG = 0.0f;
        float fG2 = 0.0f;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15319a);
            if (iV0 == 0) {
                fG = g(cVar);
            } else if (iV0 != 1) {
                cVar.x0();
                cVar.D0();
            } else {
                fG2 = g(cVar);
            }
        }
        cVar.x();
        return new PointF(fG * f10, fG2 * f10);
    }

    static int d(com.airbnb.lottie.parser.moshi.c cVar) {
        cVar.i();
        int iG = (int) (cVar.G() * 255.0d);
        int iG2 = (int) (cVar.G() * 255.0d);
        int iG3 = (int) (cVar.G() * 255.0d);
        while (cVar.B()) {
            cVar.D0();
        }
        cVar.v();
        return Color.argb(255, iG, iG2, iG3);
    }

    static PointF e(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        int i10 = a.f15320a[cVar.b0().ordinal()];
        if (i10 == 1) {
            return b(cVar, f10);
        }
        if (i10 == 2) {
            return a(cVar, f10);
        }
        if (i10 == 3) {
            return c(cVar, f10);
        }
        throw new IllegalArgumentException("Unknown point starts with " + cVar.b0());
    }

    static List f(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        ArrayList arrayList = new ArrayList();
        cVar.i();
        while (cVar.b0() == c.b.BEGIN_ARRAY) {
            cVar.i();
            arrayList.add(e(cVar, f10));
            cVar.v();
        }
        cVar.v();
        return arrayList;
    }

    static float g(com.airbnb.lottie.parser.moshi.c cVar) {
        c.b bVarB0 = cVar.b0();
        int i10 = a.f15320a[bVarB0.ordinal()];
        if (i10 == 1) {
            return (float) cVar.G();
        }
        if (i10 != 2) {
            throw new IllegalArgumentException("Unknown value for token of type " + bVarB0);
        }
        cVar.i();
        float fG = (float) cVar.G();
        while (cVar.B()) {
            cVar.D0();
        }
        cVar.v();
        return fG;
    }
}
