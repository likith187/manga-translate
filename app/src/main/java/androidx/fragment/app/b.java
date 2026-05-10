package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.view.m0;
import androidx.core.view.q0;
import androidx.fragment.app.f0;
import androidx.fragment.app.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import z.d;

/* JADX INFO: loaded from: classes.dex */
class b extends f0 {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2566a;

        static {
            int[] iArr = new int[f0.e.c.values().length];
            f2566a = iArr;
            try {
                iArr[f0.e.c.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2566a[f0.e.c.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2566a[f0.e.c.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2566a[f0.e.c.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.b$b, reason: collision with other inner class name */
    class RunnableC0027b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f2567a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0.e f2568b;

        RunnableC0027b(List list, f0.e eVar) {
            this.f2567a = list;
            this.f2568b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2567a.contains(this.f2568b)) {
                this.f2567a.remove(this.f2568b);
                b.this.s(this.f2568b);
            }
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2571b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f2572c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ f0.e f2573f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ k f2574h;

        c(ViewGroup viewGroup, View view, boolean z10, f0.e eVar, k kVar) {
            this.f2570a = viewGroup;
            this.f2571b = view;
            this.f2572c = z10;
            this.f2573f = eVar;
            this.f2574h = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2570a.endViewTransition(this.f2571b);
            if (this.f2572c) {
                this.f2573f.e().applyState(this.f2571b);
            }
            this.f2574h.a();
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Animator from operation " + this.f2573f + " has ended.");
            }
        }
    }

    class d implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Animator f2576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0.e f2577b;

        d(Animator animator, f0.e eVar) {
            this.f2576a = animator;
            this.f2577b = eVar;
        }

        @Override // z.d.a
        public void onCancel() {
            this.f2576a.end();
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Animator from operation " + this.f2577b + " has been canceled.");
            }
        }
    }

    class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f0.e f2579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f2581c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ k f2582d;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f2580b.endViewTransition(eVar.f2581c);
                e.this.f2582d.a();
            }
        }

