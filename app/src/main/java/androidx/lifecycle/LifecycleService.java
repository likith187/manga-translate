package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleService extends Service implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0 f2747a = new q0(this);

    @Override // androidx.lifecycle.s
    public l getLifecycle() {
        return this.f2747a.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        this.f2747a.b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2747a.c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f2747a.d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i10) {
        this.f2747a.e();
        super.onStart(intent, i10);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        return super.onStartCommand(intent, i10, i11);
    }
}
