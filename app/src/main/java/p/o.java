package p;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static int f15112g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f15114b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f15116d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f15113a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f15115c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f15117e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15118f = -1;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference f15119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f15120b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f15121c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f15122d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f15123e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f15124f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f15125g;

        a(o.e eVar, l.d dVar, int i10) {
            this.f15119a = new WeakReference(eVar);
            this.f15120b = dVar.y(eVar.Q);
            this.f15121c = dVar.y(eVar.R);
            this.f15122d = dVar.y(eVar.S);
            this.f15123e = dVar.y(eVar.T);
            this.f15124f = dVar.y(eVar.U);
            this.f15125g = i10;
        }
    }

    public o(int i10) {
        int i11 = f15112g;
        f15112g = i11 + 1;
        this.f15114b = i11;
        this.f15116d = i10;
    }

    private String e() {
        int i10 = this.f15116d;
        return i10 == 0 ? "Horizontal" : i10 == 1 ? "Vertical" : i10 == 2 ? "Both" : "Unknown";
    }

    private int j(l.d dVar, ArrayList arrayList, int i10) {
        int iY;
        int iY2;
        o.f fVar = (o.f) ((o.e) arrayList.get(0)).M();
        dVar.E();
        fVar.g(dVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            ((o.e) arrayList.get(i11)).g(dVar, false);
        }
        if (i10 == 0 && fVar.f14228g1 > 0) {
            o.b.b(fVar, dVar, arrayList, 0);
        }
        if (i10 == 1 && fVar.f14229h1 > 0) {
            o.b.b(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.A();
        } catch (Exception e10) {
            System.err.println(e10.toString() + "\n" + Arrays.toString(e10.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.f15117e = new ArrayList();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f15117e.add(new a((o.e) arrayList.get(i12), dVar, i10));
        }
        if (i10 == 0) {
            iY = dVar.y(fVar.Q);
            iY2 = dVar.y(fVar.S);
            dVar.E();
        } else {
            iY = dVar.y(fVar.R);
            iY2 = dVar.y(fVar.T);
            dVar.E();
        }
        return iY2 - iY;
    }

    public boolean a(o.e eVar) {
        if (this.f15113a.contains(eVar)) {
            return false;
        }
        this.f15113a.add(eVar);
        return true;
    }

    public void b(ArrayList arrayList) {
        int size = this.f15113a.size();
        if (this.f15118f != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                o oVar = (o) arrayList.get(i10);
                if (this.f15118f == oVar.f15114b) {
                    g(this.f15116d, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f15114b;
    }

    public int d() {
        return this.f15116d;
    }

    public int f(l.d dVar, int i10) {
        if (this.f15113a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f15113a, i10);
    }

    public void g(int i10, o oVar) {
        for (o.e eVar : this.f15113a) {
            oVar.a(eVar);
            if (i10 == 0) {
                eVar.S0 = oVar.c();
            } else {
                eVar.T0 = oVar.c();
            }
        }
        this.f15118f = oVar.f15114b;
    }

    public void h(boolean z10) {
        this.f15115c = z10;
    }

    public void i(int i10) {
        this.f15116d = i10;
    }

    public String toString() {
        String str = e() + " [" + this.f15114b + "] <";
        Iterator it = this.f15113a.iterator();
        while (it.hasNext()) {
            str = str + " " + ((o.e) it.next()).v();
        }
        return str + " >";
    }
}
