package q1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h0 implements n0 {
    public static final h0 INSTANCE = new h0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15290a = c.a.a("c", "v", "i", "o");

    private h0() {
    }

    @Override // q1.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public n1.o a(com.airbnb.lottie.parser.moshi.c cVar, float f10) {
        if (cVar.b0() == c.b.BEGIN_ARRAY) {
            cVar.i();
        }
        cVar.k();
        List listF = null;
        List listF2 = null;
        List listF3 = null;
        boolean zD = false;
        while (cVar.B()) {
            int iV0 = cVar.v0(f15290a);
            if (iV0 == 0) {
                zD = cVar.D();
            } else if (iV0 == 1) {
                listF = s.f(cVar, f10);
            } else if (iV0 == 2) {
                listF2 = s.f(cVar, f10);
            } else if (iV0 != 3) {
                cVar.x0();
                cVar.D0();
            } else {
                listF3 = s.f(cVar, f10);
            }
        }
        cVar.x();
        if (cVar.b0() == c.b.END_ARRAY) {
            cVar.v();
        }
        if (listF == null || listF2 == null || listF3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listF.isEmpty()) {
            return new n1.o(new PointF(), false, Collections.emptyList());
        }
        int size = listF.size();
        PointF pointF = (PointF) listF.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 1; i10 < size; i10++) {
            PointF pointF2 = (PointF) listF.get(i10);
            int i11 = i10 - 1;
            arrayList.add(new l1.a(r1.i.a((PointF) listF.get(i11), (PointF) listF3.get(i11)), r1.i.a(pointF2, (PointF) listF2.get(i10)), pointF2));
        }
        if (zD) {
            PointF pointF3 = (PointF) listF.get(0);
            int i12 = size - 1;
            arrayList.add(new l1.a(r1.i.a((PointF) listF.get(i12), (PointF) listF3.get(i12)), r1.i.a(pointF3, (PointF) listF2.get(0)), pointF3));
        }
        return new n1.o(pointF, zD, arrayList);
    }
}
