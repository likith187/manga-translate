package d7;

import android.content.Context;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import d7.f;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class l implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11644a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f11650g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HashMap f11651h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b7.b f11653j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b7.a f11654k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.collection.b f11645b = new androidx.collection.b(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.collection.b f11646c = new androidx.collection.b(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11647d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f11648e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11649f = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f11652i = null;

    private l(Context context) {
        this.f11644a = context;
        t();
    }

    private void A() {
        if (this.f11648e) {
            this.f11652i.f();
            this.f11648e = false;
        }
    }

    private void E() {
        if (this.f11648e) {
            return;
        }
        this.f11652i.d();
        this.f11648e = true;
    }

    private void G() {
        this.f11653j.i(a7.a.f102a);
        I();
    }

    private void I() {
        if (a7.b.a()) {
            a7.b.d("PhysicsWorld-Frame", "syncMoverChanging start ===========> mCurrentRunningBehaviors =:" + this.f11645b.size());
        }
        for (d dVar : this.f11645b) {
            if (dVar != null) {
                dVar.n();
                J(dVar);
                z(dVar);
                if (a7.b.a()) {
                    a7.b.d("PhysicsWorld-Frame", "updateBehavior : " + dVar);
                }
                if (dVar.u()) {
                    if (a7.b.b()) {
                        a7.b.c("syncMoverChanging : behavior is steady");
                    }
                    dVar.D();
                }
            }
        }
        this.f11647d = this.f11645b.isEmpty();
        if (a7.b.a()) {
            a7.b.d("PhysicsWorld-Frame", "syncMoverChanging end ===========> mCurrentRunningBehaviors =:" + this.f11645b.size());
        }
        if (this.f11647d) {
            A();
        } else {
            this.f11652i.d();
        }
    }

    private b7.a e(n nVar, int i10) {
        b7.a aVarK = k(this.f11653j.f().d(a7.a.d(nVar.f11663e.f109a), a7.a.d(nVar.f11663e.f110b)), 1, i10, a7.a.d(nVar.f11659a), a7.a.d(nVar.f11660b), n(i10));
        aVarK.f4235e.f();
        aVarK.l(true);
        return aVarK;
    }

    private void g() {
        int i10 = 0;
        while (i10 < this.f11646c.size()) {
            d dVar = (d) this.f11646c.k(i10);
            if (dVar != null && C(dVar)) {
                i10--;
            }
            i10++;
        }
        this.f11646c.clear();
    }

    private void h() {
        for (int i10 = 0; i10 < this.f11646c.size(); i10++) {
            d dVar = (d) this.f11646c.k(i10);
            if (dVar != null) {
                o(dVar.f11613k);
            }
        }
    }

    private void i() {
        HashMap map = this.f11650g;
        if (map != null) {
            map.clear();
        }
        HashMap map2 = this.f11651h;
        if (map2 != null) {
            map2.clear();
        }
    }

    public static l j(Context context) {
        return new l(context);
    }

    private void m() {
        this.f11653j = new b7.b();
        this.f11654k = k(new a7.e(), 0, 5, 0.0f, 0.0f, "Ground");
        if (a7.b.b()) {
            a7.b.c("createWorld : " + this);
        }
    }

    private static String n(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "custom" : "alpha" : "rotation" : "scale" : "position";
    }

    private void t() {
        f fVar = new f();
        this.f11652i = fVar;
        fVar.e(this);
        u();
        m();
    }

    private void u() {
        a7.a.e(this.f11644a.getResources().getDisplayMetrics().density);
        Display defaultDisplay = ((WindowManager) this.f11644a.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay != null) {
            a7.a.f(1.0f / defaultDisplay.getRefreshRate());
        }
        if (a7.b.b()) {
            a7.b.c("initConfig : sPhysicalSizeToPixelsRatio =:" + a7.a.f104c + ",sSteadyAccuracy =:" + a7.a.f103b + ",sRefreshRate =:" + a7.a.f102a);
        }
    }

    private void w(d dVar) {
        a aVar;
        HashMap map = this.f11650g;
        if (map == null || (aVar = (a) map.get(dVar)) == null) {
            return;
        }
        aVar.onAnimationCancel(dVar);
    }

    private void x(d dVar) {
        a aVar;
        HashMap map = this.f11650g;
        if (map == null || (aVar = (a) map.get(dVar)) == null) {
            return;
        }
        aVar.onAnimationEnd(dVar);
    }

    private void y(d dVar) {
        a aVar;
        HashMap map = this.f11650g;
        if (map == null || (aVar = (a) map.get(dVar)) == null) {
            return;
        }
        aVar.onAnimationStart(dVar);
    }

    private void z(d dVar) {
        b bVar;
        HashMap map = this.f11651h;
        if (map == null || (bVar = (b) map.get(dVar)) == null) {
            return;
        }
        bVar.onAnimationUpdate(dVar);
    }

    public void B() {
        f("release");
        h();
        i();
        g();
        if (a7.b.b()) {
            a7.b.c("release : " + this);
        }
    }

    public boolean C(d dVar) {
        if (dVar == null) {
            return false;
        }
        boolean zRemove = this.f11646c.remove(dVar);
        if (a7.b.b()) {
            a7.b.c("removeBehavior behavior =:" + dVar + ",removed =:" + zRemove);
        }
        if (zRemove) {
            dVar.A();
        }
        return zRemove;
    }

    public void D() {
        if (this.f11649f) {
            if (a7.b.b()) {
                a7.b.c("restart");
            }
            this.f11649f = false;
            E();
            for (int i10 = 0; i10 < this.f11645b.size(); i10++) {
                d dVar = (d) this.f11645b.k(i10);
                if (dVar != null) {
                    y(dVar);
                }
            }
        }
    }

    void F(d dVar) {
        Object obj;
        Object obj2;
        b7.a aVar;
        b7.a aVar2;
        if (this.f11649f) {
            return;
        }
        if (this.f11645b.contains(dVar) && this.f11648e) {
            return;
        }
        if (a7.b.b()) {
            a7.b.c("startBehavior behavior =:" + dVar);
        }
        int i10 = 0;
        while (i10 < this.f11645b.size()) {
            d dVar2 = (d) this.f11645b.k(i10);
            if (dVar2 != null && (obj = dVar2.f11616n) != null && (obj2 = dVar.f11616n) != null && obj == obj2 && (aVar = dVar2.f11613k) != null && (aVar2 = dVar.f11613k) != null && aVar == aVar2 && dVar2.D()) {
                i10--;
            }
            i10++;
        }
        this.f11645b.add(dVar);
        this.f11647d = false;
        E();
        y(dVar);
    }

    void H(d dVar) {
        this.f11645b.remove(dVar);
        if (a7.b.b()) {
            a7.b.c("stopBehavior behavior =:" + dVar + ",mCurrentRunningBehaviors.size() =:" + this.f11645b.size());
        }
        x(dVar);
    }

    void J(d dVar) {
        dVar.F();
    }

    public void a(d dVar, a aVar) {
        if (this.f11650g == null) {
            this.f11650g = new HashMap(1);
        }
        this.f11650g.put(dVar, aVar);
    }

    public void b(b bVar, d... dVarArr) {
        for (d dVar : dVarArr) {
            c(dVar, bVar);
        }
    }

    public void c(d dVar, b bVar) {
        if (this.f11651h == null) {
            this.f11651h = new HashMap(1);
        }
        this.f11651h.put(dVar, bVar);
    }

    public d d(d dVar) {
        Object obj;
        Object obj2;
        dVar.d(this);
        int i10 = 0;
        while (i10 < this.f11646c.size()) {
            d dVar2 = (d) this.f11646c.k(i10);
            if (dVar2 != null && (obj = dVar2.f11616n) != null && (obj2 = dVar.f11616n) != null && obj == obj2 && dVar2.s() == dVar.s() && C(dVar2)) {
                i10--;
            }
            i10++;
        }
        this.f11646c.add(dVar);
        if (a7.b.b()) {
            a7.b.c("addBehavior behavior =:" + dVar + ",mAllBehaviors.size =:" + this.f11646c.size());
        }
        return dVar;
    }

    @Override // d7.f.a
    public void doFrame(long j10) {
        if (this.f11649f) {
            return;
        }
        G();
    }

    public void f(String str) {
        if (this.f11649f) {
            return;
        }
        if (a7.b.b()) {
            a7.b.c("cancel with reason : " + str);
        }
        for (int i10 = 0; i10 < this.f11645b.size(); i10++) {
            d dVar = (d) this.f11645b.k(i10);
            if (dVar != null) {
                w(dVar);
            }
        }
        A();
        this.f11649f = true;
    }

    b7.a k(a7.e eVar, int i10, int i11, float f10, float f11, String str) {
        return this.f11653j.a(eVar, i10, i11, f10, f11, str);
    }

    c7.b l(c7.c cVar) {
        return this.f11653j.b(cVar);
    }

    boolean o(b7.a aVar) {
        if (aVar == null) {
            return false;
        }
        this.f11653j.c(aVar);
        return true;
    }

    boolean p(c7.b bVar) {
        this.f11653j.d(bVar);
        return true;
    }

    b7.a q() {
        return this.f11654k;
    }

    b7.a r(n nVar, int i10) {
        b7.a aVar;
        if (a7.b.b()) {
            a7.b.c("getOrCreatePropertyBody : uiItem =:" + nVar + ",propertyType =:" + i10);
        }
        for (d dVar : this.f11646c) {
            n nVar2 = dVar.f11612j;
            if (nVar2 != null && nVar2 == nVar && (aVar = dVar.f11613k) != null && aVar.g() == i10) {
                return dVar.f11613k;
            }
        }
        return e(nVar, i10);
    }

    n s(Object obj) {
        Object obj2;
        if (a7.b.b()) {
            a7.b.c("getOrCreateUIItem : target =:" + obj);
        }
        Iterator it = this.f11646c.iterator();
        while (it.hasNext()) {
            n nVar = ((d) it.next()).f11612j;
            if (nVar != null && (obj2 = nVar.f11661c) != null && obj != null && obj2 == obj) {
                return nVar;
            }
        }
        if (!(obj instanceof View)) {
            return obj instanceof n ? (n) obj : new n().b(0.0f, 0.0f);
        }
        View view = (View) obj;
        n nVarB = new n(obj).b(view.getMeasuredWidth(), view.getMeasuredHeight());
        nVarB.c(view.getX(), view.getY());
        nVarB.d(view.getScaleX(), view.getScaleY());
        return nVarB;
    }

    public boolean v() {
        return this.f11648e;
    }
}
