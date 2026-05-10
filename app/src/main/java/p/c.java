package p;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class c extends p {

    /* JADX INFO: renamed from: k */
    ArrayList f15072k;

    /* JADX INFO: renamed from: l */
    private int f15073l;

    public c(o.e eVar, int i10) {
        super(eVar);
        this.f15072k = new ArrayList();
        this.f15131f = i10;
        q();
    }

    private void q() {
        o.e eVar;
        o.e eVar2 = this.f15127b;
        o.e eVarN = eVar2.N(this.f15131f);
        while (true) {
            o.e eVar3 = eVarN;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            } else {
                eVarN = eVar2.N(this.f15131f);
            }
        }
        this.f15127b = eVar;
        this.f15072k.add(eVar.P(this.f15131f));
        o.e eVarL = eVar.L(this.f15131f);
        while (eVarL != null) {
            this.f15072k.add(eVarL.P(this.f15131f));
            eVarL = eVarL.L(this.f15131f);
        }
        for (p pVar : this.f15072k) {
            int i10 = this.f15131f;
            if (i10 == 0) {
                pVar.f15127b.f14173c = this;
            } else if (i10 == 1) {
                pVar.f15127b.f14175d = this;
            }
        }
        if (this.f15131f == 0 && ((o.f) this.f15127b.M()).V1() && this.f15072k.size() > 1) {
            ArrayList arrayList = this.f15072k;
            this.f15127b = ((p) arrayList.get(arrayList.size() - 1)).f15127b;
        }
        this.f15073l = this.f15131f == 0 ? this.f15127b.B() : this.f15127b.U();
    }

    private o.e r() {
        for (int i10 = 0; i10 < this.f15072k.size(); i10++) {
            p pVar = (p) this.f15072k.get(i10);
            if (pVar.f15127b.X() != 8) {
                return pVar.f15127b;
            }
        }
        return null;
    }

    private o.e s() {
        for (int size = this.f15072k.size() - 1; size >= 0; size--) {
            p pVar = (p) this.f15072k.get(size);
            if (pVar.f15127b.X() != 8) {
                return pVar.f15127b;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:389:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0153  */
    @Override // p.p, p.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(p.d r27) {
        /*
            Method dump skipped, instruction units count: 1062
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p.c.a(p.d):void");
    }

    @Override // p.p
    void d() {
        Iterator it = this.f15072k.iterator();
        while (it.hasNext()) {
            ((p) it.next()).d();
        }
        int size = this.f15072k.size();
        if (size < 1) {
            return;
        }
        o.e eVar = ((p) this.f15072k.get(0)).f15127b;
        o.e eVar2 = ((p) this.f15072k.get(size - 1)).f15127b;
        if (this.f15131f == 0) {
            o.d dVar = eVar.Q;
            o.d dVar2 = eVar2.S;
            f fVarI = i(dVar, 0);
            int iF = dVar.f();
            o.e eVarR = r();
            if (eVarR != null) {
                iF = eVarR.Q.f();
            }
            if (fVarI != null) {
                b(this.f15133h, fVarI, iF);
            }
            f fVarI2 = i(dVar2, 0);
            int iF2 = dVar2.f();
            o.e eVarS = s();
            if (eVarS != null) {
                iF2 = eVarS.S.f();
            }
            if (fVarI2 != null) {
                b(this.f15134i, fVarI2, -iF2);
            }
        } else {
            o.d dVar3 = eVar.R;
            o.d dVar4 = eVar2.T;
            f fVarI3 = i(dVar3, 1);
            int iF3 = dVar3.f();
            o.e eVarR2 = r();
            if (eVarR2 != null) {
                iF3 = eVarR2.R.f();
            }
            if (fVarI3 != null) {
                b(this.f15133h, fVarI3, iF3);
            }
            f fVarI4 = i(dVar4, 1);
            int iF4 = dVar4.f();
            o.e eVarS2 = s();
            if (eVarS2 != null) {
                iF4 = eVarS2.T.f();
            }
            if (fVarI4 != null) {
                b(this.f15134i, fVarI4, -iF4);
            }
        }
        this.f15133h.f15083a = this;
        this.f15134i.f15083a = this;
    }

    @Override // p.p
    public void e() {
        for (int i10 = 0; i10 < this.f15072k.size(); i10++) {
            ((p) this.f15072k.get(i10)).e();
        }
    }

    @Override // p.p
    void f() {
        this.f15128c = null;
        Iterator it = this.f15072k.iterator();
        while (it.hasNext()) {
            ((p) it.next()).f();
        }
    }

    @Override // p.p
    public long j() {
        int size = this.f15072k.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            p pVar = (p) this.f15072k.get(i10);
            j10 = j10 + ((long) pVar.f15133h.f15088f) + pVar.j() + ((long) pVar.f15134i.f15088f);
        }
        return j10;
    }

    @Override // p.p
    boolean m() {
        int size = this.f15072k.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!((p) this.f15072k.get(i10)).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f15131f == 0 ? "horizontal : " : "vertical : ");
        for (p pVar : this.f15072k) {
            sb.append("<");
            sb.append(pVar);
            sb.append("> ");
        }
        return sb.toString();
    }
}
