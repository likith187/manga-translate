package k6;

import com.oplus.anim.parser.moshi.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12917a = c.a.a("k", "x", "y");

    public static g6.e a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        ArrayList arrayList = new ArrayList();
        if (cVar.b0() == c.b.BEGIN_ARRAY) {
            cVar.i();
            while (cVar.B()) {
                arrayList.add(z.a(cVar, aVar));
            }
            cVar.v();
            v.b(arrayList);
        } else {
            arrayList.add(new m6.c(t.e(cVar, l6.h.e())));
        }
        return new g6.e(arrayList);
    }

    static g6.m b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        cVar.k();
        g6.e eVarA = null;
        g6.b bVarE = null;
        boolean z10 = false;
        g6.b bVarE2 = null;
        while (cVar.b0() != c.b.END_OBJECT) {
            int iV0 = cVar.v0(f12917a);
            if (iV0 == 0) {
                eVarA = a(cVar, aVar);
            } else if (iV0 != 1) {
                if (iV0 != 2) {
                    cVar.x0();
                    cVar.D0();
                } else if (cVar.b0() == c.b.STRING) {
                    cVar.D0();
                    z10 = true;
                } else {
                    bVarE = d.e(cVar, aVar);
                }
            } else if (cVar.b0() == c.b.STRING) {
                cVar.D0();
                z10 = true;
            } else {
                bVarE2 = d.e(cVar, aVar);
            }
        }
        cVar.x();
        if (z10) {
            aVar.a("EffectiveAnimation doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new g6.i(bVarE2, bVarE);
    }
}
