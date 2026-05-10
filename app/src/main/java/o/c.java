package o;

import java.util.ArrayList;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f14138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected e f14139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected e f14140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e f14141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected e f14142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected e f14143f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected e f14144g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ArrayList f14145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f14146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f14147j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected float f14148k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f14149l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f14150m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f14151n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f14152o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f14153p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f14154q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f14155r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f14156s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f14157t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f14158u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f14159v;

    public c(e eVar, int i10, boolean z10) {
        this.f14138a = eVar;
        this.f14153p = i10;
        this.f14154q = z10;
    }

    private void b() {
        int i10 = this.f14153p * 2;
        e eVar = this.f14138a;
        this.f14152o = true;
        e eVar2 = eVar;
        boolean z10 = false;
        while (!z10) {
            this.f14146i++;
            e[] eVarArr = eVar.P0;
            int i11 = this.f14153p;
            e eVar3 = null;
            eVarArr[i11] = null;
            eVar.O0[i11] = null;
            if (eVar.X() != 8) {
                this.f14149l++;
                e.b bVarW = eVar.w(this.f14153p);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarW != bVar) {
                    this.f14150m += eVar.G(this.f14153p);
                }
                int iF = this.f14150m + eVar.Y[i10].f();
                this.f14150m = iF;
                int i12 = i10 + 1;
                this.f14150m = iF + eVar.Y[i12].f();
                int iF2 = this.f14151n + eVar.Y[i10].f();
                this.f14151n = iF2;
                this.f14151n = iF2 + eVar.Y[i12].f();
                if (this.f14139b == null) {
                    this.f14139b = eVar;
                }
                this.f14141d = eVar;
                e.b[] bVarArr = eVar.f14172b0;
                int i13 = this.f14153p;
                if (bVarArr[i13] == bVar) {
                    int i14 = eVar.f14217y[i13];
                    if (i14 == 0 || i14 == 3 || i14 == 2) {
                        this.f14147j++;
                        float f10 = eVar.N0[i13];
                        if (f10 > 0.0f) {
                            this.f14148k += f10;
                        }
                        if (c(eVar, i13)) {
                            if (f10 < 0.0f) {
                                this.f14155r = true;
                            } else {
                                this.f14156s = true;
                            }
                            if (this.f14145h == null) {
                                this.f14145h = new ArrayList();
                            }
                            this.f14145h.add(eVar);
                        }
                        if (this.f14143f == null) {
                            this.f14143f = eVar;
                        }
                        e eVar4 = this.f14144g;
                        if (eVar4 != null) {
                            eVar4.O0[this.f14153p] = eVar;
                        }
                        this.f14144g = eVar;
                    }
                    if (this.f14153p == 0) {
                        if (eVar.f14213w != 0 || eVar.f14219z != 0 || eVar.A != 0) {
                            this.f14152o = false;
                        }
                    } else if (eVar.f14215x != 0 || eVar.C != 0 || eVar.D != 0) {
                        this.f14152o = false;
                    }
                    if (eVar.f14180f0 != 0.0f) {
                        this.f14152o = false;
                        this.f14158u = true;
                    }
                }
            }
            if (eVar2 != eVar) {
                eVar2.P0[this.f14153p] = eVar;
            }
            d dVar = eVar.Y[i10 + 1].f14165f;
            if (dVar != null) {
                e eVar5 = dVar.f14163d;
                d dVar2 = eVar5.Y[i10].f14165f;
                if (dVar2 != null && dVar2.f14163d == eVar) {
                    eVar3 = eVar5;
                }
            }
            if (eVar3 == null) {
                eVar3 = eVar;
                z10 = true;
            }
            eVar2 = eVar;
            eVar = eVar3;
        }
        e eVar6 = this.f14139b;
        if (eVar6 != null) {
            this.f14150m -= eVar6.Y[i10].f();
        }
        e eVar7 = this.f14141d;
        if (eVar7 != null) {
            this.f14150m -= eVar7.Y[i10 + 1].f();
        }
        this.f14140c = eVar;
        if (this.f14153p == 0 && this.f14154q) {
            this.f14142e = eVar;
        } else {
            this.f14142e = this.f14138a;
        }
        this.f14157t = this.f14156s && this.f14155r;
    }

    private static boolean c(e eVar, int i10) {
        int i11;
        return eVar.X() != 8 && eVar.f14172b0[i10] == e.b.MATCH_CONSTRAINT && ((i11 = eVar.f14217y[i10]) == 0 || i11 == 3);
    }

    public void a() {
        if (!this.f14159v) {
            b();
        }
        this.f14159v = true;
    }
}
