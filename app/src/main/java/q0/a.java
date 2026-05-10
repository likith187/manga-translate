package q0;

import android.os.Bundle;
import androidx.lifecycle.l;
import androidx.lifecycle.p;
import androidx.lifecycle.s;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.q;
import n8.w;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public final class a implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0209a f15268b = new C0209a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f15269a;

    /* JADX INFO: renamed from: q0.a$a, reason: collision with other inner class name */
    public static final class C0209a {
        public /* synthetic */ C0209a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0209a() {
        }
    }

    public static final class b implements e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f15270a;

        public b(e registry) {
            r.e(registry, "registry");
            this.f15270a = new LinkedHashSet();
            registry.c("androidx.savedstate.Restarter", this);
        }

        public final void a(String className) {
            r.e(className, "className");
            this.f15270a.add(className);
        }

        @Override // q0.e.b
        public Bundle saveState() {
            q[] qVarArr;
            Map mapH = j0.h();
            if (mapH.isEmpty()) {
                qVarArr = new q[0];
            } else {
                ArrayList arrayList = new ArrayList(mapH.size());
                for (Map.Entry entry : mapH.entrySet()) {
                    arrayList.add(w.a((String) entry.getKey(), entry.getValue()));
                }
                qVarArr = (q[]) arrayList.toArray(new q[0]);
            }
            Bundle bundleA = z.c.a((q[]) Arrays.copyOf(qVarArr, qVarArr.length));
            i.d(i.a(bundleA), "classes_to_restore", o.r0(this.f15270a));
            return bundleA;
        }
    }

    public a(h owner) {
        r.e(owner, "owner");
        this.f15269a = owner;
    }

    private final void a(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, a.class.getClassLoader()).asSubclass(e.a.class);
            r.b(clsAsSubclass);
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                try {
                    Object objNewInstance = declaredConstructor.newInstance(null);
                    r.b(objNewInstance);
                    ((e.a) objNewInstance).a(this.f15269a);
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to instantiate " + str, e10);
                }
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException("Class " + str + " wasn't found", e12);
        }
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        r.e(source, "source");
        r.e(event, "event");
        if (event != l.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        source.getLifecycle().d(this);
        Bundle bundleA = this.f15269a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        List listE = q0.b.e(q0.b.a(bundleA), "classes_to_restore");
        if (listE == null) {
            throw new IllegalStateException("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator it = listE.iterator();
        while (it.hasNext()) {
            a((String) it.next());
        }
    }
}
