package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import q.d;

/* JADX INFO: loaded from: classes.dex */
class l implements Comparable {
    static String[] G = {"position", "x", "y", "width", "height", "pathRotate"};
    private float A;
    private float B;
    private float C;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1361c;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private m.c f1378w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f1380y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f1381z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f1359a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1360b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    LinkedHashMap f1362f = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f1363h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    double[] f1364i = new double[18];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    double[] f1365j = new double[18];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f1366k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f1367l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1368m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1369n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f1370o = 0.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f1371p = 1.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1372q = 1.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1373r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1374s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f1375t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f1376u = 0.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f1377v = 0.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f1379x = 0;
    private float D = Float.NaN;
    private float E = Float.NaN;
    private int F = -1;

    l() {
    }

    private boolean e(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void a(HashMap map, int i10) {
        for (String str : map.keySet()) {
            q.d dVar = (q.d) map.get(str);
            if (dVar != null) {
                str.hashCode();
                switch (str) {
                    case "rotationX":
                        dVar.c(i10, Float.isNaN(this.f1370o) ? 0.0f : this.f1370o);
                        break;
                    case "rotationY":
                        dVar.c(i10, Float.isNaN(this.f1359a) ? 0.0f : this.f1359a);
                        break;
                    case "translationX":
                        dVar.c(i10, Float.isNaN(this.f1375t) ? 0.0f : this.f1375t);
                        break;
                    case "translationY":
                        dVar.c(i10, Float.isNaN(this.f1376u) ? 0.0f : this.f1376u);
                        break;
                    case "translationZ":
                        dVar.c(i10, Float.isNaN(this.f1377v) ? 0.0f : this.f1377v);
                        break;
                    case "progress":
                        dVar.c(i10, Float.isNaN(this.E) ? 0.0f : this.E);
                        break;
                    case "scaleX":
                        dVar.c(i10, Float.isNaN(this.f1371p) ? 1.0f : this.f1371p);
                        break;
                    case "scaleY":
                        dVar.c(i10, Float.isNaN(this.f1372q) ? 1.0f : this.f1372q);
                        break;
                    case "transformPivotX":
                        dVar.c(i10, Float.isNaN(this.f1373r) ? 0.0f : this.f1373r);
                        break;
                    case "transformPivotY":
                        dVar.c(i10, Float.isNaN(this.f1374s) ? 0.0f : this.f1374s);
                        break;
                    case "rotation":
                        dVar.c(i10, Float.isNaN(this.f1369n) ? 0.0f : this.f1369n);
                        break;
                    case "elevation":
                        dVar.c(i10, Float.isNaN(this.f1368m) ? 0.0f : this.f1368m);
                        break;
                    case "transitionPathRotate":
                        dVar.c(i10, Float.isNaN(this.D) ? 0.0f : this.D);
                        break;
                    case "alpha":
                        dVar.c(i10, Float.isNaN(this.f1366k) ? 1.0f : this.f1366k);
                        break;
                    default:
                        if (!str.startsWith("CUSTOM")) {
                            Log.e("MotionPaths", "UNKNOWN spline " + str);
                            break;
                        } else {
                            String str2 = str.split(",")[1];
                            if (this.f1362f.containsKey(str2)) {
                                androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1362f.get(str2);
                                if (dVar instanceof d.b) {
                                    ((d.b) dVar).i(i10, aVar);
                                } else {
                                    Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i10 + ", value" + aVar.e() + dVar);
                                }
                            }
                            break;
                        }
                        break;
                }
            }
        }
    }

    public void b(View view) {
        this.f1361c = view.getVisibility();
        this.f1366k = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f1367l = false;
        this.f1368m = view.getElevation();
        this.f1369n = view.getRotation();
        this.f1370o = view.getRotationX();
        this.f1359a = view.getRotationY();
        this.f1371p = view.getScaleX();
        this.f1372q = view.getScaleY();
        this.f1373r = view.getPivotX();
        this.f1374s = view.getPivotY();
        this.f1375t = view.getTranslationX();
        this.f1376u = view.getTranslationY();
        this.f1377v = view.getTranslationZ();
    }

