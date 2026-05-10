package androidx.recyclerview.widget;

import androidx.recyclerview.widget.k;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f3264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f3265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k.f f3266c;

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Object f3267d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Executor f3268e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Executor f3269a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f3270b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final k.f f3271c;

        public a(k.f fVar) {
            this.f3271c = fVar;
        }

        public c a() {
            if (this.f3270b == null) {
                synchronized (f3267d) {
                    try {
                        if (f3268e == null) {
                            f3268e = Executors.newFixedThreadPool(2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.f3270b = f3268e;
            }
            return new c(this.f3269a, this.f3270b, this.f3271c);
        }
    }

    c(Executor executor, Executor executor2, k.f fVar) {
        this.f3264a = executor;
        this.f3265b = executor2;
        this.f3266c = fVar;
    }

    public Executor a() {
        return this.f3265b;
    }

    public k.f b() {
        return this.f3266c;
    }

    public Executor c() {
        return this.f3264a;
    }
}
