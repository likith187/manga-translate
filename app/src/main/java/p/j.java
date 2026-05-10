package p;

/* JADX INFO: loaded from: classes.dex */
class j extends p {
    j(o.e eVar) {
        super(eVar);
        eVar.f14177e.f();
        eVar.f14179f.f();
        this.f15131f = ((o.h) eVar).x1();
    }

    private void q(f fVar) {
        this.f15133h.f15093k.add(fVar);
        fVar.f15094l.add(this.f15133h);
    }

    @Override // p.p, p.d
    public void a(d dVar) {
        f fVar = this.f15133h;
        if (fVar.f15085c && !fVar.f15092j) {
            this.f15133h.d((int) ((((f) fVar.f15094l.get(0)).f15089g * ((o.h) this.f15127b).A1()) + 0.5f));
        }
    }

    @Override // p.p
    void d() {
        o.h hVar = (o.h) this.f15127b;
        int iY1 = hVar.y1();
        int iZ1 = hVar.z1();
        hVar.A1();
        if (hVar.x1() == 1) {
            if (iY1 != -1) {
                this.f15133h.f15094l.add(this.f15127b.f14174c0.f14177e.f15133h);
                this.f15127b.f14174c0.f14177e.f15133h.f15093k.add(this.f15133h);
                this.f15133h.f15088f = iY1;
            } else if (iZ1 != -1) {
                this.f15133h.f15094l.add(this.f15127b.f14174c0.f14177e.f15134i);
                this.f15127b.f14174c0.f14177e.f15134i.f15093k.add(this.f15133h);
                this.f15133h.f15088f = -iZ1;
            } else {
                f fVar = this.f15133h;
                fVar.f15084b = true;
                fVar.f15094l.add(this.f15127b.f14174c0.f14177e.f15134i);
                this.f15127b.f14174c0.f14177e.f15134i.f15093k.add(this.f15133h);
            }
            q(this.f15127b.f14177e.f15133h);
            q(this.f15127b.f14177e.f15134i);
            return;
        }
        if (iY1 != -1) {
            this.f15133h.f15094l.add(this.f15127b.f14174c0.f14179f.f15133h);
            this.f15127b.f14174c0.f14179f.f15133h.f15093k.add(this.f15133h);
            this.f15133h.f15088f = iY1;
        } else if (iZ1 != -1) {
            this.f15133h.f15094l.add(this.f15127b.f14174c0.f14179f.f15134i);
            this.f15127b.f14174c0.f14179f.f15134i.f15093k.add(this.f15133h);
            this.f15133h.f15088f = -iZ1;
        } else {
            f fVar2 = this.f15133h;
            fVar2.f15084b = true;
            fVar2.f15094l.add(this.f15127b.f14174c0.f14179f.f15134i);
            this.f15127b.f14174c0.f14179f.f15134i.f15093k.add(this.f15133h);
        }
        q(this.f15127b.f14179f.f15133h);
        q(this.f15127b.f14179f.f15134i);
    }

    @Override // p.p
    public void e() {
        if (((o.h) this.f15127b).x1() == 1) {
            this.f15127b.r1(this.f15133h.f15089g);
        } else {
            this.f15127b.s1(this.f15133h.f15089g);
        }
    }

    @Override // p.p
    void f() {
        this.f15133h.c();
    }

    @Override // p.p
    boolean m() {
        return false;
    }
}
