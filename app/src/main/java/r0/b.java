package r0;

import android.os.Bundle;
import androidx.lifecycle.l;
import androidx.lifecycle.p;
import androidx.lifecycle.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.q;
import n8.w;
import q0.e;
import q0.h;
import q0.i;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a f15388i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f15389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.a f15390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f15391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f15392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f15393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f15394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f15395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15396h;

    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(h owner, w8.a onAttach) {
        r.e(owner, "owner");
        r.e(onAttach, "onAttach");
        this.f15389a = owner;
        this.f15390b = onAttach;
        this.f15391c = new c();
        this.f15392d = new LinkedHashMap();
        this.f15396h = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(b bVar, s sVar, l.a event) {
        r.e(sVar, "<unused var>");
        r.e(event, "event");
        if (event == l.a.ON_START) {
            bVar.f15396h = true;
        } else if (event == l.a.ON_STOP) {
            bVar.f15396h = false;
        }
    }

    public final Bundle c(String key) {
        r.e(key, "key");
        if (!this.f15395g) {
            throw new IllegalStateException("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
        }
        Bundle bundle = this.f15394f;
        if (bundle == null) {
            return null;
        }
        Bundle bundleA = q0.b.a(bundle);
        Bundle bundleC = q0.b.b(bundleA, key) ? q0.b.c(bundleA, key) : null;
        i.e(i.a(bundle), key);
        if (q0.b.f(q0.b.a(bundle))) {
            this.f15394f = null;
        }
        return bundleC;
    }

    public final e.b d(String key) {
        e.b bVar;
        r.e(key, "key");
        synchronized (this.f15391c) {
            Iterator it = this.f15392d.entrySet().iterator();
            do {
                bVar = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                e.b bVar2 = (e.b) entry.getValue();
                if (r.a(str, key)) {
                    bVar = bVar2;
                }
            } while (bVar == null);
        }
        return bVar;
    }

    public final boolean e() {
        return this.f15396h;
    }

    public final void f() {
        if (this.f15389a.getLifecycle().b() != l.b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        if (this.f15393e) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        this.f15390b.mo8invoke();
        this.f15389a.getLifecycle().a(new p() { // from class: r0.a
            @Override // androidx.lifecycle.p
            public final void onStateChanged(s sVar, l.a aVar) {
                b.g(this.f15387a, sVar, aVar);
            }
        });
        this.f15393e = true;
    }

    public final void h(Bundle bundle) {
        if (!this.f15393e) {
            f();
        }
        if (this.f15389a.getLifecycle().b().isAtLeast(l.b.STARTED)) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + this.f15389a.getLifecycle().b()).toString());
        }
        if (this.f15395g) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        Bundle bundleC = null;
        if (bundle != null) {
            Bundle bundleA = q0.b.a(bundle);
            if (q0.b.b(bundleA, "androidx.lifecycle.BundlableSavedStateRegistry.key")) {
                bundleC = q0.b.c(bundleA, "androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
        }
        this.f15394f = bundleC;
        this.f15395g = true;
    }

    public final void i(Bundle outBundle) {
        q[] qVarArr;
        r.e(outBundle, "outBundle");
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
        Bundle bundleA2 = i.a(bundleA);
        Bundle bundle = this.f15394f;
        if (bundle != null) {
            i.b(bundleA2, bundle);
        }
        synchronized (this.f15391c) {
            try {
                for (Map.Entry entry2 : this.f15392d.entrySet()) {
                    i.c(bundleA2, (String) entry2.getKey(), ((e.b) entry2.getValue()).saveState());
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (q0.b.f(q0.b.a(bundleA))) {
            return;
        }
        i.c(i.a(outBundle), "androidx.lifecycle.BundlableSavedStateRegistry.key", bundleA);
    }

    public final void j(String key, e.b provider) {
        r.e(key, "key");
        r.e(provider, "provider");
        synchronized (this.f15391c) {
            if (this.f15392d.containsKey(key)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            this.f15392d.put(key, provider);
            h0 h0Var = h0.INSTANCE;
        }
    }
}
