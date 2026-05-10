package q1;

import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15277a = c.a.a("k", "x", "y");

    public static m1.e a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        ArrayList arrayList = new ArrayList();
        if (cVar.b0() == c.b.BEGIN_ARRAY) {
            cVar.i();
            while (cVar.B()) {
                arrayList.add(z.a(cVar, jVar));
            }
            cVar.v();
            u.b(arrayList);
        } else {
            arrayList.add(new s1.a(s.e(cVar, r1.j.e())));
        }
        return new m1.e(arrayList);
    }

    static m1.m b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        cVar.k();
        m1.e eVarA = null;
        m1.b bVarE = null;
        boolean z10 = false;
        m1.b bVarE2 = null;
        while (cVar.b0() != c.b.END_OBJECT) {
            int iV0 = cVar.v0(f15277a);
            if (iV0 == 0) {
                eVarA = a(cVar, jVar);
            } else if (iV0 != 1) {
                if (iV0 != 2) {
                    cVar.x0();
                    cVar.D0();
                } else if (cVar.b0() == c.b.STRING) {
                    cVar.D0();
                    z10 = true;
                } else {
                    bVarE = d.e(cVar, jVar);
                }
            } else if (cVar.b0() == c.b.STRING) {
                cVar.D0();
                z10 = true;
            } else {
                bVarE2 = d.e(cVar, jVar);
            }
        }
        cVar.x();
        if (z10) {
            jVar.a("Lottie doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new m1.i(bVarE2, bVarE);
    }
}
