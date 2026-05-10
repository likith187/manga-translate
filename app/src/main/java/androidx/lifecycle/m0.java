package androidx.lifecycle;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0.e f2800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f2802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n8.j f2803d;

    public m0(q0.e savedStateRegistry, final x0 viewModelStoreOwner) {
        kotlin.jvm.internal.r.e(savedStateRegistry, "savedStateRegistry");
        kotlin.jvm.internal.r.e(viewModelStoreOwner, "viewModelStoreOwner");
        this.f2800a = savedStateRegistry;
        this.f2803d = n8.k.b(new w8.a() { // from class: androidx.lifecycle.l0
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return m0.e(viewModelStoreOwner);
            }
        });
    }

    private final n0 c() {
        return (n0) this.f2803d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 e(x0 x0Var) {
        return k0.e(x0Var);
    }

    public final Bundle b(String key) {
        n8.q[] qVarArr;
        kotlin.jvm.internal.r.e(key, "key");
        d();
        Bundle bundle = this.f2802c;
        if (bundle == null || !q0.b.b(q0.b.a(bundle), key)) {
            return null;
        }
        Bundle bundleD = q0.b.d(q0.b.a(bundle), key);
        if (bundleD == null) {
            Map mapH = kotlin.collections.j0.h();
            if (mapH.isEmpty()) {
                qVarArr = new n8.q[0];
            } else {
                ArrayList arrayList = new ArrayList(mapH.size());
                for (Map.Entry entry : mapH.entrySet()) {
                    arrayList.add(n8.w.a((String) entry.getKey(), entry.getValue()));
                }
                qVarArr = (n8.q[]) arrayList.toArray(new n8.q[0]);
            }
            bundleD = z.c.a((n8.q[]) Arrays.copyOf(qVarArr, qVarArr.length));
            q0.i.a(bundleD);
        }
        q0.i.e(q0.i.a(bundle), key);
        if (q0.b.f(q0.b.a(bundle))) {
            this.f2802c = null;
        }
        return bundleD;
    }

    public final void d() {
        n8.q[] qVarArr;
        if (this.f2801b) {
            return;
        }
        Bundle bundleA = this.f2800a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Map mapH = kotlin.collections.j0.h();
        if (mapH.isEmpty()) {
            qVarArr = new n8.q[0];
        } else {
            ArrayList arrayList = new ArrayList(mapH.size());
            for (Map.Entry entry : mapH.entrySet()) {
                arrayList.add(n8.w.a((String) entry.getKey(), entry.getValue()));
            }
            qVarArr = (n8.q[]) arrayList.toArray(new n8.q[0]);
        }
        Bundle bundleA2 = z.c.a((n8.q[]) Arrays.copyOf(qVarArr, qVarArr.length));
        Bundle bundleA3 = q0.i.a(bundleA2);
        Bundle bundle = this.f2802c;
        if (bundle != null) {
            q0.i.b(bundleA3, bundle);
        }
        if (bundleA != null) {
            q0.i.b(bundleA3, bundleA);
        }
        this.f2802c = bundleA2;
        this.f2801b = true;
        c();
    }

    @Override // q0.e.b
    public Bundle saveState() {
        n8.q[] qVarArr;
        Map mapH = kotlin.collections.j0.h();
        if (mapH.isEmpty()) {
            qVarArr = new n8.q[0];
        } else {
            ArrayList arrayList = new ArrayList(mapH.size());
            for (Map.Entry entry : mapH.entrySet()) {
                arrayList.add(n8.w.a((String) entry.getKey(), entry.getValue()));
            }
            qVarArr = (n8.q[]) arrayList.toArray(new n8.q[0]);
        }
        Bundle bundleA = z.c.a((n8.q[]) Arrays.copyOf(qVarArr, qVarArr.length));
        Bundle bundleA2 = q0.i.a(bundleA);
        Bundle bundle = this.f2802c;
        if (bundle != null) {
            q0.i.b(bundleA2, bundle);
        }
        for (Map.Entry entry2 : c().e().entrySet()) {
            String str = (String) entry2.getKey();
            Bundle bundleSaveState = ((h0) entry2.getValue()).a().saveState();
            if (!q0.b.f(q0.b.a(bundleSaveState))) {
                q0.i.c(bundleA2, str, bundleSaveState);
            }
        }
        this.f2801b = false;
        return bundleA;
    }
}
