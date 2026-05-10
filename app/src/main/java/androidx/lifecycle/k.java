package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.l;
import java.util.Iterator;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final k INSTANCE = new k();

    public static final class a implements e.a {
        @Override // q0.e.a
        public void a(q0.h owner) {
            kotlin.jvm.internal.r.e(owner, "owner");
            if (!(owner instanceof x0)) {
                throw new IllegalStateException(("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: " + owner).toString());
            }
            w0 viewModelStore = ((x0) owner).getViewModelStore();
            q0.e savedStateRegistry = owner.getSavedStateRegistry();
            Iterator it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                s0 s0VarB = viewModelStore.b((String) it.next());
                if (s0VarB != null) {
                    k.a(s0VarB, savedStateRegistry, owner.getLifecycle());
                }
            }
            if (viewModelStore.c().isEmpty()) {
                return;
            }
            savedStateRegistry.d(a.class);
        }
    }

    public static final class b implements p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f2791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q0.e f2792b;

        b(l lVar, q0.e eVar) {
            this.f2791a = lVar;
            this.f2792b = eVar;
        }

        @Override // androidx.lifecycle.p
        public void onStateChanged(s source, l.a event) {
            kotlin.jvm.internal.r.e(source, "source");
            kotlin.jvm.internal.r.e(event, "event");
            if (event == l.a.ON_START) {
                this.f2791a.d(this);
                this.f2792b.d(a.class);
            }
        }
    }

    private k() {
    }

    public static final void a(s0 viewModel, q0.e registry, l lifecycle) {
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        kotlin.jvm.internal.r.e(registry, "registry");
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        j0 j0Var = (j0) viewModel.c("androidx.lifecycle.savedstate.vm.tag");
        if (j0Var == null || j0Var.k()) {
            return;
        }
        j0Var.c(registry, lifecycle);
        INSTANCE.c(registry, lifecycle);
    }

    public static final j0 b(q0.e registry, l lifecycle, String str, Bundle bundle) {
        kotlin.jvm.internal.r.e(registry, "registry");
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        kotlin.jvm.internal.r.b(str);
        j0 j0Var = new j0(str, h0.f2784c.a(registry.a(str), bundle));
        j0Var.c(registry, lifecycle);
        INSTANCE.c(registry, lifecycle);
        return j0Var;
    }

    private final void c(q0.e eVar, l lVar) {
        l.b bVarB = lVar.b();
        if (bVarB == l.b.INITIALIZED || bVarB.isAtLeast(l.b.STARTED)) {
            eVar.d(a.class);
        } else {
            lVar.a(new b(lVar, eVar));
        }
    }
}
