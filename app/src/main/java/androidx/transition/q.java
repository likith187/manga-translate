package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static j f3712a = new androidx.transition.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadLocal f3713b = new ThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static ArrayList f3714c = new ArrayList();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        j f3715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f3716b;

        /* JADX INFO: renamed from: androidx.transition.q$a$a, reason: collision with other inner class name */
        class C0046a extends p {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ androidx.collection.a f3717a;

            C0046a(androidx.collection.a aVar) {
                this.f3717a = aVar;
            }

            @Override // androidx.transition.p, androidx.transition.j.i
            public void g(j jVar) {
                ((ArrayList) this.f3717a.get(a.this.f3716b)).remove(jVar);
                jVar.removeListener(this);
            }
        }

        a(j jVar, ViewGroup viewGroup) {
            this.f3715a = jVar;
            this.f3716b = viewGroup;
        }

        private void a() {
            this.f3716b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f3716b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!q.f3714c.remove(this.f3716b)) {
                return true;
            }
            androidx.collection.a aVarB = q.b();
            ArrayList arrayList = (ArrayList) aVarB.get(this.f3716b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                aVarB.put(this.f3716b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f3715a);
            this.f3715a.addListener(new C0046a(aVarB));
            this.f3715a.captureValues(this.f3716b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).resume(this.f3716b);
                }
            }
            this.f3715a.playTransition(this.f3716b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            q.f3714c.remove(this.f3716b);
            ArrayList arrayList = (ArrayList) q.b().get(this.f3716b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).resume(this.f3716b);
                }
            }
            this.f3715a.clearValues(true);
        }
    }

    public static void a(ViewGroup viewGroup, j jVar) {
        if (f3714c.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        f3714c.add(viewGroup);
        if (jVar == null) {
            jVar = f3712a;
        }
        j jVarMo6clone = jVar.mo6clone();
        d(viewGroup, jVarMo6clone);
        i.b(viewGroup, null);
        c(viewGroup, jVarMo6clone);
    }

    static androidx.collection.a b() {
        androidx.collection.a aVar;
        WeakReference weakReference = (WeakReference) f3713b.get();
        if (weakReference != null && (aVar = (androidx.collection.a) weakReference.get()) != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        f3713b.set(new WeakReference(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, j jVar) {
        if (jVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(jVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, j jVar) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).pause(viewGroup);
            }
        }
        if (jVar != null) {
            jVar.captureValues(viewGroup, true);
        }
        i.a(viewGroup);
    }
}
