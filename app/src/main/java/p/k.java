package p;

import java.util.Iterator;
import p.f;

/* JADX INFO: loaded from: classes.dex */
class k extends p {
    k(o.e eVar) {
        super(eVar);
    }

    private void q(f fVar) {
        this.f15133h.f15093k.add(fVar);
        fVar.f15094l.add(this.f15133h);
    }

    @Override // p.p, p.d
    public void a(d dVar) {
        o.a aVar = (o.a) this.f15127b;
        int iA1 = aVar.A1();
        Iterator it = this.f15133h.f15094l.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it.hasNext()) {
            int i12 = ((f) it.next()).f15089g;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (iA1 == 0 || iA1 == 2) {
            this.f15133h.d(i11 + aVar.B1());
        } else {
            this.f15133h.d(i10 + aVar.B1());
        }
    }

    @Override // p.p
    void d() {
        o.e eVar = this.f15127b;
        if (eVar instanceof o.a) {
            this.f15133h.f15084b = true;
            o.a aVar = (o.a) eVar;
            int iA1 = aVar.A1();
            boolean zZ1 = aVar.z1();
            int i10 = 0;
            if (iA1 == 0) {
                this.f15133h.f15087e = f.a.LEFT;
                while (i10 < aVar.W0) {
                    o.e eVar2 = aVar.V0[i10];
                    if (zZ1 || eVar2.X() != 8) {
                        f fVar = eVar2.f14177e.f15133h;
                        fVar.f15093k.add(this.f15133h);
                        this.f15133h.f15094l.add(fVar);
                    }
                    i10++;
                }
                q(this.f15127b.f14177e.f15133h);
                q(this.f15127b.f14177e.f15134i);
                return;
            }
            if (iA1 == 1) {
                this.f15133h.f15087e = f.a.RIGHT;
                while (i10 < aVar.W0) {
                    o.e eVar3 = aVar.V0[i10];
                    if (zZ1 || eVar3.X() != 8) {
                        f fVar2 = eVar3.f14177e.f15134i;
                        fVar2.f15093k.add(this.f15133h);
                        this.f15133h.f15094l.add(fVar2);
                    }
                    i10++;
                }
                q(this.f15127b.f14177e.f15133h);
                q(this.f15127b.f14177e.f15134i);
                return;
            }
            if (iA1 == 2) {
                this.f15133h.f15087e = f.a.TOP;
                while (i10 < aVar.W0) {
                    o.e eVar4 = aVar.V0[i10];
                    if (zZ1 || eVar4.X() != 8) {
                        f fVar3 = eVar4.f14179f.f15133h;
                        fVar3.f15093k.add(this.f15133h);
                        this.f15133h.f15094l.add(fVar3);
                    }
                    i10++;
                }
                q(this.f15127b.f14179f.f15133h);
                q(this.f15127b.f14179f.f15134i);
                return;
            }
            if (iA1 != 3) {
                return;
            }
            this.f15133h.f15087e = f.a.BOTTOM;
            while (i10 < aVar.W0) {
                o.e eVar5 = aVar.V0[i10];
                if (zZ1 || eVar5.X() != 8) {
                    f fVar4 = eVar5.f14179f.f15134i;
                    fVar4.f15093k.add(this.f15133h);
                    this.f15133h.f15094l.add(fVar4);
                }
                i10++;
            }
            q(this.f15127b.f14179f.f15133h);
            q(this.f15127b.f14179f.f15134i);
        }
    }

    @Override // p.p
    public void e() {
        o.e eVar = this.f15127b;
        if (eVar instanceof o.a) {
            int iA1 = ((o.a) eVar).A1();
            if (iA1 == 0 || iA1 == 1) {
                this.f15127b.r1(this.f15133h.f15089g);
            } else {
                this.f15127b.s1(this.f15133h.f15089g);
            }
        }
    }

    @Override // p.p
    void f() {
        this.f15128c = null;
        this.f15133h.c();
    }

    @Override // p.p
    boolean m() {
        return false;
    }
}
