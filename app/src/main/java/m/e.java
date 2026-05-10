package m;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m.b f13708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f13709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f13710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13711d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13712e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13713f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList f13714g = new ArrayList();

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            return Integer.compare(cVar.f13732a, cVar2.f13732a);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h f13717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f13718c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f13719d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f13720e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float[] f13721f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double[] f13722g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f13723h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float[] f13724i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float[] f13725j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float[] f13726k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f13727l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        m.b f13728m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        double[] f13729n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        double[] f13730o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f13731p;

        b(int i10, String str, int i11, int i12) {
            h hVar = new h();
            this.f13717b = hVar;
            this.f13718c = 0;
            this.f13719d = 1;
            this.f13720e = 2;
            this.f13727l = i10;
            this.f13716a = i11;
            hVar.g(i10, str);
            this.f13721f = new float[i12];
            this.f13722g = new double[i12];
            this.f13723h = new float[i12];
            this.f13724i = new float[i12];
            this.f13725j = new float[i12];
            this.f13726k = new float[i12];
        }

        public double a(float f10) {
            m.b bVar = this.f13728m;
            if (bVar != null) {
                double d10 = f10;
                bVar.g(d10, this.f13730o);
                this.f13728m.d(d10, this.f13729n);
            } else {
                double[] dArr = this.f13730o;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d11 = f10;
            double dE = this.f13717b.e(d11, this.f13729n[1]);
            double d12 = this.f13717b.d(d11, this.f13729n[1], this.f13730o[1]);
            double[] dArr2 = this.f13730o;
            return dArr2[0] + (dE * dArr2[2]) + (d12 * this.f13729n[2]);
        }

        public double b(float f10) {
            m.b bVar = this.f13728m;
            if (bVar != null) {
                bVar.d(f10, this.f13729n);
            } else {
                double[] dArr = this.f13729n;
                dArr[0] = this.f13724i[0];
                dArr[1] = this.f13725j[0];
                dArr[2] = this.f13721f[0];
            }
            double[] dArr2 = this.f13729n;
            return dArr2[0] + (this.f13717b.e(f10, dArr2[1]) * this.f13729n[2]);
        }

        public void c(int i10, int i11, float f10, float f11, float f12, float f13) {
            this.f13722g[i10] = ((double) i11) / 100.0d;
            this.f13723h[i10] = f10;
            this.f13724i[i10] = f11;
            this.f13725j[i10] = f12;
            this.f13721f[i10] = f13;
        }

        public void d(float f10) {
            this.f13731p = f10;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f13722g.length, 3);
            float[] fArr = this.f13721f;
            this.f13729n = new double[fArr.length + 2];
            this.f13730o = new double[fArr.length + 2];
            if (this.f13722g[0] > 0.0d) {
                this.f13717b.a(0.0d, this.f13723h[0]);
            }
            double[] dArr2 = this.f13722g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f13717b.a(1.0d, this.f13723h[length]);
            }
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double[] dArr3 = dArr[i10];
                dArr3[0] = this.f13724i[i10];
                dArr3[1] = this.f13725j[i10];
                dArr3[2] = this.f13721f[i10];
                this.f13717b.a(this.f13722g[i10], this.f13723h[i10]);
            }
            this.f13717b.f();
            double[] dArr4 = this.f13722g;
            if (dArr4.length > 1) {
                this.f13728m = m.b.a(0, dArr4, dArr);
            } else {
                this.f13728m = null;
            }
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f13732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f13733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f13734c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f13735d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f13736e;

        c(int i10, float f10, float f11, float f12, float f13) {
            this.f13732a = i10;
            this.f13733b = f13;
            this.f13734c = f11;
            this.f13735d = f10;
            this.f13736e = f12;
        }
    }

    public float a(float f10) {
        return (float) this.f13709b.b(f10);
    }

    public float b(float f10) {
        return (float) this.f13709b.a(f10);
    }

    protected void c(Object obj) {
    }

    public void d(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13) {
        this.f13714g.add(new c(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f13713f = i12;
        }
        this.f13711d = i11;
        this.f13712e = str;
    }

    public void e(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13, Object obj) {
        this.f13714g.add(new c(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f13713f = i12;
        }
        this.f13711d = i11;
        c(obj);
        this.f13712e = str;
    }

    public void f(String str) {
        this.f13710c = str;
    }

    public void g(float f10) {
        int size = this.f13714g.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f13714g, new a());
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.f13709b = new b(this.f13711d, this.f13712e, this.f13713f, size);
        int i10 = 0;
        for (c cVar : this.f13714g) {
            float f11 = cVar.f13735d;
            dArr[i10] = ((double) f11) * 0.01d;
            double[] dArr3 = dArr2[i10];
            float f12 = cVar.f13733b;
            dArr3[0] = f12;
            float f13 = cVar.f13734c;
            dArr3[1] = f13;
            float f14 = cVar.f13736e;
            dArr3[2] = f14;
            this.f13709b.c(i10, cVar.f13732a, f11, f13, f14, f12);
            i10++;
            dArr2 = dArr2;
        }
        this.f13709b.d(f10);
        this.f13708a = m.b.a(0, dArr, dArr2);
    }

    public boolean h() {
        return this.f13713f == 1;
    }

    public String toString() {
        String str = this.f13710c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator it = this.f13714g.iterator();
        while (it.hasNext()) {
            str = str + "[" + ((c) it.next()).f13732a + " , " + decimalFormat.format(r2.f13733b) + "] ";
        }
        return str;
    }
}
