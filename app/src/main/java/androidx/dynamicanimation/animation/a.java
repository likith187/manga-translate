package androidx.dynamicanimation.animation;

import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.i;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ThreadLocal f2267g = new ThreadLocal();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f2271d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f2268a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f2269b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final C0021a f2270c = new C0021a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f2272e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2273f = false;

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.a$a, reason: collision with other inner class name */
    class C0021a {
        C0021a() {
        }

        void a() {
            a.this.f2272e = SystemClock.uptimeMillis();
            a aVar = a.this;
            aVar.c(aVar.f2272e);
            if (a.this.f2269b.size() > 0) {
                a.this.e().a();
            }
        }
    }

    interface b {
        boolean doAnimationFrame(long j10);
    }

    static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final C0021a f2275a;

        c(C0021a c0021a) {
            this.f2275a = c0021a;
        }

        abstract void a();
    }

    private static class d extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Choreographer f2276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Choreographer.FrameCallback f2277c;

        /* JADX INFO: renamed from: androidx.dynamicanimation.animation.a$d$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0022a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0022a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j10) {
                d.this.f2275a.a();
            }
        }

        d(C0021a c0021a) {
            super(c0021a);
            this.f2276b = Choreographer.getInstance();
            this.f2277c = new ChoreographerFrameCallbackC0022a();
        }

        @Override // androidx.dynamicanimation.animation.a.c
        void a() {
            this.f2276b.postFrameCallback(this.f2277c);
        }
    }

    a() {
    }

    private void b() {
        if (this.f2273f) {
            for (int size = this.f2269b.size() - 1; size >= 0; size--) {
                if (this.f2269b.get(size) == null) {
                    this.f2269b.remove(size);
                }
            }
            this.f2273f = false;
        }
    }

    public static a d() {
        ThreadLocal threadLocal = f2267g;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return (a) threadLocal.get();
    }

    private boolean f(b bVar, long j10) {
        Long l10 = (Long) this.f2268a.get(bVar);
        if (l10 == null) {
            return true;
        }
        if (l10.longValue() >= j10) {
            return false;
        }
        this.f2268a.remove(bVar);
        return true;
    }

    public void a(b bVar, long j10) {
        if (this.f2269b.size() == 0) {
            e().a();
        }
        if (!this.f2269b.contains(bVar)) {
            this.f2269b.add(bVar);
        }
        if (j10 > 0) {
            this.f2268a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j10));
        }
    }

    void c(long j10) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i10 = 0; i10 < this.f2269b.size(); i10++) {
            b bVar = (b) this.f2269b.get(i10);
            if (bVar != null && f(bVar, jUptimeMillis)) {
                bVar.doAnimationFrame(j10);
            }
        }
        b();
    }

    c e() {
        if (this.f2271d == null) {
            this.f2271d = new d(this.f2270c);
        }
        return this.f2271d;
    }

    public void g(b bVar) {
        this.f2268a.remove(bVar);
        int iIndexOf = this.f2269b.indexOf(bVar);
        if (iIndexOf >= 0) {
            this.f2269b.set(iIndexOf, null);
            this.f2273f = true;
        }
    }
}
