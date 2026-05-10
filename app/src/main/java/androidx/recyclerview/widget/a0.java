package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final androidx.collection.i f3257a = new androidx.collection.i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.collection.f f3258b = new androidx.collection.f();

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static c0.e f3259d = new c0.f(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.m.b f3261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.m.b f3262c;

        private a() {
        }

        static void a() {
            while (f3259d.b() != null) {
            }
        }

        static a b() {
            a aVar = (a) f3259d.b();
            return aVar == null ? new a() : aVar;
        }

        static void c(a aVar) {
            aVar.f3260a = 0;
            aVar.f3261b = null;
            aVar.f3262c = null;
            f3259d.a(aVar);
        }
    }

    interface b {
        void a(RecyclerView.d0 d0Var);

        void b(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2);

        void c(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2);

        void d(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2);
    }

    a0() {
    }

    private RecyclerView.m.b l(RecyclerView.d0 d0Var, int i10) {
        a aVar;
        RecyclerView.m.b bVar;
        int iE = this.f3257a.e(d0Var);
        if (iE >= 0 && (aVar = (a) this.f3257a.k(iE)) != null) {
            int i11 = aVar.f3260a;
            if ((i11 & i10) != 0) {
                int i12 = (~i10) & i11;
                aVar.f3260a = i12;
                if (i10 == 4) {
                    bVar = aVar.f3261b;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    bVar = aVar.f3262c;
                }
                if ((i12 & 12) == 0) {
                    this.f3257a.i(iE);
                    a.c(aVar);
                }
                return bVar;
            }
        }
        return null;
    }

    void a(RecyclerView.d0 d0Var, RecyclerView.m.b bVar) {
        a aVarB = (a) this.f3257a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3257a.put(d0Var, aVarB);
        }
        aVarB.f3260a |= 2;
        aVarB.f3261b = bVar;
    }

    void b(RecyclerView.d0 d0Var) {
        a aVarB = (a) this.f3257a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3257a.put(d0Var, aVarB);
        }
        aVarB.f3260a |= 1;
    }

    void c(long j10, RecyclerView.d0 d0Var) {
        this.f3258b.i(j10, d0Var);
    }

    void d(RecyclerView.d0 d0Var, RecyclerView.m.b bVar) {
        a aVarB = (a) this.f3257a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3257a.put(d0Var, aVarB);
        }
        aVarB.f3262c = bVar;
        aVarB.f3260a |= 8;
    }

    void e(RecyclerView.d0 d0Var, RecyclerView.m.b bVar) {
        a aVarB = (a) this.f3257a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3257a.put(d0Var, aVarB);
        }
        aVarB.f3261b = bVar;
        aVarB.f3260a |= 4;
    }

    void f() {
        this.f3257a.clear();
        this.f3258b.a();
    }

    RecyclerView.d0 g(long j10) {
        return (RecyclerView.d0) this.f3258b.e(j10);
    }

    boolean h(RecyclerView.d0 d0Var) {
        a aVar = (a) this.f3257a.get(d0Var);
        return (aVar == null || (aVar.f3260a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.d0 d0Var) {
        a aVar = (a) this.f3257a.get(d0Var);
        return (aVar == null || (aVar.f3260a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.d0 d0Var) {
        p(d0Var);
    }

    RecyclerView.m.b m(RecyclerView.d0 d0Var) {
        return l(d0Var, 8);
    }

    RecyclerView.m.b n(RecyclerView.d0 d0Var) {
        return l(d0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.f3257a.size() - 1; size >= 0; size--) {
            RecyclerView.d0 d0Var = (RecyclerView.d0) this.f3257a.g(size);
            a aVar = (a) this.f3257a.i(size);
            int i10 = aVar.f3260a;
            if ((i10 & 3) == 3) {
                bVar.a(d0Var);
            } else if ((i10 & 1) != 0) {
                RecyclerView.m.b bVar2 = aVar.f3261b;
                if (bVar2 == null) {
                    bVar.a(d0Var);
                } else {
                    bVar.c(d0Var, bVar2, aVar.f3262c);
                }
            } else if ((i10 & 14) == 14) {
                bVar.b(d0Var, aVar.f3261b, aVar.f3262c);
            } else if ((i10 & 12) == 12) {
                bVar.d(d0Var, aVar.f3261b, aVar.f3262c);
            } else if ((i10 & 4) != 0) {
                bVar.c(d0Var, aVar.f3261b, null);
            } else if ((i10 & 8) != 0) {
                bVar.b(d0Var, aVar.f3261b, aVar.f3262c);
            }
            a.c(aVar);
        }
    }

    void p(RecyclerView.d0 d0Var) {
        a aVar = (a) this.f3257a.get(d0Var);
        if (aVar == null) {
            return;
        }
        aVar.f3260a &= -2;
    }

    void q(RecyclerView.d0 d0Var) {
        int iL = this.f3258b.l() - 1;
        while (true) {
            if (iL < 0) {
                break;
            }
            if (d0Var == this.f3258b.m(iL)) {
                this.f3258b.k(iL);
                break;
            }
            iL--;
        }
        a aVar = (a) this.f3257a.remove(d0Var);
        if (aVar != null) {
            a.c(aVar);
        }
    }
}
