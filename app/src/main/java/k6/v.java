package k6;

import com.oplus.anim.parser.moshi.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c.a f12969a = c.a.a("k");

    static List a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar, float f10, n0 n0Var, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (cVar.b0() == c.b.STRING) {
            aVar.a("Effective doesn't support expressions.");
            return arrayList;
        }
        cVar.k();
        while (cVar.B()) {
            if (cVar.v0(f12969a) != 0) {
                cVar.D0();
            } else if (cVar.b0() == c.b.BEGIN_ARRAY) {
                cVar.i();
                if (cVar.b0() == c.b.NUMBER) {
                    arrayList.add(u.c(cVar, aVar, f10, n0Var, false, z10));
                } else {
                    while (cVar.B()) {
                        arrayList.add(u.c(cVar, aVar, f10, n0Var, true, z10));
                    }
                }
                cVar.v();
            } else {
                arrayList.add(u.c(cVar, aVar, f10, n0Var, false, z10));
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
            m6.c cVar = (m6.c) list.get(i11);
            i11++;
            m6.c cVar2 = (m6.c) list.get(i11);
            cVar.f13853h = Float.valueOf(cVar2.f13852g);
            if (cVar.f13848c == null && (obj = cVar2.f13847b) != null) {
                cVar.f13848c = obj;
                if (cVar instanceof d6.i) {
                    ((d6.i) cVar).j();
                }
            }
        }
        m6.c cVar3 = (m6.c) list.get(i10);
        if ((cVar3.f13847b == null || cVar3.f13848c == null) && list.size() > 1) {
            list.remove(cVar3);
        }
    }
}
