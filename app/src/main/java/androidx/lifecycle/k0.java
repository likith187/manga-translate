package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.l;
import androidx.lifecycle.u0;
import l0.a;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a */
    public static final a.c f2793a;

    /* JADX INFO: renamed from: b */
    public static final a.c f2794b;

    /* JADX INFO: renamed from: c */
    public static final a.c f2795c;

    public static final class a implements u0.c {
        a() {
        }

        @Override // androidx.lifecycle.u0.c
        public s0 b(c9.c modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            return new n0();
        }
    }

    public static final class b implements a.c {
    }

    public static final class c implements a.c {
    }

    public static final class d implements a.c {
    }

    static {
        a.C0177a c0177a = l0.a.f13531b;
        f2793a = new b();
        f2794b = new c();
        f2795c = new d();
    }

    public static final h0 a(l0.a aVar) {
        kotlin.jvm.internal.r.e(aVar, "<this>");
        q0.h hVar = (q0.h) aVar.a(f2793a);
        if (hVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        x0 x0Var = (x0) aVar.a(f2794b);
        if (x0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) aVar.a(f2795c);
        String str = (String) aVar.a(u0.f2836c);
        if (str != null) {
            return b(hVar, x0Var, str, bundle);
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
    }

    private static final h0 b(q0.h hVar, x0 x0Var, String str, Bundle bundle) {
        m0 m0VarD = d(hVar);
        n0 n0VarE = e(x0Var);
        h0 h0Var = (h0) n0VarE.e().get(str);
        if (h0Var != null) {
            return h0Var;
        }
        h0 h0VarA = h0.f2784c.a(m0VarD.b(str), bundle);
        n0VarE.e().put(str, h0VarA);
        return h0VarA;
    }

    public static final void c(q0.h hVar) {
        kotlin.jvm.internal.r.e(hVar, "<this>");
        l.b bVarB = hVar.getLifecycle().b();
        if (bVarB != l.b.INITIALIZED && bVarB != l.b.CREATED) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (hVar.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            m0 m0Var = new m0(hVar.getSavedStateRegistry(), (x0) hVar);
            hVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", m0Var);
            hVar.getLifecycle().a(new i0(m0Var));
        }
    }

    public static final m0 d(q0.h hVar) {
        kotlin.jvm.internal.r.e(hVar, "<this>");
        e.b bVarB = hVar.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        m0 m0Var = bVarB instanceof m0 ? (m0) bVarB : null;
        if (m0Var != null) {
            return m0Var;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    public static final n0 e(x0 x0Var) {
        kotlin.jvm.internal.r.e(x0Var, "<this>");
        return (n0) u0.b.b(u0.f2835b, x0Var, new a(), null, 4, null).c("androidx.lifecycle.internal.SavedStateHandlesVM", kotlin.jvm.internal.d0.b(n0.class));
    }
}
