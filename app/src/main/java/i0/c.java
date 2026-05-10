package i0;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.collections.q0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c INSTANCE = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static C0149c f12362a = C0149c.f12364d;

    public enum a {
        PENALTY_LOG,
        PENALTY_DEATH,
        DETECT_FRAGMENT_REUSE,
        DETECT_FRAGMENT_TAG_USAGE,
        DETECT_RETAIN_INSTANCE_USAGE,
        DETECT_SET_USER_VISIBLE_HINT,
        DETECT_TARGET_FRAGMENT_USAGE,
        DETECT_WRONG_FRAGMENT_CONTAINER
    }

    public interface b {
    }

    /* JADX INFO: renamed from: i0.c$c, reason: collision with other inner class name */
    public static final class C0149c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f12363c = new a(null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final C0149c f12364d = new C0149c(q0.b(), null, j0.h());

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f12365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f12366b;

        /* JADX INFO: renamed from: i0.c$c$a */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public C0149c(Set flags, b bVar, Map allowedViolations) {
            r.e(flags, "flags");
            r.e(allowedViolations, "allowedViolations");
            this.f12365a = flags;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : allowedViolations.entrySet()) {
                linkedHashMap.put((String) entry.getKey(), (Set) entry.getValue());
            }
            this.f12366b = linkedHashMap;
        }

        public final Set a() {
            return this.f12365a;
        }

        public final b b() {
            return null;
        }

        public final Map c() {
            return this.f12366b;
        }
    }

    private c() {
    }

    private final C0149c b(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
                r.d(parentFragmentManager, "declaringFragment.parentFragmentManager");
                if (parentFragmentManager.A0() != null) {
                    C0149c c0149cA0 = parentFragmentManager.A0();
                    r.b(c0149cA0);
                    return c0149cA0;
                }
            }
            fragment = fragment.getParentFragment();
        }
        return f12362a;
    }

    private final void c(C0149c c0149c, final m mVar) {
        Fragment fragment = mVar.getFragment();
        final String name = fragment.getClass().getName();
        if (c0149c.a().contains(a.PENALTY_LOG)) {
            Log.d("FragmentStrictMode", "Policy violation in " + name, mVar);
        }
        c0149c.b();
        if (c0149c.a().contains(a.PENALTY_DEATH)) {
            o(fragment, new Runnable() { // from class: i0.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.d(name, mVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str, m violation) {
        r.e(violation, "$violation");
        Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in " + str, violation);
        throw violation;
    }

    private final void e(m mVar) {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "StrictMode violation in " + mVar.getFragment().getClass().getName(), mVar);
        }
    }

    public static final void f(Fragment fragment, String previousFragmentId) {
        r.e(fragment, "fragment");
        r.e(previousFragmentId, "previousFragmentId");
        i0.a aVar = new i0.a(fragment, previousFragmentId);
        c cVar = INSTANCE;
        cVar.e(aVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_FRAGMENT_REUSE) && cVar.p(c0149cB, fragment.getClass(), aVar.getClass())) {
            cVar.c(c0149cB, aVar);
        }
    }

    public static final void g(Fragment fragment, ViewGroup viewGroup) {
        r.e(fragment, "fragment");
        d dVar = new d(fragment, viewGroup);
        c cVar = INSTANCE;
        cVar.e(dVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_FRAGMENT_TAG_USAGE) && cVar.p(c0149cB, fragment.getClass(), dVar.getClass())) {
            cVar.c(c0149cB, dVar);
        }
    }

    public static final void h(Fragment fragment) {
        r.e(fragment, "fragment");
        e eVar = new e(fragment);
        c cVar = INSTANCE;
        cVar.e(eVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_RETAIN_INSTANCE_USAGE) && cVar.p(c0149cB, fragment.getClass(), eVar.getClass())) {
            cVar.c(c0149cB, eVar);
        }
    }

    public static final void i(Fragment fragment) {
        r.e(fragment, "fragment");
        f fVar = new f(fragment);
        c cVar = INSTANCE;
        cVar.e(fVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.p(c0149cB, fragment.getClass(), fVar.getClass())) {
            cVar.c(c0149cB, fVar);
        }
    }

    public static final void j(Fragment fragment) {
        r.e(fragment, "fragment");
        g gVar = new g(fragment);
        c cVar = INSTANCE;
        cVar.e(gVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.p(c0149cB, fragment.getClass(), gVar.getClass())) {
            cVar.c(c0149cB, gVar);
        }
    }

    public static final void k(Fragment fragment) {
        r.e(fragment, "fragment");
        i iVar = new i(fragment);
        c cVar = INSTANCE;
        cVar.e(iVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_RETAIN_INSTANCE_USAGE) && cVar.p(c0149cB, fragment.getClass(), iVar.getClass())) {
            cVar.c(c0149cB, iVar);
        }
    }

    public static final void l(Fragment violatingFragment, Fragment targetFragment, int i10) {
        r.e(violatingFragment, "violatingFragment");
        r.e(targetFragment, "targetFragment");
        j jVar = new j(violatingFragment, targetFragment, i10);
        c cVar = INSTANCE;
        cVar.e(jVar);
        C0149c c0149cB = cVar.b(violatingFragment);
        if (c0149cB.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.p(c0149cB, violatingFragment.getClass(), jVar.getClass())) {
            cVar.c(c0149cB, jVar);
        }
    }

    public static final void m(Fragment fragment, boolean z10) {
        r.e(fragment, "fragment");
        k kVar = new k(fragment, z10);
        c cVar = INSTANCE;
        cVar.e(kVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_SET_USER_VISIBLE_HINT) && cVar.p(c0149cB, fragment.getClass(), kVar.getClass())) {
            cVar.c(c0149cB, kVar);
        }
    }

    public static final void n(Fragment fragment, ViewGroup container) {
        r.e(fragment, "fragment");
        r.e(container, "container");
        n nVar = new n(fragment, container);
        c cVar = INSTANCE;
        cVar.e(nVar);
        C0149c c0149cB = cVar.b(fragment);
        if (c0149cB.a().contains(a.DETECT_WRONG_FRAGMENT_CONTAINER) && cVar.p(c0149cB, fragment.getClass(), nVar.getClass())) {
            cVar.c(c0149cB, nVar);
        }
    }

    private final void o(Fragment fragment, Runnable runnable) {
        if (!fragment.isAdded()) {
            runnable.run();
            return;
        }
        Handler handlerG = fragment.getParentFragmentManager().u0().g();
        r.d(handlerG, "fragment.parentFragmentManager.host.handler");
        if (r.a(handlerG.getLooper(), Looper.myLooper())) {
            runnable.run();
        } else {
            handlerG.post(runnable);
        }
    }

    private final boolean p(C0149c c0149c, Class cls, Class cls2) {
        Set set = (Set) c0149c.c().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (r.a(cls2.getSuperclass(), m.class) || !o.M(set, cls2.getSuperclass())) {
            return !set.contains(cls2);
        }
        return false;
    }
}
