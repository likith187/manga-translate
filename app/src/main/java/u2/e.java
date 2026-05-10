package u2;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static int f15837o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f15838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f15841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f15842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f15843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f15844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f15845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f15846i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private double f15847j = 0.005d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f15848k = 0.005d;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CopyOnWriteArraySet f15849l = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private double f15850m = 0.0d;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final u2.b f15851n;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f15852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double f15853b;

        private b() {
        }
    }

    e(u2.b bVar) {
        this.f15841d = new b();
        this.f15842e = new b();
        this.f15843f = new b();
        if (bVar == null) {
            throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
        }
        this.f15851n = bVar;
        StringBuilder sb = new StringBuilder();
        sb.append("spring:");
        int i10 = f15837o;
        f15837o = i10 + 1;
        sb.append(i10);
        this.f15840c = sb.toString();
        o(f.f15854c);
    }

    private double d(b bVar) {
        return Math.abs(this.f15845h - bVar.f15852a);
    }

    private void h(double d10) {
        b bVar = this.f15841d;
        double d11 = bVar.f15852a * d10;
        b bVar2 = this.f15842e;
        double d12 = 1.0d - d10;
        bVar.f15852a = d11 + (bVar2.f15852a * d12);
        bVar.f15853b = (bVar.f15853b * d10) + (bVar2.f15853b * d12);
    }

    public e a(h hVar) {
        if (hVar == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.f15849l.add(hVar);
        return this;
    }

    void b(double d10) {
        double d11;
        boolean z10;
        boolean z11;
        boolean zI = i();
        if (zI && this.f15846i) {
            return;
        }
        this.f15850m += d10 <= 0.064d ? d10 : 0.064d;
        f fVar = this.f15838a;
        double d12 = fVar.f15856b;
        double d13 = fVar.f15855a;
        b bVar = this.f15841d;
        double d14 = bVar.f15852a;
        double d15 = bVar.f15853b;
        b bVar2 = this.f15843f;
        double d16 = bVar2.f15852a;
        double d17 = bVar2.f15853b;
        while (true) {
            d11 = this.f15850m;
            if (d11 < 0.001d) {
                break;
            }
            double d18 = d11 - 0.001d;
            this.f15850m = d18;
            if (d18 < 0.001d) {
                b bVar3 = this.f15842e;
                bVar3.f15852a = d14;
                bVar3.f15853b = d15;
            }
            double d19 = this.f15845h;
            double d20 = ((d19 - d16) * d12) - (d13 * d15);
            double d21 = d15 + (d20 * 0.001d * 0.5d);
            double d22 = ((d19 - (((d15 * 0.001d) * 0.5d) + d14)) * d12) - (d13 * d21);
            double d23 = d15 + (d22 * 0.001d * 0.5d);
            double d24 = ((d19 - (d14 + ((d21 * 0.001d) * 0.5d))) * d12) - (d13 * d23);
            double d25 = d14 + (d23 * 0.001d);
            double d26 = d15 + (d24 * 0.001d);
            d14 += (d15 + ((d21 + d23) * 2.0d) + d26) * 0.16666666666666666d * 0.001d;
            d15 += (d20 + ((d22 + d24) * 2.0d) + (((d19 - d25) * d12) - (d13 * d26))) * 0.16666666666666666d * 0.001d;
            d16 = d25;
            d17 = d26;
        }
        b bVar4 = this.f15843f;
        bVar4.f15852a = d16;
        bVar4.f15853b = d17;
        b bVar5 = this.f15841d;
        bVar5.f15852a = d14;
        bVar5.f15853b = d15;
        if (d11 > 0.0d) {
            h(d11 / 0.001d);
        }
        boolean z12 = true;
        if (i() || (this.f15839b && j())) {
            if (d12 > 0.0d) {
                double d27 = this.f15845h;
                this.f15844g = d27;
                this.f15841d.f15852a = d27;
            } else {
                double d28 = this.f15841d.f15852a;
                this.f15845h = d28;
                this.f15844g = d28;
            }
            p(0.0d);
            z10 = true;
        } else {
            z10 = zI;
        }
        if (this.f15846i) {
            this.f15846i = false;
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10) {
            this.f15846i = true;
        } else {
            z12 = false;
        }
        for (h hVar : this.f15849l) {
            if (z11) {
                hVar.onSpringActivate(this);
            }
            hVar.onSpringUpdate(this);
            if (z12) {
                hVar.onSpringAtRest(this);
            }
        }
    }

    public double c() {
        return this.f15841d.f15852a;
    }

    public double e() {
        return this.f15845h;
    }

    public String f() {
        return this.f15840c;
    }

    public double g() {
        return this.f15841d.f15853b;
    }

    public boolean i() {
        return Math.abs(this.f15841d.f15853b) <= this.f15847j && (d(this.f15841d) <= this.f15848k || this.f15838a.f15856b == 0.0d);
    }

    public boolean j() {
        return this.f15838a.f15856b > 0.0d && ((this.f15844g < this.f15845h && c() > this.f15845h) || (this.f15844g > this.f15845h && c() < this.f15845h));
    }

    public e k() {
        b bVar = this.f15841d;
        double d10 = bVar.f15852a;
        this.f15845h = d10;
        this.f15843f.f15852a = d10;
        bVar.f15853b = 0.0d;
        return this;
    }

    public e l(double d10) {
        return m(d10, true);
    }

    public e m(double d10, boolean z10) {
        this.f15844g = d10;
        this.f15841d.f15852a = d10;
        this.f15851n.a(f());
        Iterator it = this.f15849l.iterator();
        while (it.hasNext()) {
            ((h) it.next()).onSpringUpdate(this);
        }
        if (z10) {
            k();
        }
        return this;
    }

    public e n(double d10) {
        if (this.f15845h == d10 && i()) {
            return this;
        }
        this.f15844g = c();
        this.f15845h = d10;
        this.f15851n.a(f());
        Iterator it = this.f15849l.iterator();
        while (it.hasNext()) {
            ((h) it.next()).onSpringEndStateChange(this);
        }
        return this;
    }

    public e o(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        this.f15838a = fVar;
        return this;
    }

    public e p(double d10) {
        b bVar = this.f15841d;
        if (d10 == bVar.f15853b) {
            return this;
        }
        bVar.f15853b = d10;
        this.f15851n.a(f());
        return this;
    }

    public boolean q() {
        return (i() && r()) ? false : true;
    }

    public boolean r() {
        return this.f15846i;
    }
}