    public void c(c.a aVar) {
        c.d dVar = aVar.f1729c;
        int i10 = dVar.f1808c;
        this.f1360b = i10;
        int i11 = dVar.f1807b;
        this.f1361c = i11;
        this.f1366k = (i11 == 0 || i10 != 0) ? dVar.f1809d : 0.0f;
        c.e eVar = aVar.f1732f;
        this.f1367l = eVar.f1824m;
        this.f1368m = eVar.f1825n;
        this.f1369n = eVar.f1813b;
        this.f1370o = eVar.f1814c;
        this.f1359a = eVar.f1815d;
        this.f1371p = eVar.f1816e;
        this.f1372q = eVar.f1817f;
        this.f1373r = eVar.f1818g;
        this.f1374s = eVar.f1819h;
        this.f1375t = eVar.f1821j;
        this.f1376u = eVar.f1822k;
        this.f1377v = eVar.f1823l;
        this.f1378w = m.c.c(aVar.f1730d.f1795d);
        c.C0012c c0012c = aVar.f1730d;
        this.D = c0012c.f1800i;
        this.f1379x = c0012c.f1797f;
        this.F = c0012c.f1793b;
        this.E = aVar.f1729c.f1810e;
        for (String str : aVar.f1733g.keySet()) {
            androidx.constraintlayout.widget.a aVar2 = (androidx.constraintlayout.widget.a) aVar.f1733g.get(str);
            if (aVar2.g()) {
                this.f1362f.put(str, aVar2);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return Float.compare(this.f1380y, lVar.f1380y);
    }

    void f(l lVar, HashSet hashSet) {
        if (e(this.f1366k, lVar.f1366k)) {
            hashSet.add("alpha");
        }
        if (e(this.f1368m, lVar.f1368m)) {
            hashSet.add("elevation");
        }
        int i10 = this.f1361c;
        int i11 = lVar.f1361c;
        if (i10 != i11 && this.f1360b == 0 && (i10 == 0 || i11 == 0)) {
            hashSet.add("alpha");
        }
        if (e(this.f1369n, lVar.f1369n)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.D) || !Float.isNaN(lVar.D)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.E) || !Float.isNaN(lVar.E)) {
            hashSet.add("progress");
        }
        if (e(this.f1370o, lVar.f1370o)) {
            hashSet.add("rotationX");
        }
        if (e(this.f1359a, lVar.f1359a)) {
            hashSet.add("rotationY");
        }
        if (e(this.f1373r, lVar.f1373r)) {
            hashSet.add("transformPivotX");
        }
        if (e(this.f1374s, lVar.f1374s)) {
            hashSet.add("transformPivotY");
        }
        if (e(this.f1371p, lVar.f1371p)) {
            hashSet.add("scaleX");
        }
        if (e(this.f1372q, lVar.f1372q)) {
            hashSet.add("scaleY");
        }
        if (e(this.f1375t, lVar.f1375t)) {
            hashSet.add("translationX");
        }
        if (e(this.f1376u, lVar.f1376u)) {
            hashSet.add("translationY");
        }
        if (e(this.f1377v, lVar.f1377v)) {
            hashSet.add("translationZ");
        }
    }

    void g(float f10, float f11, float f12, float f13) {
        this.f1381z = f10;
        this.A = f11;
        this.B = f12;
        this.C = f13;
    }

    public void h(Rect rect, androidx.constraintlayout.widget.c cVar, int i10, int i11) {
        g(rect.left, rect.top, rect.width(), rect.height());
        c(cVar.B(i11));
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return;
                    }
                }
            }
            float f10 = this.f1369n + 90.0f;
            this.f1369n = f10;
            if (f10 > 180.0f) {
                this.f1369n = f10 - 360.0f;
                return;
            }
            return;
        }
        this.f1369n -= 90.0f;
    }

    public void i(View view) {
        g(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
