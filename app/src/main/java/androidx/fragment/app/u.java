package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class u extends s0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final u0.c f2697i = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f2701e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f2698b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f2699c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap f2700d = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2702f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2703g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2704h = false;

    class a implements u0.c {
        a() {
        }

        @Override // androidx.lifecycle.u0.c
        public s0 a(Class cls) {
            return new u(true);
        }
    }

    u(boolean z10) {
        this.f2701e = z10;
    }

    private void h(String str) {
        u uVar = (u) this.f2699c.get(str);
        if (uVar != null) {
            uVar.d();
            this.f2699c.remove(str);
        }
        w0 w0Var = (w0) this.f2700d.get(str);
        if (w0Var != null) {
            w0Var.a();
            this.f2700d.remove(str);
        }
    }

    static u k(w0 w0Var) {
        return (u) new u0(w0Var, f2697i).b(u.class);
    }

    @Override // androidx.lifecycle.s0
    protected void d() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f2702f = true;
    }

    void e(Fragment fragment) {
        if (this.f2704h) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f2698b.containsKey(fragment.mWho)) {
                return;
            }
            this.f2698b.put(fragment.mWho, fragment);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.f2698b.equals(uVar.f2698b) && this.f2699c.equals(uVar.f2699c) && this.f2700d.equals(uVar.f2700d);
    }

    void f(Fragment fragment) {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        h(fragment.mWho);
    }

    void g(String str) {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        h(str);
    }

    public int hashCode() {
        return (((this.f2698b.hashCode() * 31) + this.f2699c.hashCode()) * 31) + this.f2700d.hashCode();
    }

    Fragment i(String str) {
        return (Fragment) this.f2698b.get(str);
    }

    u j(Fragment fragment) {
        u uVar = (u) this.f2699c.get(fragment.mWho);
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(this.f2701e);
        this.f2699c.put(fragment.mWho, uVar2);
        return uVar2;
    }

    Collection l() {
        return new ArrayList(this.f2698b.values());
    }

    w0 m(Fragment fragment) {
        w0 w0Var = (w0) this.f2700d.get(fragment.mWho);
        if (w0Var != null) {
            return w0Var;
        }
        w0 w0Var2 = new w0();
        this.f2700d.put(fragment.mWho, w0Var2);
        return w0Var2;
    }

    boolean n() {
        return this.f2702f;
    }

    void o(Fragment fragment) {
        if (this.f2704h) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f2698b.remove(fragment.mWho) == null || !FragmentManager.H0(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    void p(boolean z10) {
        this.f2704h = z10;
    }

    boolean q(Fragment fragment) {
        if (this.f2698b.containsKey(fragment.mWho)) {
            return this.f2701e ? this.f2702f : !this.f2703g;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f2698b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f2699c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f2700d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
