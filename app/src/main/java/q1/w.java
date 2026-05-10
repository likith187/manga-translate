package q1;

import android.graphics.Rect;
import com.airbnb.lottie.parser.moshi.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15330a = c.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static c.a f15331b = c.a.a("id", "layers", "w", "h", "p", "u");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c.a f15332c = c.a.a("list");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c.a f15333d = c.a.a("cm", "tm", "dr");

    public static com.airbnb.lottie.j a(com.airbnb.lottie.parser.moshi.c cVar) {
        HashMap map;
        ArrayList arrayList;
        com.airbnb.lottie.parser.moshi.c cVar2 = cVar;
        float fE = r1.j.e();
        androidx.collection.f fVar = new androidx.collection.f();
        ArrayList arrayList2 = new ArrayList();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        androidx.collection.j jVar = new androidx.collection.j();
        com.airbnb.lottie.j jVar2 = new com.airbnb.lottie.j();
        cVar.k();
        float fG = 0.0f;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        int I = 0;
        int I2 = 0;
        while (cVar.B()) {
            switch (cVar2.v0(f15330a)) {
                case 0:
                    I = cVar.I();
                    continue;
                    cVar2 = cVar;
                    break;
                case 1:
                    I2 = cVar.I();
                    continue;
                    cVar2 = cVar;
                    break;
                case 2:
                    fG = (float) cVar.G();
                    continue;
                    cVar2 = cVar;
                    break;
                case 3:
                    map = map4;
                    arrayList = arrayList3;
                    fG2 = ((float) cVar.G()) - 0.01f;
                    break;
                case 4:
                    map = map4;
                    arrayList = arrayList3;
                    fG3 = (float) cVar.G();
                    break;
                case 5:
                    String[] strArrSplit = cVar.X().split("\\.");
                    if (!r1.j.j(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        jVar2.a("Lottie only supports bodymovin >= 4.4.0");
                        continue;
                    }
                    cVar2 = cVar;
                    break;
                case 6:
                    e(cVar2, jVar2, arrayList2, fVar);
                    continue;
                    cVar2 = cVar;
                    break;
                case 7:
                    b(cVar2, jVar2, map2, map3);
                    continue;
                    cVar2 = cVar;
                    break;
                case 8:
                    d(cVar2, map4);
                    continue;
                    cVar2 = cVar;
                    break;
                case 9:
                    c(cVar2, jVar2, jVar);
                    continue;
                    cVar2 = cVar;
                    break;
                case 10:
                    f(cVar2, arrayList3);
                    continue;
                    cVar2 = cVar;
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    continue;
                    cVar2 = cVar;
                    break;
            }
            map4 = map;
            arrayList3 = arrayList;
            cVar2 = cVar;
        }
        jVar2.s(new Rect(0, 0, (int) (I * fE), (int) (I2 * fE)), fG, fG2, fG3, arrayList2, fVar, map2, map3, r1.j.e(), jVar, map4, arrayList3);
        return jVar2;
    }

    private static void b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, Map map, Map map2) {
        cVar.i();
        while (cVar.B()) {
            ArrayList arrayList = new ArrayList();
            androidx.collection.f fVar = new androidx.collection.f();
            cVar.k();
            int I = 0;
            int I2 = 0;
            String strX = null;
            String strX2 = null;
            String strX3 = null;
            while (cVar.B()) {
                int iV0 = cVar.v0(f15331b);
                if (iV0 == 0) {
                    strX = cVar.X();
                } else if (iV0 == 1) {
                    cVar.i();
                    while (cVar.B()) {
                        o1.e eVarB = v.b(cVar, jVar);
                        fVar.i(eVarB.e(), eVarB);
                        arrayList.add(eVarB);
                    }
                    cVar.v();
                } else if (iV0 == 2) {
                    I = cVar.I();
                } else if (iV0 == 3) {
                    I2 = cVar.I();
                } else if (iV0 == 4) {
                    strX2 = cVar.X();
                } else if (iV0 != 5) {
                    cVar.x0();
                    cVar.D0();
                } else {
                    strX3 = cVar.X();
                }
            }
            cVar.x();
            if (strX2 != null) {
                com.airbnb.lottie.j0 j0Var = new com.airbnb.lottie.j0(I, I2, strX, strX2, strX3);
                map2.put(j0Var.e(), j0Var);
            } else {
                map.put(strX, arrayList);
            }
        }
        cVar.v();
    }

    private static void c(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, androidx.collection.j jVar2) {
        cVar.i();
        while (cVar.B()) {
            l1.d dVarA = m.a(cVar, jVar);
            jVar2.h(dVarA.hashCode(), dVarA);
        }
        cVar.v();
    }

    private static void d(com.airbnb.lottie.parser.moshi.c cVar, Map map) {
        cVar.k();
        while (cVar.B()) {
            if (cVar.v0(f15332c) != 0) {
                cVar.x0();
                cVar.D0();
            } else {
                cVar.i();
                while (cVar.B()) {
                    l1.c cVarA = n.a(cVar);
                    map.put(cVarA.b(), cVarA);
                }
                cVar.v();
            }
        }
        cVar.x();
    }

    private static void e(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar, List list, androidx.collection.f fVar) {
        cVar.i();
        int i10 = 0;
        while (cVar.B()) {
            o1.e eVarB = v.b(cVar, jVar);
            if (eVarB.g() == e.a.IMAGE) {
                i10++;
            }
            list.add(eVarB);
            fVar.i(eVarB.e(), eVarB);
            if (i10 > 4) {
                r1.d.c("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        cVar.v();
    }

    private static void f(com.airbnb.lottie.parser.moshi.c cVar, List list) {
        cVar.i();
        while (cVar.B()) {
            cVar.k();
            float fG = 0.0f;
            String strX = null;
            float fG2 = 0.0f;
            while (cVar.B()) {
                int iV0 = cVar.v0(f15333d);
                if (iV0 == 0) {
                    strX = cVar.X();
                } else if (iV0 == 1) {
                    fG = (float) cVar.G();
                } else if (iV0 != 2) {
                    cVar.x0();
                    cVar.D0();
                } else {
                    fG2 = (float) cVar.G();
                }
            }
            cVar.x();
            list.add(new l1.h(strX, fG, fG2));
        }
        cVar.v();
    }
}
