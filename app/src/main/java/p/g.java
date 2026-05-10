package p;

import p.f;

/* JADX INFO: loaded from: classes.dex */
class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15095m;

    g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.f15087e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.f15087e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // p.f
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
}