        e(f0.e eVar, ViewGroup viewGroup, View view, k kVar) {
            this.f2579a = eVar;
            this.f2580b = viewGroup;
            this.f2581c = view;
            this.f2582d = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2580b.post(new a());
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Animation from operation " + this.f2579a + " has ended.");
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Animation from operation " + this.f2579a + " has reached onAnimationStart.");
            }
        }
    }

    class f implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f2585a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2586b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f2587c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ f0.e f2588d;

        f(View view, ViewGroup viewGroup, k kVar, f0.e eVar) {
            this.f2585a = view;
            this.f2586b = viewGroup;
            this.f2587c = kVar;
            this.f2588d = eVar;
        }

        @Override // z.d.a
        public void onCancel() {
            this.f2585a.clearAnimation();
            this.f2586b.endViewTransition(this.f2585a);
            this.f2587c.a();
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Animation from operation " + this.f2588d + " has been cancelled.");
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f0.e f2590a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0.e f2591b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f2592c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f2593f;

        g(f0.e eVar, f0.e eVar2, boolean z10, androidx.collection.a aVar) {
            this.f2590a = eVar;
            this.f2591b = eVar2;
            this.f2592c = z10;
            this.f2593f = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.a(this.f2590a.f(), this.f2591b.f(), this.f2592c, this.f2593f, false);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f2595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Rect f2597c;

        h(c0 c0Var, View view, Rect rect) {
            this.f2595a = c0Var;
            this.f2596b = view;
            this.f2597c = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2595a.h(this.f2596b, this.f2597c);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f2599a;

        i(ArrayList arrayList) {
            this.f2599a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.d(this.f2599a, 4);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f2601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0.e f2602b;

        j(m mVar, f0.e eVar) {
            this.f2601a = mVar;
            this.f2602b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2601a.a();
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Transition for operation " + this.f2602b + "has completed");
            }
        }
    }

    private static class k extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2605d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private h.a f2606e;

        k(f0.e eVar, z.d dVar, boolean z10) {
            super(eVar, dVar);
            this.f2605d = false;
            this.f2604c = z10;
        }

        h.a e(Context context) {
            if (this.f2605d) {
                return this.f2606e;
            }
            h.a aVarB = androidx.fragment.app.h.b(context, b().f(), b().e() == f0.e.c.VISIBLE, this.f2604c);
            this.f2606e = aVarB;
            this.f2605d = true;
            return aVarB;
        }
    }

    private static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f0.e f2607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final z.d f2608b;

        l(f0.e eVar, z.d dVar) {
            this.f2607a = eVar;
            this.f2608b = dVar;
        }

        void a() {
            this.f2607a.d(this.f2608b);
        }

        f0.e b() {
            return this.f2607a;
        }

        z.d c() {
            return this.f2608b;
        }

        boolean d() {
            f0.e.c cVar;
            f0.e.c cVarFrom = f0.e.c.from(this.f2607a.f().mView);
            f0.e.c cVarE = this.f2607a.e();
            return cVarFrom == cVarE || !(cVarFrom == (cVar = f0.e.c.VISIBLE) || cVarE == cVar);
        }
    }

    private static class m extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f2609c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2610d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Object f2611e;

        m(f0.e eVar, z.d dVar, boolean z10, boolean z11) {
            super(eVar, dVar);
            if (eVar.e() == f0.e.c.VISIBLE) {
                this.f2609c = z10 ? eVar.f().getReenterTransition() : eVar.f().getEnterTransition();
                this.f2610d = z10 ? eVar.f().getAllowReturnTransitionOverlap() : eVar.f().getAllowEnterTransitionOverlap();
            } else {
                this.f2609c = z10 ? eVar.f().getReturnTransition() : eVar.f().getExitTransition();
                this.f2610d = true;
            }
            if (!z11) {
                this.f2611e = null;
            } else if (z10) {
                this.f2611e = eVar.f().getSharedElementReturnTransition();
            } else {
                this.f2611e = eVar.f().getSharedElementEnterTransition();
            }
        }

        private c0 f(Object obj) {
            if (obj == null) {
                return null;
            }
            c0 c0Var = a0.f2564a;
            if (c0Var != null && c0Var.e(obj)) {
                return c0Var;
            }
            c0 c0Var2 = a0.f2565b;
            if (c0Var2 != null && c0Var2.e(obj)) {
                return c0Var2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        c0 e() {
            c0 c0VarF = f(this.f2609c);
            c0 c0VarF2 = f(this.f2611e);
            if (c0VarF == null || c0VarF2 == null || c0VarF == c0VarF2) {
                return c0VarF != null ? c0VarF : c0VarF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.f2609c + " which uses a different Transition  type than its shared element transition " + this.f2611e);
        }

        public Object g() {
            return this.f2611e;
        }

        Object h() {
            return this.f2609c;
        }

        public boolean i() {
            return this.f2611e != null;
        }

        boolean j() {
            return this.f2610d;
        }
    }

    b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(List list, List list2, boolean z10, Map map) {
        int i10;
        boolean z11;
        Context context;
        View view;
        int i11;
        f0.e eVar;
        ViewGroup viewGroupM = m();
        Context context2 = viewGroupM.getContext();
        ArrayList<k> arrayList = new ArrayList();
        Iterator it = list.iterator();
        boolean z12 = false;
        while (true) {
            i10 = 2;
            if (!it.hasNext()) {
                break;
            }
            k kVar = (k) it.next();
            if (kVar.d()) {
                kVar.a();
            } else {
                h.a aVarE = kVar.e(context2);
                if (aVarE == null) {
                    kVar.a();
                } else {
                    Animator animator = aVarE.f2672b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        f0.e eVarB = kVar.b();
                        Fragment fragmentF = eVarB.f();
                        if (Boolean.TRUE.equals(map.get(eVarB))) {
                            if (FragmentManager.H0(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.");
                            }
                            kVar.a();
                        } else {
                            boolean z13 = eVarB.e() == f0.e.c.GONE;
                            if (z13) {
                                list2.remove(eVarB);
                            }
                            View view2 = fragmentF.mView;
                            viewGroupM.startViewTransition(view2);
                            animator.addListener(new c(viewGroupM, view2, z13, eVarB, kVar));
                            animator.setTarget(view2);
                            animator.start();
                            if (FragmentManager.H0(2)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Animator from operation ");
                                eVar = eVarB;
                                sb.append(eVar);
                                sb.append(" has started.");
                                Log.v("FragmentManager", sb.toString());
                            } else {
                                eVar = eVarB;
                            }
                            kVar.c().b(new d(animator, eVar));
                            z12 = true;
                        }
                    }
                }
            }
        }
        for (k kVar2 : arrayList) {
            f0.e eVarB2 = kVar2.b();
            Fragment fragmentF2 = eVarB2.f();
            if (z10) {
                if (FragmentManager.H0(i10)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.");
                }
                kVar2.a();
            } else if (z12) {
                if (FragmentManager.H0(i10)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.");
                }
                kVar2.a();
            } else {
                View view3 = fragmentF2.mView;
                Animation animation = (Animation) c0.h.e(((h.a) c0.h.e(kVar2.e(context2))).f2671a);
                if (eVarB2.e() != f0.e.c.REMOVED) {
                    view3.startAnimation(animation);
                    kVar2.a();
                    z11 = z12;
                    context = context2;
                    i11 = i10;
                    view = view3;
                } else {
                    viewGroupM.startViewTransition(view3);
                    h.b bVar = new h.b(animation, viewGroupM, view3);
                    z11 = z12;
                    context = context2;
                    view = view3;
                    bVar.setAnimationListener(new e(eVarB2, viewGroupM, view3, kVar2));
                    view.startAnimation(bVar);
                    i11 = 2;
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "Animation from operation " + eVarB2 + " has started.");
                    }
                }
                kVar2.c().b(new f(view, viewGroupM, kVar2, eVarB2));
                i10 = i11;
                z12 = z11;
                context2 = context;
            }
        }
    }

    private Map x(List list, List list2, boolean z10, f0.e eVar, f0.e eVar2) {
        String str;
        String str2;
        String str3;
        View view;
        Object obj;
        ArrayList arrayList;
        Object obj2;
        ArrayList arrayList2;
        HashMap map;
        View view2;
        Object objK;
        androidx.collection.a aVar;
        ArrayList arrayList3;
        f0.e eVar3;
        ArrayList arrayList4;
        Rect rect;
        c0 c0Var;
        HashMap map2;
        f0.e eVar4;
        View view3;
        View view4;
        View view5;
        boolean z11 = z10;
        f0.e eVar5 = eVar;
        f0.e eVar6 = eVar2;
        HashMap map3 = new HashMap();
        Iterator it = list.iterator();
        c0 c0Var2 = null;
        while (it.hasNext()) {
            m mVar = (m) it.next();
            if (!mVar.d()) {
                c0 c0VarE = mVar.e();
                if (c0Var2 == null) {
                    c0Var2 = c0VarE;
                } else if (c0VarE != null && c0Var2 != c0VarE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.b().f() + " returned Transition " + mVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (c0Var2 == null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                m mVar2 = (m) it2.next();
                map3.put(mVar2.b(), Boolean.FALSE);
                mVar2.a();
            }
            return map3;
        }
        View view6 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        androidx.collection.a aVar2 = new androidx.collection.a();
        Iterator it3 = list.iterator();
        Object obj3 = null;
        View view7 = null;
        boolean z12 = false;
        while (true) {
            str = "FragmentManager";
            if (!it3.hasNext()) {
                break;
            }
            m mVar3 = (m) it3.next();
            if (!mVar3.i() || eVar5 == null || eVar6 == null) {
                aVar = aVar2;
                arrayList3 = arrayList6;
                eVar3 = eVar5;
                arrayList4 = arrayList5;
                rect = rect2;
                c0Var = c0Var2;
                map2 = map3;
                View view8 = view6;
                eVar4 = eVar6;
                view3 = view8;
                view7 = view7;
            } else {
                Object objU = c0Var2.u(c0Var2.f(mVar3.g()));
                ArrayList<String> sharedElementSourceNames = eVar2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = eVar.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = eVar.f().getSharedElementTargetNames();
                View view9 = view7;
                int i10 = 0;
                while (i10 < sharedElementTargetNames.size()) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i10));
                    ArrayList<String> arrayList7 = sharedElementTargetNames;
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i10));
                    }
                    i10++;
                    sharedElementTargetNames = arrayList7;
                }
                ArrayList<String> sharedElementTargetNames2 = eVar2.f().getSharedElementTargetNames();
                if (z11) {
                    eVar.f().getEnterTransitionCallback();
                    eVar2.f().getExitTransitionCallback();
                } else {
                    eVar.f().getExitTransitionCallback();
                    eVar2.f().getEnterTransitionCallback();
                }
                int i11 = 0;
                for (int size = sharedElementSourceNames.size(); i11 < size; size = size) {
                    aVar2.put(sharedElementSourceNames.get(i11), sharedElementTargetNames2.get(i11));
                    i11++;
                }
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", ">>> entering view names <<<");
                    for (Iterator<String> it4 = sharedElementTargetNames2.iterator(); it4.hasNext(); it4 = it4) {
                        Log.v("FragmentManager", "Name: " + it4.next());
                    }
                    Log.v("FragmentManager", ">>> exiting view names <<<");
                    for (Iterator<String> it5 = sharedElementSourceNames.iterator(); it5.hasNext(); it5 = it5) {
                        Log.v("FragmentManager", "Name: " + it5.next());
                    }
                }
                androidx.collection.a aVar3 = new androidx.collection.a();
                u(aVar3, eVar.f().mView);
                aVar3.o(sharedElementSourceNames);
                aVar2.o(aVar3.keySet());
                androidx.collection.a aVar4 = new androidx.collection.a();
                u(aVar4, eVar2.f().mView);
                aVar4.o(sharedElementTargetNames2);
                aVar4.o(aVar2.values());
                a0.c(aVar2, aVar4);
                v(aVar3, aVar2.keySet());
                v(aVar4, aVar2.values());
                if (aVar2.isEmpty()) {
                    arrayList5.clear();
                    arrayList6.clear();
                    aVar = aVar2;
                    arrayList3 = arrayList6;
                    eVar3 = eVar5;
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view6;
                    c0Var = c0Var2;
                    view7 = view9;
                    obj3 = null;
                    eVar4 = eVar2;
                    map2 = map3;
                } else {
                    a0.a(eVar2.f(), eVar.f(), z11, aVar3, true);
                    HashMap map4 = map3;
                    View view10 = view6;
                    aVar = aVar2;
                    ArrayList arrayList8 = arrayList6;
                    androidx.core.view.c0.a(m(), new g(eVar2, eVar, z10, aVar4));
                    arrayList5.addAll(aVar3.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        view7 = view9;
                    } else {
                        view7 = (View) aVar3.get((String) sharedElementSourceNames.get(0));
                        c0Var2.p(objU, view7);
                    }
                    arrayList3 = arrayList8;
                    arrayList3.addAll(aVar4.values());
                    if (sharedElementTargetNames2.isEmpty() || (view5 = (View) aVar4.get((String) sharedElementTargetNames2.get(0))) == null) {
                        view4 = view10;
                    } else {
                        androidx.core.view.c0.a(m(), new h(c0Var2, view5, rect2));
                        view4 = view10;
                        z12 = true;
                    }
                    c0Var2.s(objU, view4, arrayList5);
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view4;
                    c0Var = c0Var2;
                    c0Var2.n(objU, null, null, null, null, objU, arrayList3);
                    Boolean bool = Boolean.TRUE;
                    eVar3 = eVar;
                    map2 = map4;
                    map2.put(eVar3, bool);
                    eVar4 = eVar2;
                    map2.put(eVar4, bool);
                    obj3 = objU;
                }
            }
            eVar5 = eVar3;
            arrayList5 = arrayList4;
            rect2 = rect;
            map3 = map2;
            aVar2 = aVar;
            z11 = z10;
            arrayList6 = arrayList3;
            c0Var2 = c0Var;
            f0.e eVar7 = eVar4;
            view6 = view3;
            eVar6 = eVar7;
        }
        View view11 = view7;
        androidx.collection.a aVar5 = aVar2;
        ArrayList arrayList9 = arrayList6;
        f0.e eVar8 = eVar5;
        ArrayList arrayList10 = arrayList5;
        Rect rect3 = rect2;
        c0 c0Var3 = c0Var2;
        HashMap map5 = map3;
        View view12 = view6;
        f0.e eVar9 = eVar6;
        View view13 = view12;
        ArrayList arrayList11 = new ArrayList();
        Iterator it6 = list.iterator();
        Object obj4 = null;
        Object objK2 = null;
        while (it6.hasNext()) {
            m mVar4 = (m) it6.next();
            if (mVar4.d()) {
                map5.put(mVar4.b(), Boolean.FALSE);
                mVar4.a();
            } else {
                Object objF = c0Var3.f(mVar4.h());
                f0.e eVarB = mVar4.b();
                boolean z13 = obj3 != null && (eVarB == eVar8 || eVarB == eVar9);
                if (objF == null) {
                    if (!z13) {
                        map5.put(eVarB, Boolean.FALSE);
                        mVar4.a();
                    }
                    arrayList2 = arrayList9;
                    str3 = str;
                    arrayList = arrayList10;
                    view = view13;
                    objK = obj4;
                    map = map5;
                    view2 = view11;
                } else {
                    str3 = str;
                    ArrayList arrayList12 = new ArrayList();
                    Object obj5 = obj4;
                    t(arrayList12, eVarB.f().mView);
                    if (z13) {
                        if (eVarB == eVar8) {
                            arrayList12.removeAll(arrayList10);
                        } else {
                            arrayList12.removeAll(arrayList9);
                        }
                    }
                    if (arrayList12.isEmpty()) {
                        c0Var3.a(objF, view13);
                        arrayList2 = arrayList9;
                        arrayList = arrayList10;
                        view = view13;
                        obj2 = objK2;
                        map = map5;
                        obj = obj5;
                    } else {
                        c0Var3.b(objF, arrayList12);
                        view = view13;
                        obj = obj5;
                        arrayList = arrayList10;
                        obj2 = objK2;
                        arrayList2 = arrayList9;
                        map = map5;
                        c0Var3.n(objF, objF, arrayList12, null, null, null, null);
                        if (eVarB.e() == f0.e.c.GONE) {
                            list2.remove(eVarB);
                            ArrayList arrayList13 = new ArrayList(arrayList12);
                            arrayList13.remove(eVarB.f().mView);
                            c0Var3.m(objF, eVarB.f().mView, arrayList13);
                            androidx.core.view.c0.a(m(), new i(arrayList12));
                        }
                    }
                    if (eVarB.e() == f0.e.c.VISIBLE) {
                        arrayList11.addAll(arrayList12);
                        if (z12) {
                            c0Var3.o(objF, rect3);
                        }
                        view2 = view11;
                    } else {
                        view2 = view11;
                        c0Var3.p(objF, view2);
                    }
                    map.put(eVarB, Boolean.TRUE);
                    if (mVar4.j()) {
                        objK2 = c0Var3.k(obj2, objF, null);
                        objK = obj;
                    } else {
                        objK = c0Var3.k(obj, objF, null);
                        objK2 = obj2;
                    }
                }
                eVar9 = eVar2;
                map5 = map;
                obj4 = objK;
                view11 = view2;
                str = str3;
                view13 = view;
                arrayList10 = arrayList;
                arrayList9 = arrayList2;
            }
        }
        ArrayList<View> arrayList14 = arrayList9;
        String str4 = str;
        ArrayList<View> arrayList15 = arrayList10;
        HashMap map6 = map5;
        Object objJ = c0Var3.j(objK2, obj4, obj3);
        if (objJ == null) {
            return map6;
        }
        Iterator it7 = list.iterator();
        while (it7.hasNext()) {
            m mVar5 = (m) it7.next();
            if (!mVar5.d()) {
                Object objH = mVar5.h();
                f0.e eVarB2 = mVar5.b();
                HashMap map7 = map6;
                boolean z14 = obj3 != null && (eVarB2 == eVar8 || eVarB2 == eVar2);
                if (objH == null && !z14) {
                    str2 = str4;
                } else if (m0.O(m())) {
                    str2 = str4;
                    c0Var3.q(mVar5.b().f(), objJ, mVar5.c(), new j(mVar5, eVarB2));
                } else {
                    if (FragmentManager.H0(2)) {
                        str2 = str4;
                        Log.v(str2, "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + eVarB2);
                    } else {
                        str2 = str4;
                    }
                    mVar5.a();
                }
                map6 = map7;
                str4 = str2;
            }
        }
        HashMap map8 = map6;
        String str5 = str4;
        if (!m0.O(m())) {
            return map8;
        }
        a0.d(arrayList11, 4);
        ArrayList arrayListL = c0Var3.l(arrayList14);
        if (FragmentManager.H0(2)) {
            Log.v(str5, ">>>>> Beginning transition <<<<<");
            Log.v(str5, ">>>>> SharedElementFirstOutViews <<<<<");
            for (View view14 : arrayList15) {
                Log.v(str5, "View: " + view14 + " Name: " + m0.E(view14));
            }
            Log.v(str5, ">>>>> SharedElementLastInViews <<<<<");
            for (View view15 : arrayList14) {
                Log.v(str5, "View: " + view15 + " Name: " + m0.E(view15));
            }
        }
        c0Var3.c(m(), objJ);
        c0Var3.r(m(), arrayList15, arrayList14, arrayListL, aVar5);
        a0.d(arrayList11, 0);
        c0Var3.t(obj3, arrayList15, arrayList14);
        return map8;
    }

    private void y(List list) {
        Fragment fragmentF = ((f0.e) list.get(list.size() - 1)).f();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f0.e eVar = (f0.e) it.next();
            eVar.f().mAnimationInfo.f2468c = fragmentF.mAnimationInfo.f2468c;
            eVar.f().mAnimationInfo.f2469d = fragmentF.mAnimationInfo.f2469d;
            eVar.f().mAnimationInfo.f2470e = fragmentF.mAnimationInfo.f2470e;
            eVar.f().mAnimationInfo.f2471f = fragmentF.mAnimationInfo.f2471f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a8  */
    @Override // androidx.fragment.app.f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void f(java.util.List r14, boolean r15) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.b.f(java.util.List, boolean):void");
    }

    void s(f0.e eVar) {
        eVar.e().applyState(eVar.f().mView);
    }

    void t(ArrayList arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (q0.a(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    void u(Map map, View view) {
        String strE = m0.E(view);
        if (strE != null) {
            map.put(strE, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(androidx.collection.a aVar, Collection collection) {
        Iterator it = aVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(m0.E((View) ((Map.Entry) it.next()).getValue()))) {
                it.remove();
            }
        }
    }
}
