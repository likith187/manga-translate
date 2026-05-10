package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import q.c;
import q.d;
import q.f;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private HashMap B;
    private HashMap C;
    private HashMap D;
    private k[] E;
    private int F;
    private int G;
    private View H;
    private int I;
    private float J;
    private Interpolator K;
    private boolean L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f1383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1384c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f1386e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private m.b[] f1392k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private m.b f1393l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f1397p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f1398q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f1399r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double[] f1400s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double[] f1401t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String[] f1402u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int[] f1403v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Rect f1382a = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1385d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1387f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o f1388g = new o();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private o f1389h = new o();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l f1390i = new l();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l f1391j = new l();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f1394m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f1395n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f1396o = 1.0f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1404w = 4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float[] f1405x = new float[4];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ArrayList f1406y = new ArrayList();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float[] f1407z = new float[1];
    private ArrayList A = new ArrayList();

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m.c f1408a;

        a(m.c cVar) {
            this.f1408a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) this.f1408a.a(f10);
        }
    }

    m(View view) {
        int i10 = d.f1258f;
        this.F = i10;
        this.G = i10;
        this.H = null;
        this.I = i10;
        this.J = Float.NaN;
        this.K = null;
        this.L = false;
        H(view);
    }

    private float g(float f10, float[] fArr) {
        float f11 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.f1396o;
            if (f12 != 1.0d) {
                float f13 = this.f1395n;
                if (f10 < f13) {
                    f10 = 0.0f;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        m.c cVar = this.f1388g.f1410a;
        float f14 = Float.NaN;
        for (o oVar : this.f1406y) {
            m.c cVar2 = oVar.f1410a;
            if (cVar2 != null) {
                float f15 = oVar.f1412c;
                if (f15 < f10) {
                    cVar = cVar2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = oVar.f1412c;
                }
            }
        }
        if (cVar == null) {
            return f10;
        }
        float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
        double d10 = (f10 - f11) / f16;
        float fA = f11 + (((float) cVar.a(d10)) * f16);
        if (fArr != null) {
            fArr[0] = (float) cVar.b(d10);
        }
        return fA;
    }

    private static Interpolator p(Context context, int i10, String str, int i11) {
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, i11);
        }
        if (i10 == -1) {
            return new a(m.c.c(str));
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    private float s() {
        char c10;
        float[] fArr = new float[2];
        float f10 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i10 = 0;
        float fHypot = 0.0f;
        while (i10 < 100) {
            float f11 = i10 * f10;
            double dA = f11;
            m.c cVar = this.f1388g.f1410a;
            float f12 = Float.NaN;
            float f13 = 0.0f;
            for (o oVar : this.f1406y) {
                m.c cVar2 = oVar.f1410a;
                if (cVar2 != null) {
                    float f14 = oVar.f1412c;
                    if (f14 < f11) {
                        cVar = cVar2;
                        f13 = f14;
                    } else if (Float.isNaN(f12)) {
                        f12 = oVar.f1412c;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f12)) {
                    f12 = 1.0f;
                }
                dA = (((float) cVar.a((f11 - f13) / r7)) * (f12 - f13)) + f13;
            }
            this.f1392k[0].d(dA, this.f1400s);
            int i11 = i10;
            this.f1388g.f(dA, this.f1399r, this.f1400s, fArr, 0);
            if (i11 > 0) {
                c10 = 0;
                fHypot += (float) Math.hypot(d11 - ((double) fArr[1]), d10 - ((double) fArr[0]));
            } else {
                c10 = 0;
            }
            d10 = fArr[c10];
            i10 = i11 + 1;
            d11 = fArr[1];
        }
        return fHypot;
    }

    private void w(o oVar) {
        if (Collections.binarySearch(this.f1406y, oVar) == 0) {
            Log.e("MotionController", " KeyPath position \"" + oVar.f1413f + "\" outside of range");
        }
        this.f1406y.add((-r0) - 1, oVar);
    }

    private void y(o oVar) {
        oVar.q((int) this.f1383b.getX(), (int) this.f1383b.getY(), this.f1383b.getWidth(), this.f1383b.getHeight());
    }

    void A(Rect rect, Rect rect2, int i10, int i11, int i12) {
        if (i10 == 1) {
            int i13 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i12 - ((i13 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 == 2) {
            int i14 = rect.left + rect.right;
            rect2.left = i11 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i14 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 == 3) {
            int i15 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i15 / 2);
            rect2.top = i12 - ((i15 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 != 4) {
            return;
        }
        int i16 = rect.left + rect.right;
        rect2.left = i11 - (((rect.bottom + rect.top) + rect.width()) / 2);
        rect2.top = (i16 - rect.height()) / 2;
        rect2.right = rect2.left + rect.width();
        rect2.bottom = rect2.top + rect.height();
    }

    void B(View view) {
        o oVar = this.f1388g;
        oVar.f1412c = 0.0f;
        oVar.f1413f = 0.0f;
        this.L = true;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f1389h.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f1390i.i(view);
        this.f1391j.i(view);
    }

    void C(Rect rect, androidx.constraintlayout.widget.c cVar, int i10, int i11) {
        int i12 = cVar.f1723e;
        if (i12 != 0) {
            A(rect, this.f1382a, i12, i10, i11);
            rect = this.f1382a;
        }
        o oVar = this.f1389h;
        oVar.f1412c = 1.0f;
        oVar.f1413f = 1.0f;
        y(oVar);
        this.f1389h.q(rect.left, rect.top, rect.width(), rect.height());
        this.f1389h.a(cVar.B(this.f1384c));
        this.f1391j.h(rect, cVar, i12, this.f1384c);
    }

    public void D(int i10) {
        this.F = i10;
    }

    void E(View view) {
        o oVar = this.f1388g;
        oVar.f1412c = 0.0f;
        oVar.f1413f = 0.0f;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f1390i.i(view);
    }

    void F(Rect rect, androidx.constraintlayout.widget.c cVar, int i10, int i11) {
        int i12 = cVar.f1723e;
        if (i12 != 0) {
            A(rect, this.f1382a, i12, i10, i11);
        }
        o oVar = this.f1388g;
        oVar.f1412c = 0.0f;
        oVar.f1413f = 0.0f;
        y(oVar);
        this.f1388g.q(rect.left, rect.top, rect.width(), rect.height());
        c.a aVarB = cVar.B(this.f1384c);
        this.f1388g.a(aVarB);
        this.f1394m = aVarB.f1730d.f1798g;
        this.f1390i.h(rect, cVar, i12, this.f1384c);
        this.G = aVarB.f1732f.f1820i;
        c.C0012c c0012c = aVarB.f1730d;
        this.I = c0012c.f1802k;
        this.J = c0012c.f1801j;
        Context context = this.f1383b.getContext();
        c.C0012c c0012c2 = aVarB.f1730d;
        this.K = p(context, c0012c2.f1804m, c0012c2.f1803l, c0012c2.f1805n);
    }

    public void G(q.e eVar, View view, int i10, int i11, int i12) {
        o oVar = this.f1388g;
        oVar.f1412c = 0.0f;
        oVar.f1413f = 0.0f;
        Rect rect = new Rect();
        if (i10 == 1 || i10 == 2) {
            throw null;
        }
        this.f1388g.q(rect.left, rect.top, rect.width(), rect.height());
        throw null;
    }

    public void H(View view) {
        this.f1383b = view;
        this.f1384c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            this.f1386e = ((ConstraintLayout.b) layoutParams).getConstraintTag();
        }
    }

    public void I(int i10, int i11, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        double[][] dArr;
        androidx.constraintlayout.widget.a aVar;
        q.f fVarH;
        androidx.constraintlayout.widget.a aVar2;
        Integer num;
        q.d dVarG;
        androidx.constraintlayout.widget.a aVar3;
        new HashSet();
        HashSet<String> hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        HashSet<String> hashSet3 = new HashSet();
        HashMap map = new HashMap();
        int i12 = this.F;
        if (i12 != d.f1258f) {
            this.f1388g.f1420n = i12;
        }
        this.f1390i.f(this.f1391j, hashSet2);
        ArrayList<d> arrayList2 = this.A;
        if (arrayList2 != null) {
            arrayList = null;
            for (d dVar : arrayList2) {
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    w(new o(i10, i11, hVar, this.f1388g, this.f1389h));
                    int i13 = hVar.f1318g;
                    if (i13 != d.f1258f) {
                        this.f1387f = i13;
                    }
                } else if (dVar instanceof f) {
                    dVar.d(hashSet3);
                } else if (dVar instanceof j) {
                    dVar.d(hashSet);
                } else if (dVar instanceof k) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((k) dVar);
                } else {
                    dVar.h(map);
                    dVar.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.E = (k[]) arrayList.toArray(new k[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.C = new HashMap();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[1];
                    for (d dVar2 : this.A) {
                        HashMap map2 = dVar2.f1263e;
                        if (map2 != null && (aVar3 = (androidx.constraintlayout.widget.a) map2.get(str2)) != null) {
                            sparseArray.append(dVar2.f1259a, aVar3);
                        }
                    }
                    dVarG = q.d.f(str, sparseArray);
                } else {
                    dVarG = q.d.g(str);
                }
                if (dVarG != null) {
                    dVarG.d(str);
                    this.C.put(str, dVarG);
                }
            }
            ArrayList<d> arrayList3 = this.A;
            if (arrayList3 != null) {
                for (d dVar3 : arrayList3) {
                    if (dVar3 instanceof e) {
                        dVar3.a(this.C);
                    }
                }
            }
            this.f1390i.a(this.C, 0);
            this.f1391j.a(this.C, 100);
            for (String str3 : this.C.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = (Integer) map.get(str3)) == null) ? 0 : num.intValue();
                m.j jVar = (m.j) this.C.get(str3);
                if (jVar != null) {
                    jVar.e(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.B == null) {
                this.B = new HashMap();
            }
            for (String str4 : hashSet) {
                if (!this.B.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (d dVar4 : this.A) {
                            HashMap map3 = dVar4.f1263e;
                            if (map3 != null && (aVar2 = (androidx.constraintlayout.widget.a) map3.get(str5)) != null) {
                                sparseArray2.append(dVar4.f1259a, aVar2);
                            }
                        }
                        fVarH = q.f.g(str4, sparseArray2);
                    } else {
                        fVarH = q.f.h(str4, j10);
                    }
                    if (fVarH != null) {
                        fVarH.d(str4);
                        this.B.put(str4, fVarH);
                    }
                }
            }
            ArrayList<d> arrayList4 = this.A;
            if (arrayList4 != null) {
                for (d dVar5 : arrayList4) {
                    if (dVar5 instanceof j) {
                        ((j) dVar5).U(this.B);
                    }
                }
            }
            for (String str6 : this.B.keySet()) {
                ((q.f) this.B.get(str6)).e(map.containsKey(str6) ? ((Integer) map.get(str6)).intValue() : 0);
            }
        }
        int size = this.f1406y.size();
        int i14 = size + 2;
        o[] oVarArr = new o[i14];
        oVarArr[0] = this.f1388g;
        oVarArr[size + 1] = this.f1389h;
        if (this.f1406y.size() > 0 && this.f1387f == -1) {
            this.f1387f = 0;
        }
        Iterator it = this.f1406y.iterator();
        int i15 = 1;
        while (it.hasNext()) {
            oVarArr[i15] = (o) it.next();
            i15++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.f1389h.f1424r.keySet()) {
            if (this.f1388g.f1424r.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f1402u = strArr2;
        this.f1403v = new int[strArr2.length];
        int i16 = 0;
        while (true) {
            strArr = this.f1402u;
            if (i16 >= strArr.length) {
                break;
            }
            String str8 = strArr[i16];
            this.f1403v[i16] = 0;
            int i17 = 0;
            while (true) {
                if (i17 >= i14) {
                    break;
                }
                if (oVarArr[i17].f1424r.containsKey(str8) && (aVar = (androidx.constraintlayout.widget.a) oVarArr[i17].f1424r.get(str8)) != null) {
                    int[] iArr = this.f1403v;
                    iArr[i16] = iArr[i16] + aVar.h();
                    break;
                }
                i17++;
            }
            i16++;
        }
        boolean z10 = oVarArr[0].f1420n != d.f1258f;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i18 = 1; i18 < i14; i18++) {
            oVarArr[i18].d(oVarArr[i18 - 1], zArr, this.f1402u, z10);
        }
        int i19 = 0;
        for (int i20 = 1; i20 < length; i20++) {
            if (zArr[i20]) {
                i19++;
            }
        }
        this.f1399r = new int[i19];
        int i21 = 2;
        int iMax = Math.max(2, i19);
        this.f1400s = new double[iMax];
        this.f1401t = new double[iMax];
        int i22 = 0;
        for (int i23 = 1; i23 < length; i23++) {
            if (zArr[i23]) {
                this.f1399r[i22] = i23;
                i22++;
            }
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i14, this.f1399r.length);
        double[] dArr3 = new double[i14];
        for (int i24 = 0; i24 < i14; i24++) {
            oVarArr[i24].e(dArr2[i24], this.f1399r);
            dArr3[i24] = oVarArr[i24].f1412c;
        }
        int i25 = 0;
        while (true) {
            int[] iArr2 = this.f1399r;
            if (i25 >= iArr2.length) {
                break;
            }
            if (iArr2[i25] < o.f1409w.length) {
                String str9 = o.f1409w[this.f1399r[i25]] + " [";
                for (int i26 = 0; i26 < i14; i26++) {
                    str9 = str9 + dArr2[i26][i25];
                }
            }
            i25++;
        }
        this.f1392k = new m.b[this.f1402u.length + 1];
        int i27 = 0;
        while (true) {
            String[] strArr3 = this.f1402u;
            if (i27 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i27];
            int i28 = 0;
            int i29 = 0;
            double[] dArr4 = null;
            double[][] dArr5 = null;
            while (i28 < i14) {
                if (oVarArr[i28].k(str10)) {
                    if (dArr5 == null) {
                        dArr4 = new double[i14];
                        int[] iArr3 = new int[i21];
                        iArr3[c10] = oVarArr[i28].i(str10);
                        iArr3[0] = i14;
                        dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr3);
                    }
                    o oVar = oVarArr[i28];
                    dArr = dArr2;
                    dArr4[i29] = oVar.f1412c;
                    oVar.h(str10, dArr5[i29], 0);
                    i29++;
                } else {
                    dArr = dArr2;
                }
                i28++;
                dArr2 = dArr;
                i21 = 2;
                c10 = 1;
            }
            i27++;
            this.f1392k[i27] = m.b.a(this.f1387f, Arrays.copyOf(dArr4, i29), (double[][]) Arrays.copyOf(dArr5, i29));
            dArr2 = dArr2;
            i21 = 2;
            c10 = 1;
        }
        this.f1392k[0] = m.b.a(this.f1387f, dArr3, dArr2);
        if (oVarArr[0].f1420n != d.f1258f) {
            int[] iArr4 = new int[i14];
            double[] dArr6 = new double[i14];
            double[][] dArr7 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i14, 2);
            for (int i30 = 0; i30 < i14; i30++) {
                iArr4[i30] = oVarArr[i30].f1420n;
                dArr6[i30] = r9.f1412c;
                double[] dArr8 = dArr7[i30];
                dArr8[0] = r9.f1414h;
                dArr8[1] = r9.f1415i;
            }
            this.f1393l = m.b.b(iArr4, dArr6, dArr7);
        }
        this.D = new HashMap();
        if (this.A != null) {
            float fS = Float.NaN;
            for (String str11 : hashSet3) {
                q.c cVarI = q.c.i(str11);
                if (cVarI != null) {
                    if (cVarI.h() && Float.isNaN(fS)) {
                        fS = s();
                    }
                    cVarI.f(str11);
                    this.D.put(str11, cVarI);
                }
            }
            for (d dVar6 : this.A) {
                if (dVar6 instanceof f) {
                    ((f) dVar6).Y(this.D);
                }
            }
            Iterator it2 = this.D.values().iterator();
            while (it2.hasNext()) {
                ((q.c) it2.next()).g(fS);
            }
        }
    }

    public void J(m mVar) {
        this.f1388g.t(mVar, mVar.f1388g);
        this.f1389h.t(mVar, mVar.f1389h);
    }

    public void a(d dVar) {
        this.A.add(dVar);
    }

    void b(ArrayList arrayList) {
        this.A.addAll(arrayList);
    }

    int c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] dArrH = this.f1392k[0].h();
        if (iArr != null) {
            Iterator it = this.f1406y.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = ((o) it.next()).f1425s;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < dArrH.length; i12++) {
            this.f1392k[0].d(dArrH[i12], this.f1400s);
            this.f1388g.f(dArrH[i12], this.f1399r, this.f1400s, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    void d(float[] fArr, int i10) {
        double dA;
        float f10 = 1.0f;
        float f11 = 1.0f / (i10 - 1);
        HashMap map = this.C;
        m.j jVar = map == null ? null : (m.j) map.get("translationX");
        HashMap map2 = this.C;
        m.j jVar2 = map2 == null ? null : (m.j) map2.get("translationY");
        HashMap map3 = this.D;
        q.c cVar = map3 == null ? null : (q.c) map3.get("translationX");
        HashMap map4 = this.D;
        q.c cVar2 = map4 != null ? (q.c) map4.get("translationY") : null;
        int i11 = 0;
        while (i11 < i10) {
            float fMin = i11 * f11;
            float f12 = this.f1396o;
            float f13 = 0.0f;
            if (f12 != f10) {
                float f14 = this.f1395n;
                if (fMin < f14) {
                    fMin = 0.0f;
                }
                if (fMin > f14 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f14) * f12, f10);
                }
            }
            float f15 = fMin;
            double d10 = f15;
            m.c cVar3 = this.f1388g.f1410a;
            float f16 = Float.NaN;
            for (o oVar : this.f1406y) {
                m.c cVar4 = oVar.f1410a;
                double d11 = d10;
                if (cVar4 != null) {
                    float f17 = oVar.f1412c;
                    if (f17 < f15) {
                        f13 = f17;
                        cVar3 = cVar4;
                    } else if (Float.isNaN(f16)) {
                        f16 = oVar.f1412c;
                    }
                }
                d10 = d11;
            }
            double d12 = d10;
            if (cVar3 != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                dA = (((float) cVar3.a((f15 - f13) / r16)) * (f16 - f13)) + f13;
            } else {
                dA = d12;
            }
            this.f1392k[0].d(dA, this.f1400s);
            m.b bVar = this.f1393l;
            if (bVar != null) {
                double[] dArr = this.f1400s;
                if (dArr.length > 0) {
                    bVar.d(dA, dArr);
                }
            }
            int i12 = i11 * 2;
            int i13 = i11;
            this.f1388g.f(dA, this.f1399r, this.f1400s, fArr, i12);
            if (cVar != null) {
                fArr[i12] = fArr[i12] + cVar.a(f15);
            } else if (jVar != null) {
                fArr[i12] = fArr[i12] + jVar.a(f15);
            }
            if (cVar2 != null) {
                int i14 = i12 + 1;
                fArr[i14] = fArr[i14] + cVar2.a(f15);
            } else if (jVar2 != null) {
                int i15 = i12 + 1;
                fArr[i15] = fArr[i15] + jVar2.a(f15);
            }
            i11 = i13 + 1;
            f10 = 1.0f;
        }
    }

    void e(float f10, float[] fArr, int i10) {
        this.f1392k[0].d(g(f10, null), this.f1400s);
        this.f1388g.j(this.f1399r, this.f1400s, fArr, i10);
    }

    void f(boolean z10) {
        if (!"button".equals(androidx.constraintlayout.motion.widget.a.d(this.f1383b)) || this.E == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            k[] kVarArr = this.E;
            if (i10 >= kVarArr.length) {
                return;
            }
            kVarArr[i10].y(z10 ? -100.0f : 100.0f, this.f1383b);
            i10++;
        }
    }

    public int h() {
        return this.f1388g.f1421o;
    }

    public void i(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f1392k[0].d(d10, dArr);
        this.f1392k[0].g(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f1388g.g(d10, this.f1399r, dArr, fArr, dArr2, fArr2);
    }

    public float j() {
        return this.f1397p;
    }

    public float k() {
        return this.f1398q;
    }

    void l(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float fG = g(f10, this.f1407z);
        m.b[] bVarArr = this.f1392k;
        int i10 = 0;
        if (bVarArr == null) {
            o oVar = this.f1389h;
            float f13 = oVar.f1414h;
            o oVar2 = this.f1388g;
            float f14 = f13 - oVar2.f1414h;
            float f15 = oVar.f1415i - oVar2.f1415i;
            float f16 = (oVar.f1416j - oVar2.f1416j) + f14;
            float f17 = (oVar.f1417k - oVar2.f1417k) + f15;
            fArr[0] = (f14 * (1.0f - f11)) + (f16 * f11);
            fArr[1] = (f15 * (1.0f - f12)) + (f17 * f12);
            return;
        }
        double d10 = fG;
        bVarArr[0].g(d10, this.f1401t);
        this.f1392k[0].d(d10, this.f1400s);
        float f18 = this.f1407z[0];
        while (true) {
            dArr = this.f1401t;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = dArr[i10] * ((double) f18);
            i10++;
        }
        m.b bVar = this.f1393l;
        if (bVar == null) {
            this.f1388g.r(f11, f12, fArr, this.f1399r, dArr, this.f1400s);
            return;
        }
        double[] dArr2 = this.f1400s;
        if (dArr2.length > 0) {
            bVar.d(d10, dArr2);
            this.f1393l.g(d10, this.f1401t);
            this.f1388g.r(f11, f12, fArr, this.f1399r, this.f1401t, this.f1400s);
        }
    }

    public int m() {
        int iMax = this.f1388g.f1411b;
        Iterator it = this.f1406y.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((o) it.next()).f1411b);
        }
        return Math.max(iMax, this.f1389h.f1411b);
    }

    public float n() {
        return this.f1389h.f1414h;
    }

    public float o() {
        return this.f1389h.f1415i;
    }

    o q(int i10) {
        return (o) this.f1406y.get(i10);
    }

    void r(float f10, int i10, int i11, float f11, float f12, float[] fArr) {
        float fG = g(f10, this.f1407z);
        HashMap map = this.C;
        m.j jVar = map == null ? null : (m.j) map.get("translationX");
        HashMap map2 = this.C;
        m.j jVar2 = map2 == null ? null : (m.j) map2.get("translationY");
        HashMap map3 = this.C;
        m.j jVar3 = map3 == null ? null : (m.j) map3.get("rotation");
        HashMap map4 = this.C;
        m.j jVar4 = map4 == null ? null : (m.j) map4.get("scaleX");
        HashMap map5 = this.C;
        m.j jVar5 = map5 == null ? null : (m.j) map5.get("scaleY");
        HashMap map6 = this.D;
        q.c cVar = map6 == null ? null : (q.c) map6.get("translationX");
        HashMap map7 = this.D;
        q.c cVar2 = map7 == null ? null : (q.c) map7.get("translationY");
        HashMap map8 = this.D;
        q.c cVar3 = map8 == null ? null : (q.c) map8.get("rotation");
        HashMap map9 = this.D;
        q.c cVar4 = map9 == null ? null : (q.c) map9.get("scaleX");
        HashMap map10 = this.D;
        q.c cVar5 = map10 != null ? (q.c) map10.get("scaleY") : null;
        m.p pVar = new m.p();
        pVar.b();
        pVar.d(jVar3, fG);
        pVar.h(jVar, jVar2, fG);
        pVar.f(jVar4, jVar5, fG);
        pVar.c(cVar3, fG);
        pVar.g(cVar, cVar2, fG);
        pVar.e(cVar4, cVar5, fG);
        m.b bVar = this.f1393l;
        if (bVar != null) {
            double[] dArr = this.f1400s;
            if (dArr.length > 0) {
                double d10 = fG;
                bVar.d(d10, dArr);
                this.f1393l.g(d10, this.f1401t);
                this.f1388g.r(f11, f12, fArr, this.f1399r, this.f1401t, this.f1400s);
            }
            pVar.a(f11, f12, i10, i11, fArr);
            return;
        }
        int i12 = 0;
        if (this.f1392k == null) {
            o oVar = this.f1389h;
            float f13 = oVar.f1414h;
            o oVar2 = this.f1388g;
            float f14 = f13 - oVar2.f1414h;
            q.c cVar6 = cVar5;
            float f15 = oVar.f1415i - oVar2.f1415i;
            q.c cVar7 = cVar4;
            float f16 = (oVar.f1416j - oVar2.f1416j) + f14;
            float f17 = (oVar.f1417k - oVar2.f1417k) + f15;
            fArr[0] = (f14 * (1.0f - f11)) + (f16 * f11);
            fArr[1] = (f15 * (1.0f - f12)) + (f17 * f12);
            pVar.b();
            pVar.d(jVar3, fG);
            pVar.h(jVar, jVar2, fG);
            pVar.f(jVar4, jVar5, fG);
            pVar.c(cVar3, fG);
            pVar.g(cVar, cVar2, fG);
            pVar.e(cVar7, cVar6, fG);
            pVar.a(f11, f12, i10, i11, fArr);
            return;
        }
        double dG = g(fG, this.f1407z);
        this.f1392k[0].g(dG, this.f1401t);
        this.f1392k[0].d(dG, this.f1400s);
        float f18 = this.f1407z[0];
        while (true) {
            double[] dArr2 = this.f1401t;
            if (i12 >= dArr2.length) {
                this.f1388g.r(f11, f12, fArr, this.f1399r, dArr2, this.f1400s);
                pVar.a(f11, f12, i10, i11, fArr);
                return;
            } else {
                dArr2[i12] = dArr2[i12] * ((double) f18);
                i12++;
            }
        }
    }

    public float t() {
        return this.f1388g.f1414h;
    }

    public String toString() {
        return " start: x: " + this.f1388g.f1414h + " y: " + this.f1388g.f1415i + " end: x: " + this.f1389h.f1414h + " y: " + this.f1389h.f1415i;
    }

    public float u() {
        return this.f1388g.f1415i;
    }

    public View v() {
        return this.f1383b;
    }

    boolean x(View view, float f10, long j10, m.d dVar) {
        f.d dVar2;
        boolean zJ;
        int i10;
        double d10;
        float fG = g(f10, null);
        int i11 = this.I;
        if (i11 != d.f1258f) {
            float f11 = 1.0f / i11;
            float fFloor = ((float) Math.floor(fG / f11)) * f11;
            float f12 = (fG % f11) / f11;
            if (!Float.isNaN(this.J)) {
                f12 = (f12 + this.J) % 1.0f;
            }
            Interpolator interpolator = this.K;
            fG = ((interpolator != null ? interpolator.getInterpolation(f12) : ((double) f12) > 0.5d ? 1.0f : 0.0f) * f11) + fFloor;
        }
        float f13 = fG;
        HashMap map = this.C;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((q.d) it.next()).h(view, f13);
            }
        }
        HashMap map2 = this.B;
        if (map2 != null) {
            f.d dVar3 = null;
            boolean zI = false;
            for (q.f fVar : map2.values()) {
                if (fVar instanceof f.d) {
                    dVar3 = (f.d) fVar;
                } else {
                    zI |= fVar.i(view, f13, j10, dVar);
                }
            }
            zJ = zI;
            dVar2 = dVar3;
        } else {
            dVar2 = null;
            zJ = false;
        }
        m.b[] bVarArr = this.f1392k;
        if (bVarArr != null) {
            double d11 = f13;
            bVarArr[0].d(d11, this.f1400s);
            this.f1392k[0].g(d11, this.f1401t);
            m.b bVar = this.f1393l;
            if (bVar != null) {
                double[] dArr = this.f1400s;
                if (dArr.length > 0) {
                    bVar.d(d11, dArr);
                    this.f1393l.g(d11, this.f1401t);
                }
            }
            if (this.L) {
                d10 = d11;
            } else {
                d10 = d11;
                this.f1388g.s(f13, view, this.f1399r, this.f1400s, this.f1401t, null, this.f1385d);
                this.f1385d = false;
            }
            if (this.G != d.f1258f) {
                if (this.H == null) {
                    this.H = ((View) view.getParent()).findViewById(this.G);
                }
                if (this.H != null) {
                    float top = (r1.getTop() + this.H.getBottom()) / 2.0f;
                    float left = (this.H.getLeft() + this.H.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(left - view.getLeft());
                        view.setPivotY(top - view.getTop());
                    }
                }
            }
            HashMap map3 = this.C;
            if (map3 != null) {
                for (m.j jVar : map3.values()) {
                    if (jVar instanceof d.C0207d) {
                        double[] dArr2 = this.f1401t;
                        if (dArr2.length > 1) {
                            ((d.C0207d) jVar).i(view, f13, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (dVar2 != null) {
                double[] dArr3 = this.f1401t;
                i10 = 1;
                zJ |= dVar2.j(view, dVar, f13, j10, dArr3[0], dArr3[1]);
            } else {
                i10 = 1;
            }
            int i12 = i10;
            while (true) {
                m.b[] bVarArr2 = this.f1392k;
                if (i12 >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i12].e(d10, this.f1405x);
                q.a.b((androidx.constraintlayout.widget.a) this.f1388g.f1424r.get(this.f1402u[i12 - 1]), view, this.f1405x);
                i12++;
            }
            l lVar = this.f1390i;
            if (lVar.f1360b == 0) {
                if (f13 <= 0.0f) {
                    view.setVisibility(lVar.f1361c);
                } else if (f13 >= 1.0f) {
                    view.setVisibility(this.f1391j.f1361c);
                } else if (this.f1391j.f1361c != lVar.f1361c) {
                    view.setVisibility(0);
                }
            }
            if (this.E != null) {
                int i13 = 0;
                while (true) {
                    k[] kVarArr = this.E;
                    if (i13 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i13].y(f13, view);
                    i13++;
                }
            }
        } else {
            i10 = 1;
            o oVar = this.f1388g;
            float f14 = oVar.f1414h;
            o oVar2 = this.f1389h;
            float f15 = f14 + ((oVar2.f1414h - f14) * f13);
            float f16 = oVar.f1415i;
            float f17 = f16 + ((oVar2.f1415i - f16) * f13);
            float f18 = oVar.f1416j;
            float f19 = oVar2.f1416j;
            float f20 = oVar.f1417k;
            float f21 = oVar2.f1417k;
            float f22 = f15 + 0.5f;
            int i14 = (int) f22;
            float f23 = f17 + 0.5f;
            int i15 = (int) f23;
            int i16 = (int) (f22 + ((f19 - f18) * f13) + f18);
            int i17 = (int) (f23 + ((f21 - f20) * f13) + f20);
            int i18 = i16 - i14;
            int i19 = i17 - i15;
            if (f19 != f18 || f21 != f20 || this.f1385d) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
                this.f1385d = false;
            }
            view.layout(i14, i15, i16, i17);
        }
        HashMap map4 = this.D;
        if (map4 != null) {
            for (q.c cVar : map4.values()) {
                if (cVar instanceof c.d) {
                    double[] dArr4 = this.f1401t;
                    ((c.d) cVar).k(view, f13, dArr4[0], dArr4[i10]);
                } else {
                    cVar.j(view, f13);
                }
            }
        }
        return zJ;
    }

    public void z() {
        this.f1385d = true;
    }
}
