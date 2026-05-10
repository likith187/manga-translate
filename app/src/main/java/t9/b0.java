package t9;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public class b0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f15731d = new b(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b0 f15732e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f15733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f15734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f15735c;

    public static final class a extends b0 {
        a() {
        }

        @Override // t9.b0
        public b0 d(long j10) {
            return this;
        }

        @Override // t9.b0
        public void f() {
        }

        @Override // t9.b0
        public b0 g(long j10, TimeUnit unit) {
            kotlin.jvm.internal.r.e(unit, "unit");
            return this;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public b0 a() {
        this.f15733a = false;
        return this;
    }

    public b0 b() {
        this.f15735c = 0L;
        return this;
    }

    public long c() {
        if (this.f15733a) {
            return this.f15734b;
        }
        throw new IllegalStateException("No deadline");
    }

    public b0 d(long j10) {
        this.f15733a = true;
        this.f15734b = j10;
        return this;
    }

    public boolean e() {
        return this.f15733a;
    }

    public void f() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f15733a && this.f15734b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public b0 g(long j10, TimeUnit unit) {
        kotlin.jvm.internal.r.e(unit, "unit");
        if (j10 >= 0) {
            this.f15735c = unit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j10).toString());
    }

    public long h() {
        return this.f15735c;
    }
}
