package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12924a = c.a.a("ef");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f12925b = c.a.a("ty", "v");

    private static h6.a a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        cVar.k();
        h6.a aVar2 = null;
        while (true) {
            boolean z10 = false;
            while (cVar.B()) {
                int iV0 = cVar.v0(f12925b);
                if (iV0 != 0) {
                    if (iV0 != 1) {
                        cVar.x0();
                        cVar.D0();
                    } else if (z10) {
                        aVar2 = new h6.a(d.e(cVar, aVar));
                    } else {
                        cVar.D0();
                    }
                } else if (cVar.I() == 0) {
                    z10 = true;
                }
            }
            cVar.x();
            return aVar2;
        }
    }

    static h6.a b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        h6.a aVar2 = null;
        while (cVar.B()) {
            if (cVar.v0(f12924a) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    h6.a aVarA = a(cVar, aVar);
                    if (aVarA != null) {
                        aVar2 = aVarA;
                    }
                }
                cVar.v();
            }
        }
        return aVar2;
    }
}
