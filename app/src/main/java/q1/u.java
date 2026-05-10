package q1;

import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c.a f15325a = c.a.a("k");

    static List a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, float f10, n0 n0Var, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (cVar.b0() == c.b.STRING) {
            jVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        cVar.k();
        while (cVar.B()) {
            if (cVar.v0(f15325a) != 0) {
                cVar.D0();
            } else if (cVar.b0() == c.b.BEGIN_ARRAY) {
                cVar.i();
                if (cVar.b0() == c.b.NUMBER) {
                    arrayList.add(t.c(cVar, jVar, f10, n0Var, false, z10));
                } else {
                    while (cVar.B()) {
                        arrayList.add(t.c(cVar, jVar, f10, n0Var, true, z10));
                    }
                }
                cVar.v();
            } else {
                arrayList.add(t.c(cVar, jVar, f10, n0Var, false, z10));
            }
        }
        cVar.x();
        b(arrayList);
        return arrayList;
    }

    public static void b(List list) {
        int i10;
        Object obj;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            s1.a aVar = (s1.a) list.get(i11);
            i11++;
            s1.a aVar2 = (s1.a) list.get(i11);
            aVar.f15510h = Float.valueOf(aVar2.f15509g);
            if (aVar.f15505c == null && (obj = aVar2.f15504b) != null) {
                aVar.f15505c = obj;
                if (aVar instanceof j1.i) {
                    ((j1.i) aVar).j();
                }
            }
        }
        s1.a aVar3 = (s1.a) list.get(i10);
        if ((aVar3.f15504b == null || aVar3.f15505c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
