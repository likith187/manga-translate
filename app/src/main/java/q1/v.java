package q1;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.parser.moshi.c;
import com.coloros.translate.repository.local.TextHistory;
import com.coui.appcompat.version.COUIVersionUtil;
import java.util.ArrayList;
import java.util.Collections;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f15326a = c.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd", "ao", "bm");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f15327b = c.a.a("d", "a");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c.a f15328c = c.a.a("ty", "nm");

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15329a;

        static {
            int[] iArr = new int[e.b.values().length];
            f15329a = iArr;
            try {
                iArr[e.b.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15329a[e.b.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static o1.e a(com.airbnb.lottie.j jVar) {
        Rect rectB = jVar.b();
        return new o1.e(Collections.emptyList(), jVar, "__container", -1L, e.a.PRE_COMP, -1L, null, Collections.emptyList(), new m1.l(), 0, 0, 0, 0.0f, 0.0f, rectB.width(), rectB.height(), null, null, Collections.emptyList(), e.b.NONE, null, false, null, null, n1.h.NORMAL);
    }

    public static o1.e b(com.airbnb.lottie.parser.moshi.c cVar, com.airbnb.lottie.j jVar) {
        ArrayList arrayList;
        boolean z10;
        float f10;
        e.b bVar = e.b.NONE;
        n1.h hVar = n1.h.NORMAL;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        cVar.k();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        e.b bVar2 = bVar;
        n1.h hVar2 = hVar;
        e.a aVar = null;
        String strX = null;
        m1.j jVarD = null;
        m1.k kVarA = null;
        m1.b bVarF = null;
        n1.a aVarB = null;
        j jVarB = null;
        long jI = 0;
        boolean z11 = false;
        int I = 0;
        int I2 = 0;
        int color = 0;
        boolean zD = false;
        float fG = 0.0f;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        float fG4 = 0.0f;
        float f11 = 0.0f;
        long jI2 = -1;
        float fG5 = 1.0f;
        String strX2 = "UNSET";
        String strX3 = null;
        m1.l lVar = null;
        while (cVar.B()) {
            switch (cVar.v0(f15326a)) {
                case 0:
                    strX2 = cVar.X();
                    break;
                case 1:
                    jI = cVar.I();
                    break;
                case 2:
                    strX = cVar.X();
                    break;
                case 3:
                    int I3 = cVar.I();
                    aVar = e.a.UNKNOWN;
                    if (I3 < aVar.ordinal()) {
                        aVar = e.a.values()[I3];
                    }
                    break;
                case 4:
                    jI2 = cVar.I();
                    break;
                case 5:
                    I = (int) (cVar.I() * r1.j.e());
                    break;
                case 6:
                    I2 = (int) (cVar.I() * r1.j.e());
                    break;
                case 7:
                    color = Color.parseColor(cVar.X());
                    break;
                case 8:
                    lVar = c.g(cVar, jVar);
                    break;
                case 9:
                    int I4 = cVar.I();
                    if (I4 < e.b.values().length) {
                        bVar2 = e.b.values()[I4];
                        int i10 = a.f15329a[bVar2.ordinal()];
                        if (i10 == 1) {
                            jVar.a("Unsupported matte type: Luma");
                        } else if (i10 == 2) {
                            jVar.a("Unsupported matte type: Luma Inverted");
                        }
                        jVar.r(1);
                    } else {
                        jVar.a("Unsupported matte type: " + I4);
                    }
                    break;
                case 10:
                    cVar.i();
                    while (cVar.B()) {
                        arrayList2.add(x.a(cVar, jVar));
                    }
                    jVar.r(arrayList2.size());
                    cVar.v();
                    break;
                case 11:
                    cVar.i();
                    while (cVar.B()) {
                        n1.c cVarA = h.a(cVar, jVar);
                        if (cVarA != null) {
                            arrayList3.add(cVarA);
                        }
                    }
                    cVar.v();
                    break;
                case 12:
                    cVar.k();
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f15327b);
                        if (iV0 == 0) {
                            jVarD = d.d(cVar, jVar);
                        } else if (iV0 != 1) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            cVar.i();
                            if (cVar.B()) {
                                kVarA = b.a(cVar, jVar);
                            }
                            while (cVar.B()) {
                                cVar.D0();
                            }
                            cVar.v();
                        }
                    }
                    cVar.x();
                    break;
                case 13:
                    cVar.i();
                    ArrayList arrayList4 = new ArrayList();
                    while (cVar.B()) {
                        cVar.k();
                        while (cVar.B()) {
                            int iV02 = cVar.v0(f15328c);
                            if (iV02 == 0) {
                                int I5 = cVar.I();
                                if (I5 == 29) {
                                    aVarB = e.b(cVar, jVar);
                                } else if (I5 == 25) {
                                    jVarB = new k().b(cVar, jVar);
                                }
                            } else if (iV02 != 1) {
                                cVar.x0();
                                cVar.D0();
                            } else {
                                arrayList4.add(cVar.X());
                            }
                        }
                        cVar.x();
                    }
                    cVar.v();
                    jVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList4);
                    break;
                case 14:
                    fG5 = (float) cVar.G();
                    break;
                case 15:
                    fG2 = (float) cVar.G();
                    break;
                case 16:
                    fG3 = (float) (cVar.G() * ((double) r1.j.e()));
                    break;
                case 17:
                    fG4 = (float) (cVar.G() * ((double) r1.j.e()));
                    break;
                case 18:
                    fG = (float) cVar.G();
                    break;
                case 19:
                    f11 = (float) cVar.G();
                    break;
                case 20:
                    bVarF = d.f(cVar, jVar, false);
                    break;
                case COUIVersionUtil.COUI_8_2 /* 21 */:
                    strX3 = cVar.X();
                    break;
                case 22:
                    zD = cVar.D();
                    break;
                case 23:
                    z11 = cVar.I() == 1;
                    break;
                case 24:
                    int I6 = cVar.I();
                    if (I6 < n1.h.values().length) {
                        hVar2 = n1.h.values()[I6];
                    } else {
                        jVar.a("Unsupported Blend Mode: " + I6);
                        hVar2 = n1.h.NORMAL;
                    }
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        ArrayList arrayList5 = new ArrayList();
        if (fG > 0.0f) {
            arrayList = arrayList2;
            z10 = z11;
            arrayList5.add(new s1.a(jVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fG)));
            f10 = 0.0f;
        } else {
            arrayList = arrayList2;
            z10 = z11;
            f10 = 0.0f;
        }
        if (f11 <= f10) {
            f11 = jVar.f();
        }
        arrayList5.add(new s1.a(jVar, fValueOf2, fValueOf2, null, fG, Float.valueOf(f11)));
        arrayList5.add(new s1.a(jVar, fValueOf, fValueOf, null, f11, Float.valueOf(Float.MAX_VALUE)));
        if (strX2.endsWith(".ai") || TextHistory.AI_RESULT.equals(strX3)) {
            jVar.a("Convert your Illustrator layers to shape layers.");
        }
        if (z10) {
            if (lVar == null) {
                lVar = new m1.l();
            }
            lVar.m(z10);
        }
        return new o1.e(arrayList3, jVar, strX2, jI, aVar, jI2, strX, arrayList, lVar, I, I2, color, fG5, fG2, fG3, fG4, jVarD, kVarA, arrayList5, bVar2, bVarF, zD, aVarB, jVarB, hVar2);
    }
}
