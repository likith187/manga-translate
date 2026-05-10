package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.k0;
import androidx.lifecycle.l;
import androidx.lifecycle.o0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import androidx.lifecycle.x0;

/* JADX INFO: loaded from: classes.dex */
class d0 implements androidx.lifecycle.j, q0.h, x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f2641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w0 f2642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private u0.c f2643c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.lifecycle.u f2644f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private q0.g f2645h = null;

    d0(Fragment fragment, w0 w0Var) {
        this.f2641a = fragment;
        this.f2642b = w0Var;
    }

    void a(l.a aVar) {
        this.f2644f.i(aVar);
    }

    void b() {
        if (this.f2644f == null) {
            this.f2644f = new androidx.lifecycle.u(this);
            q0.g gVarA = q0.g.a(this);
            this.f2645h = gVarA;
            gVarA.c();
            k0.c(this);
        }
    }

    boolean c() {
        return this.f2644f != null;
    }

    void d(Bundle bundle) {
        this.f2645h.d(bundle);
    }

    void e(Bundle bundle) {
        this.f2645h.e(bundle);
    }

    void f(l.b bVar) {
        this.f2644f.n(bVar);
    }

    @Override // androidx.lifecycle.j
    public l0.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = this.f2641a.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        l0.b bVar = new l0.b();
        if (application != null) {
            bVar.c(u0.a.f2840h, application);
        }
        bVar.c(k0.f2793a, this);
        bVar.c(k0.f2794b, this);
        if (this.f2641a.getArguments() != null) {
            bVar.c(k0.f2795c, this.f2641a.getArguments());
        }
        return bVar;
    }

    @Override // androidx.lifecycle.j
    public u0.c getDefaultViewModelProviderFactory() {
        Application application;
        u0.c defaultViewModelProviderFactory = this.f2641a.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f2641a.mDefaultFactory)) {
            this.f2643c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f2643c == null) {
            Context applicationContext = this.f2641a.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f2643c = new o0(application, this, this.f2641a.getArguments());
        }
        return this.f2643c;
    }

    @Override // androidx.lifecycle.s
    public androidx.lifecycle.l getLifecycle() {
        b();
        return this.f2644f;
    }

    @Override // q0.h
    public q0.e getSavedStateRegistry() {
        b();
        return this.f2645h.b();
    }

    @Override // androidx.lifecycle.x0
    public w0 getViewModelStore() {
        b();
        return this.f2642b;
    }
}
