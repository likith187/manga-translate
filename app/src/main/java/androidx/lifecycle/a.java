package androidx.lifecycle;

import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends s0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application f2750b;

    public a(Application application) {
        kotlin.jvm.internal.r.e(application, "application");
        this.f2750b = application;
    }

    public Application e() {
        Application application = this.f2750b;
        kotlin.jvm.internal.r.c(application, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication");
        return application;
    }
}
