package p;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d */
    p f15086d;

    /* JADX INFO: renamed from: f */
    int f15088f;

    /* JADX INFO: renamed from: g */
    public int f15089g;

    /* JADX INFO: renamed from: a */
    public d f15083a = null;

    /* JADX INFO: renamed from: b */
    public boolean f15084b = false;

    /* JADX INFO: renamed from: c */
    public boolean f15085c = false;

    /* JADX INFO: renamed from: e */
    a f15087e = a.UNKNOWN;

    /* JADX INFO: renamed from: h */
    int f15090h = 1;

    /* JADX INFO: renamed from: i */
    g f15091i = null;

    /* JADX INFO: renamed from: j */
    public boolean f15092j = false;

    /* JADX INFO: renamed from: k */
    List f15093k = new ArrayList();

    /* JADX INFO: renamed from: l */
    List f15094l = new ArrayList();

    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.f15086d = pVar;
    }

    @Override // p.d
    public void a(d dVar) {
        Iterator it = this.f15094l.iterator();
        while (it.hasNext()) {
            if (!((f) it.next()).f15092j) {
                return;
            }
        }
        this.f15085c = true;
        d dVar2 = this.f15083a;
        if (dVar2 != null) {
            dVar2.a(this);
        }
        if (this.f15084b) {
            this.f15086d.a(this);
            return;
        }
        f fVar = null;
        int i10 = 0;
        for (f fVar2 : this.f15094l) {
            if (!(fVar2 instanceof g)) {
                i10++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i10 == 1 && fVar.f15092j) {
            g gVar = this.f15091i;
            if (gVar != null) {
                if (!gVar.f15092j) {
                    return;
                } else {
                    this.f15088f = this.f15090h * gVar.f15089g;
                }
            }
            d(fVar.f15089g + this.f15088f);
        }
        d dVar3 = this.f15083a;
        if (dVar3 != null) {
            dVar3.a(this);
        }
    }

    public void b(d dVar) {
        this.f15093k.add(dVar);
        if (this.f15092j) {
            dVar.a(dVar);
        }
    }

    public void c() {
        this.f15094l.clear();
        this.f15093k.clear();
        this.f15092j = false;
        this.f15089g = 0;
        this.f15085c = false;
        this.f15084b = false;
    }

    public void d(int i10) {
        if (this.f15092j) {
            return;
        }
        this.f15092j = true;
        this.f15089g = i10;
        for (d dVar : this.f15093k) {
            dVar.a(dVar);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15086d.f15127b.v());
        sb.append(":");
        sb.append(this.f15087e);
        sb.append("(");
        sb.append(this.f15092j ? Integer.valueOf(this.f15089g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f15094l.size());
        sb.append(":d=");
        sb.append(this.f15093k.size());
        sb.append(">");
        return sb.toString();
    }
}
