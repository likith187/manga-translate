package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f15101h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    p f15104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    p f15105d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f15107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f15108g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15102a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15103b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f15106e = new ArrayList();

    m(p pVar, int i10) {
        this.f15104c = null;
        this.f15105d = null;
        int i11 = f15101h;
        this.f15107f = i11;
        f15101h = i11 + 1;
        this.f15104c = pVar;
        this.f15105d = pVar;
        this.f15108g = i10;
    }

    private long c(f fVar, long j10) {
        p pVar = fVar.f15086d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15093k.size();
        long jMin = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) fVar.f15093k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15086d != pVar) {
                    jMin = Math.min(jMin, c(fVar2, ((long) fVar2.f15088f) + j10));
                }
            }
        }
        if (fVar != pVar.f15134i) {
            return jMin;
        }
        long j11 = j10 - pVar.j();
        return Math.min(Math.min(jMin, c(pVar.f15133h, j11)), j11 - ((long) pVar.f15133h.f15088f));
    }

    private long d(f fVar, long j10) {
        p pVar = fVar.f15086d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15093k.size();
        long jMax = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) fVar.f15093k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15086d != pVar) {
                    jMax = Math.max(jMax, d(fVar2, ((long) fVar2.f15088f) + j10));
                }
            }
        }
        if (fVar != pVar.f15133h) {
            return jMax;
        }
        long j11 = j10 + pVar.j();
        return Math.max(Math.max(jMax, d(pVar.f15134i, j11)), j11 - ((long) pVar.f15134i.f15088f));
    }

    public void a(p pVar) {
        this.f15106e.add(pVar);
        this.f15105d = pVar;
    }

    public long b(o.f fVar, int i10) {
        p pVar = this.f15104c;
        if (pVar instanceof c) {
            if (((c) pVar).f15131f != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(pVar instanceof l)) {
                return 0L;
            }
        } else if (!(pVar instanceof n)) {
            return 0L;
        }
        f fVar2 = (i10 == 0 ? fVar.f14177e : fVar.f14179f).f15133h;
        f fVar3 = (i10 == 0 ? fVar.f14177e : fVar.f14179f).f15134i;
        boolean zContains = pVar.f15133h.f15094l.contains(fVar2);
        boolean zContains2 = this.f15104c.f15134i.f15094l.contains(fVar3);
        long j10 = this.f15104c.j();
        if (!zContains || !zContains2) {
            if (zContains) {
                return Math.max(d(this.f15104c.f15133h, r12.f15088f), ((long) this.f15104c.f15133h.f15088f) + j10);
            }
            if (!zContains2) {
                p pVar2 = this.f15104c;
                return (((long) pVar2.f15133h.f15088f) + pVar2.j()) - ((long) this.f15104c.f15134i.f15088f);
            }
            return Math.max(-c(this.f15104c.f15134i, r12.f15088f), ((long) (-this.f15104c.f15134i.f15088f)) + j10);
        }
        long jD = d(this.f15104c.f15133h, 0L);
        long jC = c(this.f15104c.f15134i, 0L);
        long j11 = jD - j10;
        p pVar3 = this.f15104c;
        int i11 = pVar3.f15134i.f15088f;
        if (j11 >= (-i11)) {
            j11 += (long) i11;
        }
        int i12 = pVar3.f15133h.f15088f;
        long j12 = ((-jC) - j10) - ((long) i12);
        if (j12 >= i12) {
            j12 -= (long) i12;
        }
        float fS = pVar3.f15127b.s(i10);
        float f10 = fS > 0.0f ? (long) ((j12 / fS) + (j11 / (1.0f - fS))) : 0L;
        long j13 = ((long) ((f10 * fS) + 0.5f)) + j10 + ((long) ((f10 * (1.0f - fS)) + 0.5f));
        p pVar4 = this.f15104c;
        return (((long) pVar4.f15133h.f15088f) + j13) - ((long) pVar4.f15134i.f15088f);
    }
}
