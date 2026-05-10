package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.m0;
import androidx.fragment.R$id;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import z.d;

/* JADX INFO: loaded from: classes.dex */
abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f2650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f2651b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f2652c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f2653d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2654e = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f2655a;

        a(d dVar) {
            this.f2655a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f0.this.f2651b.contains(this.f2655a)) {
                this.f2655a.e().applyState(this.f2655a.f().mView);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f2657a;

        b(d dVar) {
            this.f2657a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.this.f2651b.remove(this.f2657a);
            f0.this.f2652c.remove(this.f2657a);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f2660b;

        static {
            int[] iArr = new int[e.b.values().length];
            f2660b = iArr;
            try {
                iArr[e.b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2660b[e.b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2660b[e.b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[e.c.values().length];
            f2659a = iArr2;
            try {
                iArr2[e.c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2659a[e.c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2659a[e.c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2659a[e.c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final w f2661h;

        d(e.c cVar, e.b bVar, w wVar, z.d dVar) {
            super(cVar, bVar, wVar.k(), dVar);
            this.f2661h = wVar;
        }

        @Override // androidx.fragment.app.f0.e
        public void c() {
            super.c();
            this.f2661h.m();
        }

        @Override // androidx.fragment.app.f0.e
        void l() {
            if (g() != e.b.ADDING) {
                if (g() == e.b.REMOVING) {
                    Fragment fragmentK = this.f2661h.k();
                    View viewRequireView = fragmentK.requireView();
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + fragmentK);
                    }
                    viewRequireView.clearFocus();
                    return;
                }
                return;
            }
            Fragment fragmentK2 = this.f2661h.k();
            View viewFindFocus = fragmentK2.mView.findFocus();
            if (viewFindFocus != null) {
                fragmentK2.setFocusedView(viewFindFocus);
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK2);
                }
            }
            View viewRequireView2 = f().requireView();
            if (viewRequireView2.getParent() == null) {
                this.f2661h.b();
                viewRequireView2.setAlpha(0.0f);
            }
            if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
                viewRequireView2.setVisibility(4);
            }
            viewRequireView2.setAlpha(fragmentK2.getPostOnViewCreatedAlpha());
        }
    }

    f0(ViewGroup viewGroup) {
        this.f2650a = viewGroup;
    }

    private void a(e.c cVar, e.b bVar, w wVar) {
        synchronized (this.f2651b) {
            try {
                z.d dVar = new z.d();
                e eVarH = h(wVar.k());
                if (eVarH != null) {
                    eVarH.k(cVar, bVar);
                    return;
                }
                d dVar2 = new d(cVar, bVar, wVar, dVar);
                this.f2651b.add(dVar2);
                dVar2.a(new a(dVar2));
                dVar2.a(new b(dVar2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private e h(Fragment fragment) {
        for (e eVar : this.f2651b) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    private e i(Fragment fragment) {
        for (e eVar : this.f2652c) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    static f0 n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.z0());
    }

    static f0 o(ViewGroup viewGroup, g0 g0Var) {
        Object tag = viewGroup.getTag(R$id.special_effects_controller_view_tag);
        if (tag instanceof f0) {
            return (f0) tag;
        }
        f0 f0VarA = g0Var.a(viewGroup);
        viewGroup.setTag(R$id.special_effects_controller_view_tag, f0VarA);
        return f0VarA;
    }

    private void q() {
        for (e eVar : this.f2651b) {
            if (eVar.g() == e.b.ADDING) {
                eVar.k(e.c.from(eVar.f().requireView().getVisibility()), e.b.NONE);
            }
        }
    }

    void b(e.c cVar, w wVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + wVar.k());
        }
        a(cVar, e.b.ADDING, wVar);
    }

    void c(w wVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + wVar.k());
        }
        a(e.c.GONE, e.b.NONE, wVar);
    }

    void d(w wVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + wVar.k());
        }
        a(e.c.REMOVED, e.b.REMOVING, wVar);
    }

    void e(w wVar) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + wVar.k());
        }
        a(e.c.VISIBLE, e.b.NONE, wVar);
    }

    abstract void f(List list, boolean z10);

    void g() {
        if (this.f2654e) {
            return;
        }
        if (!m0.N(this.f2650a)) {
            j();
            this.f2653d = false;
            return;
        }
        synchronized (this.f2651b) {
            try {
                if (!this.f2651b.isEmpty()) {
                    ArrayList<e> arrayList = new ArrayList(this.f2652c);
                    this.f2652c.clear();
                    for (e eVar : arrayList) {
                        if (FragmentManager.H0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + eVar);
                        }
                        eVar.b();
                        if (!eVar.i()) {
                            this.f2652c.add(eVar);
                        }
                    }
                    q();
                    ArrayList arrayList2 = new ArrayList(this.f2651b);
                    this.f2651b.clear();
                    this.f2652c.addAll(arrayList2);
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((e) it.next()).l();
                    }
                    f(arrayList2, this.f2653d);
                    this.f2653d = false;
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void j() {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zN = m0.N(this.f2650a);
        synchronized (this.f2651b) {
            try {
                q();
                Iterator it = this.f2651b.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).l();
                }
                for (e eVar : new ArrayList(this.f2652c)) {
                    if (FragmentManager.H0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        sb.append(zN ? "" : "Container " + this.f2650a + " is not attached to window. ");
                        sb.append("Cancelling running operation ");
                        sb.append(eVar);
                        Log.v("FragmentManager", sb.toString());
                    }
                    eVar.b();
                }
                for (e eVar2 : new ArrayList(this.f2651b)) {
                    if (FragmentManager.H0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zN ? "" : "Container " + this.f2650a + " is not attached to window. ");
                        sb2.append("Cancelling pending operation ");
                        sb2.append(eVar2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    eVar2.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void k() {
        if (this.f2654e) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.f2654e = false;
            g();
        }
    }

    e.b l(w wVar) {
        e eVarH = h(wVar.k());
        e.b bVarG = eVarH != null ? eVarH.g() : null;
        e eVarI = i(wVar.k());
        return (eVarI == null || !(bVarG == null || bVarG == e.b.NONE)) ? bVarG : eVarI.g();
    }

    public ViewGroup m() {
        return this.f2650a;
    }

    void p() {
        synchronized (this.f2651b) {
            try {
                q();
                this.f2654e = false;
                int size = this.f2651b.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    e eVar = (e) this.f2651b.get(size);
                    e.c cVarFrom = e.c.from(eVar.f().mView);
                    e.c cVarE = eVar.e();
                    e.c cVar = e.c.VISIBLE;
                    if (cVarE == cVar && cVarFrom != cVar) {
                        this.f2654e = eVar.f().isPostponed();
                        break;
                    }
                    size--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void r(boolean z10) {
        this.f2653d = z10;
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f2662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f2663b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Fragment f2664c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f2665d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashSet f2666e = new HashSet();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2667f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2668g = false;

        class a implements d.a {
            a() {
            }

            @Override // z.d.a
            public void onCancel() {
                e.this.b();
            }
        }

        enum b {
            NONE,
            ADDING,
            REMOVING
        }

        e(c cVar, b bVar, Fragment fragment, z.d dVar) {
            this.f2662a = cVar;
            this.f2663b = bVar;
            this.f2664c = fragment;
            dVar.b(new a());
        }

        final void a(Runnable runnable) {
            this.f2665d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f2667f = true;
            if (this.f2666e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f2666e).iterator();
            while (it.hasNext()) {
                ((z.d) it.next()).a();
            }
        }

        public void c() {
            if (this.f2668g) {
                return;
            }
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f2668g = true;
            Iterator it = this.f2665d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void d(z.d dVar) {
            if (this.f2666e.remove(dVar) && this.f2666e.isEmpty()) {
                c();
            }
        }

        public c e() {
            return this.f2662a;
        }

        public final Fragment f() {
            return this.f2664c;
        }

        b g() {
            return this.f2663b;
        }

        final boolean h() {
            return this.f2667f;
        }

        final boolean i() {
            return this.f2668g;
        }

        public final void j(z.d dVar) {
            l();
            this.f2666e.add(dVar);
        }

        final void k(c cVar, b bVar) {
            int i10 = c.f2660b[bVar.ordinal()];
            if (i10 == 1) {
                if (this.f2662a == c.REMOVED) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2664c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f2663b + " to ADDING.");
                    }
                    this.f2662a = c.VISIBLE;
                    this.f2663b = b.ADDING;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2664c + " mFinalState = " + this.f2662a + " -> REMOVED. mLifecycleImpact  = " + this.f2663b + " to REMOVING.");
                }
                this.f2662a = c.REMOVED;
                this.f2663b = b.REMOVING;
                return;
            }
            if (i10 == 3 && this.f2662a != c.REMOVED) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2664c + " mFinalState = " + this.f2662a + " -> " + cVar + ". ");
                }
                this.f2662a = cVar;
            }
        }

        abstract void l();

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f2662a + "} {mLifecycleImpact = " + this.f2663b + "} {mFragment = " + this.f2664c + "}";
        }

        enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            static c from(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            void applyState(View view) {
                int i10 = c.f2659a[ordinal()];
                if (i10 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.H0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i10 == 3) {
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i10 != 4) {
                    return;
                }
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }

            static c from(int i10) {
                if (i10 == 0) {
                    return VISIBLE;
                }
                if (i10 == 4) {
                    return INVISIBLE;
                }
                if (i10 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i10);
            }
        }
    }
}
