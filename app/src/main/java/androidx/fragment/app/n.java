package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f2688a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FragmentManager f2689b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final FragmentManager.k f2690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f2691b;

        a(FragmentManager.k kVar, boolean z10) {
            this.f2690a = kVar;
            this.f2691b = z10;
        }
    }

    n(FragmentManager fragmentManager) {
        this.f2689b = fragmentManager;
    }

    void a(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().a(fragment, bundle, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentActivityCreated(this.f2689b, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z10) {
        Context contextF = this.f2689b.u0().f();
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().b(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentAttached(this.f2689b, fragment, contextF);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().c(fragment, bundle, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentCreated(this.f2689b, fragment, bundle);
            }
        }
    }

    void d(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().d(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentDestroyed(this.f2689b, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().e(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentDetached(this.f2689b, fragment);
            }
        }
    }

    void f(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().f(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentPaused(this.f2689b, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z10) {
        Context contextF = this.f2689b.u0().f();
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().g(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentPreAttached(this.f2689b, fragment, contextF);
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().h(fragment, bundle, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentPreCreated(this.f2689b, fragment, bundle);
            }
        }
    }

    void i(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().i(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentResumed(this.f2689b, fragment);
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().j(fragment, bundle, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentSaveInstanceState(this.f2689b, fragment, bundle);
            }
        }
    }

    void k(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().k(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentStarted(this.f2689b, fragment);
            }
        }
    }

    void l(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().l(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentStopped(this.f2689b, fragment);
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentViewCreated(this.f2689b, fragment, view, bundle);
            }
        }
    }

    void n(Fragment fragment, boolean z10) {
        Fragment fragmentX0 = this.f2689b.x0();
        if (fragmentX0 != null) {
            fragmentX0.getParentFragmentManager().w0().n(fragment, true);
        }
        for (a aVar : this.f2688a) {
            if (!z10 || aVar.f2691b) {
                aVar.f2690a.onFragmentViewDestroyed(this.f2689b, fragment);
            }
        }
    }

    public void o(FragmentManager.k kVar, boolean z10) {
        this.f2688a.add(new a(kVar, z10));
    }

    public void p(FragmentManager.k kVar) {
        synchronized (this.f2688a) {
            try {
                int size = this.f2688a.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        break;
                    }
                    if (((a) this.f2688a.get(i10)).f2690a == kVar) {
                        this.f2688a.remove(i10);
                        break;
                    }
                    i10++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
