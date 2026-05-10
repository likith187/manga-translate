package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.transition.j;
import java.util.ArrayList;
import java.util.List;
import z.d;

/* JADX INFO: loaded from: classes.dex */
public class e extends androidx.fragment.app.c0 {

    class a extends j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f3654a;

        a(Rect rect) {
            this.f3654a = rect;
        }

        @Override // androidx.transition.j.f
        public Rect a(j jVar) {
            return this.f3654a;
        }
    }

    class b implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f3656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f3657b;

        b(View view, ArrayList arrayList) {
            this.f3656a = view;
            this.f3657b = arrayList;
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
            jVar.removeListener(this);
            jVar.addListener(this);
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
            jVar.removeListener(this);
            this.f3656a.setVisibility(8);
            int size = this.f3657b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f3657b.get(i10)).setVisibility(0);
            }
        }
    }

    class c extends p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f3659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f3660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f3661c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f3662f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Object f3663h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ ArrayList f3664i;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f3659a = obj;
            this.f3660b = arrayList;
            this.f3661c = obj2;
            this.f3662f = arrayList2;
            this.f3663h = obj3;
            this.f3664i = arrayList3;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void a(j jVar) {
            Object obj = this.f3659a;
            if (obj != null) {
                e.this.y(obj, this.f3660b, null);
            }
            Object obj2 = this.f3661c;
            if (obj2 != null) {
                e.this.y(obj2, this.f3662f, null);
            }
            Object obj3 = this.f3663h;
            if (obj3 != null) {
                e.this.y(obj3, this.f3664i, null);
            }
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void g(j jVar) {
            jVar.removeListener(this);
        }
    }

    class d implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f3666a;

        d(Runnable runnable) {
            this.f3666a = runnable;
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
            this.f3666a.run();
        }
    }

    /* JADX INFO: renamed from: androidx.transition.e$e, reason: collision with other inner class name */
    class C0044e extends j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f3668a;

        C0044e(Rect rect) {
            this.f3668a = rect;
        }

        @Override // androidx.transition.j.f
        public Rect a(j jVar) {
            Rect rect = this.f3668a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f3668a;
        }
    }

    private static boolean w(j jVar) {
        return (androidx.fragment.app.c0.i(jVar.getTargetIds()) && androidx.fragment.app.c0.i(jVar.getTargetNames()) && androidx.fragment.app.c0.i(jVar.getTargetTypes())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(Runnable runnable, j jVar, Runnable runnable2) {
        if (runnable != null) {
            runnable.run();
        } else {
            jVar.cancel();
            runnable2.run();
        }
    }

    @Override // androidx.fragment.app.c0
    public void a(Object obj, View view) {
        if (obj != null) {
            ((j) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.c0
    public void b(Object obj, ArrayList arrayList) {
        j jVar = (j) obj;
        if (jVar == null) {
            return;
        }
        int i10 = 0;
        if (jVar instanceof t) {
            t tVar = (t) jVar;
            int iB = tVar.B();
            while (i10 < iB) {
                b(tVar.A(i10), arrayList);
                i10++;
            }
            return;
        }
        if (w(jVar) || !androidx.fragment.app.c0.i(jVar.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            jVar.addTarget((View) arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.c0
    public void c(ViewGroup viewGroup, Object obj) {
        q.a(viewGroup, (j) obj);
    }

    @Override // androidx.fragment.app.c0
    public boolean e(Object obj) {
        return obj instanceof j;
    }

    @Override // androidx.fragment.app.c0
    public Object f(Object obj) {
        if (obj != null) {
            return ((j) obj).mo6clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.c0
    public Object j(Object obj, Object obj2, Object obj3) {
        j jVarK = (j) obj;
        j jVar = (j) obj2;
        j jVar2 = (j) obj3;
        if (jVarK != null && jVar != null) {
            jVarK = new t().y(jVarK).y(jVar).K(1);
        } else if (jVarK == null) {
            jVarK = jVar != null ? jVar : null;
        }
        if (jVar2 == null) {
            return jVarK;
        }
        t tVar = new t();
        if (jVarK != null) {
            tVar.y(jVarK);
        }
        tVar.y(jVar2);
        return tVar;
    }

    @Override // androidx.fragment.app.c0
    public Object k(Object obj, Object obj2, Object obj3) {
        t tVar = new t();
        if (obj != null) {
            tVar.y((j) obj);
        }
        if (obj2 != null) {
            tVar.y((j) obj2);
        }
        if (obj3 != null) {
            tVar.y((j) obj3);
        }
        return tVar;
    }

    @Override // androidx.fragment.app.c0
    public void m(Object obj, View view, ArrayList arrayList) {
        ((j) obj).addListener(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.c0
    public void n(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((j) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.c0
    public void o(Object obj, Rect rect) {
        if (obj != null) {
            ((j) obj).setEpicenterCallback(new C0044e(rect));
        }
    }

    @Override // androidx.fragment.app.c0
    public void p(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            h(view, rect);
            ((j) obj).setEpicenterCallback(new a(rect));
        }
    }

    @Override // androidx.fragment.app.c0
    public void q(Fragment fragment, Object obj, z.d dVar, Runnable runnable) {
        z(fragment, obj, dVar, null, runnable);
    }

    @Override // androidx.fragment.app.c0
    public void s(Object obj, View view, ArrayList arrayList) {
        t tVar = (t) obj;
        List<View> targets = tVar.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            androidx.fragment.app.c0.d(targets, (View) arrayList.get(i10));
        }
        targets.add(view);
        arrayList.add(view);
        b(tVar, arrayList);
    }

    @Override // androidx.fragment.app.c0
    public void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        t tVar = (t) obj;
        if (tVar != null) {
            tVar.getTargets().clear();
            tVar.getTargets().addAll(arrayList2);
            y(tVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.c0
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        t tVar = new t();
        tVar.y((j) obj);
        return tVar;
    }

    public void y(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        j jVar = (j) obj;
        int i10 = 0;
        if (jVar instanceof t) {
            t tVar = (t) jVar;
            int iB = tVar.B();
            while (i10 < iB) {
                y(tVar.A(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (w(jVar)) {
            return;
        }
        List<View> targets = jVar.getTargets();
        if (targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i10 < size) {
                jVar.addTarget((View) arrayList2.get(i10));
                i10++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                jVar.removeTarget((View) arrayList.get(size2));
            }
        }
    }

    public void z(Fragment fragment, Object obj, z.d dVar, final Runnable runnable, final Runnable runnable2) {
        final j jVar = (j) obj;
        dVar.b(new d.a() { // from class: androidx.transition.d
            @Override // z.d.a
            public final void onCancel() {
                e.x(runnable, jVar, runnable2);
            }
        });
        jVar.addListener(new d(runnable2));
    }
}
