package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f2815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f2816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f2817c;

    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final u f2818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l.a f2819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2820c;

        public a(u registry, l.a event) {
            kotlin.jvm.internal.r.e(registry, "registry");
            kotlin.jvm.internal.r.e(event, "event");
            this.f2818a = registry;
            this.f2819b = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2820c) {
                return;
            }
            this.f2818a.i(this.f2819b);
            this.f2820c = true;
        }
    }

    public q0(s provider) {
        kotlin.jvm.internal.r.e(provider, "provider");
        this.f2815a = new u(provider);
        this.f2816b = new Handler();
    }

    private final void f(l.a aVar) {
        a aVar2 = this.f2817c;
        if (aVar2 != null) {
            aVar2.run();
        }
        a aVar3 = new a(this.f2815a, aVar);
        this.f2817c = aVar3;
        Handler handler = this.f2816b;
        kotlin.jvm.internal.r.b(aVar3);
        handler.postAtFrontOfQueue(aVar3);
    }

    public l a() {
        return this.f2815a;
    }

    public void b() {
        f(l.a.ON_START);
    }

    public void c() {
        f(l.a.ON_CREATE);
    }

    public void d() {
        f(l.a.ON_STOP);
        f(l.a.ON_DESTROY);
    }

    public void e() {
        f(l.a.ON_START);
    }
}
