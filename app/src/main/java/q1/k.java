package q1;

import com.airbnb.lottie.parser.moshi.c;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final c.a f15299f = c.a.a("ef");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final c.a f15300g = c.a.a("nm", "v");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m1.a f15301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m1.b f15302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m1.b f15303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m1.b f15304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private m1.b f15305e;

    private void a(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        cVar.k();
        String strX = "";
        while (cVar.B()) {
            int iV0 = cVar.v0(f15300g);
            if (iV0 == 0) {
                strX = cVar.X();
            } else if (iV0 == 1) {
                strX.hashCode();
                switch (strX) {
                    case "Distance":
                        this.f15304d = d.e(cVar, jVar);
                        break;
                    case "Opacity":
                        this.f15302b = d.f(cVar, jVar, false);
                        break;
                    case "Direction":
                        this.f15303c = d.f(cVar, jVar, false);
                        break;
                    case "Shadow Color":
                        this.f15301a = d.c(cVar, jVar);
                        break;
                    case "Softness":
                        this.f15305e = d.e(cVar, jVar);
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

    j b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        m1.b bVar;
        m1.b bVar2;
        m1.b bVar3;
        m1.b bVar4;
        while (cVar.B()) {
            if (cVar.v0(f15299f) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    a(cVar, jVar);
                }
                cVar.v();
            }
        }
        m1.a aVar = this.f15301a;
        if (aVar == null || (bVar = this.f15302b) == null || (bVar2 = this.f15303c) == null || (bVar3 = this.f15304d) == null || (bVar4 = this.f15305e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}
