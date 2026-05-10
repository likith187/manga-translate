package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.u0;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public final class o0 extends u0.e implements u0.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Application f2808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final u0.c f2809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f2810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l f2811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q0.e f2812f;

    public o0(Application application, q0.h owner, Bundle bundle) {
        kotlin.jvm.internal.r.e(owner, "owner");
        this.f2812f = owner.getSavedStateRegistry();
        this.f2811e = owner.getLifecycle();
        this.f2810d = bundle;
        this.f2808b = application;
        this.f2809c = application != null ? u0.a.f2838f.a(application) : new u0.a();
    }

    @Override // androidx.lifecycle.u0.c
    public s0 a(Class modelClass) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return e(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.u0.c
    public s0 b(c9.c modelClass, l0.a extras) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        kotlin.jvm.internal.r.e(extras, "extras");
        return c(v8.a.a(modelClass), extras);
    }

    @Override // androidx.lifecycle.u0.c
    public s0 c(Class modelClass, l0.a extras) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        kotlin.jvm.internal.r.e(extras, "extras");
        String str = (String) extras.a(u0.f2836c);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (extras.a(k0.f2793a) == null || extras.a(k0.f2794b) == null) {
            if (this.f2811e != null) {
                return e(str, modelClass);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) extras.a(u0.a.f2840h);
        boolean zIsAssignableFrom = a.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || application == null) ? p0.c(modelClass, p0.f2814b) : p0.c(modelClass, p0.f2813a);
        return constructorC == null ? this.f2809c.c(modelClass, extras) : (!zIsAssignableFrom || application == null) ? p0.d(modelClass, constructorC, k0.a(extras)) : p0.d(modelClass, constructorC, application, k0.a(extras));
    }

    @Override // androidx.lifecycle.u0.e
    public void d(s0 viewModel) {
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        if (this.f2811e != null) {
            q0.e eVar = this.f2812f;
            kotlin.jvm.internal.r.b(eVar);
            l lVar = this.f2811e;
            kotlin.jvm.internal.r.b(lVar);
            k.a(viewModel, eVar, lVar);
        }
    }

    public final s0 e(String key, Class modelClass) {
        s0 s0VarD;
        Application application;
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        l lVar = this.f2811e;
        if (lVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = a.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || this.f2808b == null) ? p0.c(modelClass, p0.f2814b) : p0.c(modelClass, p0.f2813a);
        if (constructorC == null) {
            return this.f2808b != null ? this.f2809c.a(modelClass) : u0.d.f2844b.a().a(modelClass);
        }
        q0.e eVar = this.f2812f;
        kotlin.jvm.internal.r.b(eVar);
        j0 j0VarB = k.b(eVar, lVar, key, this.f2810d);
        if (!zIsAssignableFrom || (application = this.f2808b) == null) {
            s0VarD = p0.d(modelClass, constructorC, j0VarB.i());
        } else {
            kotlin.jvm.internal.r.b(application);
            s0VarD = p0.d(modelClass, constructorC, application, j0VarB.i());
        }
        s0VarD.a("androidx.lifecycle.savedstate.vm.tag", j0VarB);
        return s0VarD;
    }
}
