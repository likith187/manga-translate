package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f2104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f2105b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f2106c = new HashMap();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.lifecycle.l f2107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.lifecycle.p f2108b;

        a(androidx.lifecycle.l lVar, androidx.lifecycle.p pVar) {
            this.f2107a = lVar;
            this.f2108b = pVar;
            lVar.a(pVar);
        }

        void a() {
            this.f2107a.d(this.f2108b);
            this.f2108b = null;
        }
    }

    public q(Runnable runnable) {
        this.f2104a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(t tVar, androidx.lifecycle.s sVar, l.a aVar) {
        if (aVar == l.a.ON_DESTROY) {
            l(tVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(l.b bVar, t tVar, androidx.lifecycle.s sVar, l.a aVar) {
        if (aVar == l.a.upTo(bVar)) {
            c(tVar);
            return;
        }
        if (aVar == l.a.ON_DESTROY) {
            l(tVar);
        } else if (aVar == l.a.downFrom(bVar)) {
            this.f2105b.remove(tVar);
            this.f2104a.run();
        }
    }

    public void c(t tVar) {
        this.f2105b.add(tVar);
        this.f2104a.run();
    }

    public void d(final t tVar, androidx.lifecycle.s sVar) {
        c(tVar);
        androidx.lifecycle.l lifecycle = sVar.getLifecycle();
        a aVar = (a) this.f2106c.remove(tVar);
        if (aVar != null) {
            aVar.a();
        }
        this.f2106c.put(tVar, new a(lifecycle, new androidx.lifecycle.p() { // from class: androidx.core.view.p
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar2, l.a aVar2) {
                this.f2102a.f(tVar, sVar2, aVar2);
            }
        }));
    }

    public void e(final t tVar, androidx.lifecycle.s sVar, final l.b bVar) {
        androidx.lifecycle.l lifecycle = sVar.getLifecycle();
        a aVar = (a) this.f2106c.remove(tVar);
        if (aVar != null) {
            aVar.a();
        }
        this.f2106c.put(tVar, new a(lifecycle, new androidx.lifecycle.p() { // from class: androidx.core.view.o
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar2, l.a aVar2) {
                this.f2098a.g(bVar, tVar, sVar2, aVar2);
            }
        }));
    }

    public void h(Menu menu, MenuInflater menuInflater) {
        Iterator it = this.f2105b.iterator();
        while (it.hasNext()) {
            ((t) it.next()).c(menu, menuInflater);
        }
    }

    public void i(Menu menu) {
        Iterator it = this.f2105b.iterator();
        while (it.hasNext()) {
            ((t) it.next()).b(menu);
        }
    }

    public boolean j(MenuItem menuItem) {
        Iterator it = this.f2105b.iterator();
        while (it.hasNext()) {
            if (((t) it.next()).a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void k(Menu menu) {
        Iterator it = this.f2105b.iterator();
        while (it.hasNext()) {
            ((t) it.next()).d(menu);
        }
    }

    public void l(t tVar) {
        this.f2105b.remove(tVar);
        a aVar = (a) this.f2106c.remove(tVar);
        if (aVar != null) {
            aVar.a();
        }
        this.f2104a.run();
    }
}
