package k6;

import com.oplus.anim.parser.moshi.c;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final c.a f12939f = c.a.a("ef");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final c.a f12940g = c.a.a("nm", "v");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g6.a f12941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g6.b f12942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g6.b f12943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g6.b f12944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g6.b f12945e;

    private void a(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        cVar.k();
        String strX = "";
        while (cVar.B()) {
            int iV0 = cVar.v0(f12940g);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                strX.hashCode();
                switch (strX) {
                    case "Distance":
                        this.f12944d = d.e(cVar, aVar);
                        break;
                    case "Opacity":
                        this.f12942b = d.f(cVar, aVar, false);
                        break;
                    case "Direction":
                        this.f12943c = d.f(cVar, aVar, false);
                        break;
                    case "Shadow Color":
                        this.f12941a = d.c(cVar, aVar);
                        break;
                    case "Softness":
                        this.f12945e = d.e(cVar, aVar);
                        break;
                    default:
                        cVar.D0();
                        break;
                }
            } else {
                cVar.x0();
                cVar.D0();
            }
        }
        cVar.x();
    }

    j b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        g6.b bVar;
        g6.b bVar2;
        g6.b bVar3;
        g6.b bVar4;
        while (cVar.B()) {
            if (cVar.v0(f12939f) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    a(cVar, aVar);
                }
                cVar.v();
            }
        }
        g6.a aVar2 = this.f12941a;
        if (aVar2 == null || (bVar = this.f12942b) == null || (bVar2 = this.f12943c) == null || (bVar3 = this.f12944d) == null || (bVar4 = this.f12945e) == null) {
            return null;
        }
        return new j(aVar2, bVar, bVar2, bVar3, bVar4);
    }
}
