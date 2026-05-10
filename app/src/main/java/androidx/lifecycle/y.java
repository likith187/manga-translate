package androidx.lifecycle;

import androidx.lifecycle.l;
import i.b;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {

    /* JADX INFO: renamed from: k */
    static final Object f2850k = new Object();

    /* JADX INFO: renamed from: a */
    final Object f2851a;

    /* JADX INFO: renamed from: b */
    private i.b f2852b;

    /* JADX INFO: renamed from: c */
    int f2853c;

    /* JADX INFO: renamed from: d */
    private boolean f2854d;

    /* JADX INFO: renamed from: e */
    private volatile Object f2855e;

    /* JADX INFO: renamed from: f */
    volatile Object f2856f;

    /* JADX INFO: renamed from: g */
    private int f2857g;

    /* JADX INFO: renamed from: h */
    private boolean f2858h;

    /* JADX INFO: renamed from: i */
    private boolean f2859i;

    /* JADX INFO: renamed from: j */
    private final Runnable f2860j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (y.this.f2851a) {
                obj = y.this.f2856f;
                y.this.f2856f = y.f2850k;
            }
            y.this.n(obj);
        }
    }

    private class b extends d {
        b(b0 b0Var) {
            super(b0Var);
        }

        @Override // androidx.lifecycle.y.d
        boolean d() {
            return true;
        }
    }

    class c extends d implements p {

        /* JADX INFO: renamed from: h */
        final s f2863h;

        c(s sVar, b0 b0Var) {
            super(b0Var);
            this.f2863h = sVar;
        }

        @Override // androidx.lifecycle.y.d
        void b() {
            this.f2863h.getLifecycle().d(this);
        }

        @Override // androidx.lifecycle.y.d
        boolean c(s sVar) {
            return this.f2863h == sVar;
        }

        @Override // androidx.lifecycle.y.d
        boolean d() {
            return this.f2863h.getLifecycle().b().isAtLeast(l.b.STARTED);
        }

        @Override // androidx.lifecycle.p
        public void onStateChanged(s sVar, l.a aVar) {
            l.b bVarB = this.f2863h.getLifecycle().b();
            if (bVarB == l.b.DESTROYED) {
                y.this.l(this.f2865a);
                return;
            }
            l.b bVar = null;
            while (bVar != bVarB) {
                a(d());
                bVar = bVarB;
                bVarB = this.f2863h.getLifecycle().b();
            }
        }
    }

    private abstract class d {

        /* JADX INFO: renamed from: a */
        final b0 f2865a;

        /* JADX INFO: renamed from: b */
        boolean f2866b;

        /* JADX INFO: renamed from: c */
        int f2867c = -1;

        d(b0 b0Var) {
            this.f2865a = b0Var;
        }

        void a(boolean z10) {
            if (z10 == this.f2866b) {
                return;
            }
            this.f2866b = z10;
            y.this.b(z10 ? 1 : -1);
            if (this.f2866b) {
                y.this.d(this);
            }
        }

        void b() {
        }

        boolean c(s sVar) {
            return false;
        }

        abstract boolean d();
    }

    public y(Object obj) {
        this.f2851a = new Object();
        this.f2852b = new i.b();
        this.f2853c = 0;
        this.f2856f = f2850k;
        this.f2860j = new a();
        this.f2855e = obj;
        this.f2857g = 0;
    }

    static void a(String str) {
        if (h.c.g().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void c(d dVar) {
        if (dVar.f2866b) {
            if (!dVar.d()) {
                dVar.a(false);
                return;
            }
            int i10 = dVar.f2867c;
            int i11 = this.f2857g;
            if (i10 >= i11) {
                return;
            }
            dVar.f2867c = i11;
            dVar.f2865a.b(this.f2855e);
        }
    }

    void b(int i10) {
        int i11 = this.f2853c;
        this.f2853c = i10 + i11;
        if (this.f2854d) {
            return;
        }
        this.f2854d = true;
        while (true) {
            try {
                int i12 = this.f2853c;
                if (i11 == i12) {
                    this.f2854d = false;
                    return;
                }
                boolean z10 = i11 == 0 && i12 > 0;
                boolean z11 = i11 > 0 && i12 == 0;
                if (z10) {
                    i();
                } else if (z11) {
                    j();
                }
                i11 = i12;
            } catch (Throwable th) {
                this.f2854d = false;
                throw th;
            }
        }
    }

    void d(d dVar) {
        if (this.f2858h) {
            this.f2859i = true;
            return;
        }
        this.f2858h = true;
        do {
            this.f2859i = false;
            if (dVar != null) {
                c(dVar);
                dVar = null;
            } else {
                b.d dVarD = this.f2852b.d();
                while (dVarD.hasNext()) {
                    c((d) ((Map.Entry) dVarD.next()).getValue());
                    if (this.f2859i) {
                        break;
                    }
                }
            }
        } while (this.f2859i);
        this.f2858h = false;
    }

    public Object e() {
        Object obj = this.f2855e;
        if (obj != f2850k) {
            return obj;
        }
        return null;
    }

    public boolean f() {
        return this.f2853c > 0;
    }

    public void g(s sVar, b0 b0Var) {
        a("observe");
        if (sVar.getLifecycle().b() == l.b.DESTROYED) {
            return;
        }
        c cVar = new c(sVar, b0Var);
        d dVar = (d) this.f2852b.g(b0Var, cVar);
        if (dVar != null && !dVar.c(sVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (dVar != null) {
            return;
        }
        sVar.getLifecycle().a(cVar);
    }

    public void h(b0 b0Var) {
        a("observeForever");
        b bVar = new b(b0Var);
        d dVar = (d) this.f2852b.g(b0Var, bVar);
        if (dVar instanceof c) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (dVar != null) {
            return;
        }
        bVar.a(true);
    }

    protected void i() {
    }

    protected void j() {
    }

    protected void k(Object obj) {
        boolean z10;
        synchronized (this.f2851a) {
            z10 = this.f2856f == f2850k;
            this.f2856f = obj;
        }
        if (z10) {
            h.c.g().c(this.f2860j);
        }
    }

    public void l(b0 b0Var) {
        a("removeObserver");
        d dVar = (d) this.f2852b.h(b0Var);
        if (dVar == null) {
            return;
        }
        dVar.b();
        dVar.a(false);
    }

    public void m(s sVar) {
        a("removeObservers");
        for (Map.Entry entry : this.f2852b) {
            if (((d) entry.getValue()).c(sVar)) {
                l((b0) entry.getKey());
            }
        }
    }

    protected void n(Object obj) {
        a("setValue");
        this.f2857g++;
        this.f2855e = obj;
        d(null);
    }

    public y() {
        this.f2851a = new Object();
        this.f2852b = new i.b();
        this.f2853c = 0;
        Object obj = f2850k;
        this.f2856f = obj;
        this.f2860j = new a();
        this.f2855e = obj;
        this.f2857g = -1;
    }
}
