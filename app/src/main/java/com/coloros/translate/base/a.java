package com.coloros.translate.base;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a implements b {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f4799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f4800b;

    private a() {
    }

    @Override // com.coloros.translate.base.b
    public void a(Activity activity, int i10, e2.b callback) {
        r.e(activity, "activity");
        r.e(callback, "callback");
        b bVar = f4799a;
        if (bVar != null) {
            bVar.a(activity, i10, callback);
        }
    }

    @Override // com.coloros.translate.base.b
    public boolean b() {
        b bVar = f4799a;
        if (bVar != null) {
            return bVar.b();
        }
        return false;
    }

    @Override // com.coloros.translate.base.b
    public boolean c() {
        b bVar = f4799a;
        if (bVar != null) {
            return bVar.c();
        }
        return false;
    }

    @Override // com.coloros.translate.base.b
    public void d(Activity activity, e2.a functionInstructionCallback) {
        r.e(activity, "activity");
        r.e(functionInstructionCallback, "functionInstructionCallback");
        b bVar = f4799a;
        if (bVar != null) {
            bVar.d(activity, functionInstructionCallback);
        }
    }

    @Override // com.coloros.translate.base.b
    public boolean e(Context context) {
        r.e(context, "context");
        b bVar = f4799a;
        if (bVar != null) {
            return bVar.e(context);
        }
        return false;
    }

    public final Context f() {
        Application application = f4800b;
        if (application != null) {
            return application;
        }
        r.r("mApplication");
        return null;
    }

    public final void g(Application application, b provider) {
        r.e(application, "application");
        r.e(provider, "provider");
        f4800b = application;
        f4799a = provider;
    }
}
