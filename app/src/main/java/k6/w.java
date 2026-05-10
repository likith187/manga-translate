package k6;

import android.graphics.Color;
import android.graphics.Rect;
import com.coloros.translate.repository.local.TextHistory;
import com.coui.appcompat.version.COUIVersionUtil;
import com.oplus.anim.parser.moshi.c;
import i6.e;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12970a = c.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.a f12971b = c.a.a("d", "a");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c.a f12972c = c.a.a("ty", "nm");

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12973a;

        static {
            int[] iArr = new int[e.b.values().length];
            f12973a = iArr;
            try {
                iArr[e.b.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12973a[e.b.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static i6.e a(com.oplus.anim.a aVar) {
        Rect rectB = aVar.b();
        return new i6.e(Collections.emptyList(), aVar, "__container", -1L, e.a.PRE_COMP, -1L, null, Collections.emptyList(), new g6.l(), 0, 0, 0, 0.0f, 0.0f, rectB.width(), rectB.height(), null, null, Collections.emptyList(), e.b.NONE, null, false, null, null);
    }

    public static i6.e b(com.oplus.anim.parser.moshi.c cVar, com.oplus.anim.a aVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        float f10;
        e.b bVar = e.b.NONE;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        cVar.k();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        e.b bVar2 = bVar;
        e.a aVar2 = null;
        String strX = null;
        g6.l lVarG = null;
        g6.j jVarD = null;
        g6.k kVarA = null;
        g6.b bVarF = null;
        h6.a aVarB = null;
        j jVarB = null;
        long jI = 0;
        int I = 0;
        int I2 = 0;
        int color = 0;
        boolean zD = false;
        float fG = 0.0f;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        float f11 = 0.0f;
        long jI2 = -1;
        float fG4 = 1.0f;
        String strX2 = "UNSET";
        String strX3 = null;
        float fG5 = 0.0f;
        while (cVar.B()) {
            switch (cVar.v0(f12970a)) {
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
                    aVar2 = e.a.UNKNOWN;
                    if (I3 < aVar2.ordinal()) {
                        aVar2 = e.a.values()[I3];
                    }
                    break;
                case 4:
                    jI2 = cVar.I();
                    break;
                case 5:
                    I = (int) (cVar.I() * l6.h.e());
                    break;
                case 6:
                    I2 = (int) (cVar.I() * l6.h.e());
                    break;
                case 7:
                    color = Color.parseColor(cVar.X());
                    break;
                case 8:
                    lVarG = c.g(cVar, aVar);
                    break;
                case 9:
                    int I4 = cVar.I();
                    if (I4 < e.b.values().length) {
                        bVar2 = e.b.values()[I4];
                        int i10 = a.f12973a[bVar2.ordinal()];
                        if (i10 == 1) {
                            aVar.a("Unsupported matte type: Luma");
                        } else if (i10 == 2) {
                            aVar.a("Unsupported matte type: Luma Inverted");
                        }
                        aVar.r(1);
                    } else {
                        aVar.a("Unsupported matte type: " + I4);
                    }
                    break;
                case 10:
                    cVar.i();
                    while (cVar.B()) {
                        arrayList3.add(x.a(cVar, aVar));
                    }
                    aVar.r(arrayList3.size());
                    cVar.v();
                    break;
                case 11:
                    cVar.i();
                    while (cVar.B()) {
                        h6.c cVarA = h.a(cVar, aVar);
                        if (cVarA != null) {
                            arrayList4.add(cVarA);
                        }
                    }
                    cVar.v();
                    break;
                case 12:
                    cVar.k();
                    while (cVar.B()) {
                        int iV0 = cVar.v0(f12971b);
                        if (iV0 == 0) {
                            jVarD = d.d(cVar, aVar);
                        } else if (iV0 != 1) {
                            cVar.x0();
                            cVar.D0();
                        } else {
                            cVar.i();
                            if (cVar.B()) {
                                kVarA = b.a(cVar, aVar);
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
                    ArrayList arrayList5 = new ArrayList();
                    while (cVar.B()) {
                        cVar.k();
                        while (cVar.B()) {
                            int iV02 = cVar.v0(f12972c);
                            if (iV02 == 0) {
                                int I5 = cVar.I();
                                if (I5 == 29) {
                                    aVarB = e.b(cVar, aVar);
                                } else if (I5 == 25) {
                                    jVarB = new k().b(cVar, aVar);
                                }
                            } else if (iV02 != 1) {
                                cVar.x0();
                                cVar.D0();
                            } else {
                                arrayList5.add(cVar.X());
                            }
                        }
                        cVar.x();
                    }
                    cVar.v();
                    aVar.a("Effective doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    break;
                case 14:
                    fG4 = (float) cVar.G();
                    break;
                case 15:
                    fG = (float) cVar.G();
                    break;
                case 16:
                    fG2 = (float) (cVar.G() * ((double) l6.h.e()));
                    break;
                case 17:
                    fG3 = (float) (cVar.G() * ((double) l6.h.e()));
                    break;
                case 18:
                    fG5 = (float) cVar.G();
                    break;
                case 19:
                    f11 = (float) cVar.G();
                    break;
                case 20:
                    bVarF = d.f(cVar, aVar, false);
                    break;
                case COUIVersionUtil.COUI_8_2 /* 21 */:
                    strX3 = cVar.X();
                    break;
                case 22:
                    zD = cVar.D();
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        ArrayList arrayList6 = new ArrayList();
        if (fG5 > 0.0f) {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            arrayList2.add(new m6.c(aVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fG5)));
            f10 = 0.0f;
        } else {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            f10 = 0.0f;
        }
        if (f11 <= f10) {
            f11 = aVar.f();
        }
        arrayList2.add(new m6.c(aVar, fValueOf2, fValueOf2, null, fG5, Float.valueOf(f11)));
        arrayList2.add(new m6.c(aVar, fValueOf, fValueOf, null, f11, Float.valueOf(Float.MAX_VALUE)));
        if (l6.h.m(strX2, ".ai") || TextHistory.AI_RESULT.equals(strX3)) {
            aVar.a("Convert your Illustrator layers to shape layers.");
        }
        return new i6.e(arrayList4, aVar, strX2, jI, aVar2, jI2, strX, arrayList, lVarG, I, I2, color, fG4, fG, fG2, fG3, jVarD, kVarA, arrayList2, bVar2, bVarF, zD, aVarB, jVarB);
    }
}
