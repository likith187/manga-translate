package x1;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f16188d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue f16189a = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f16190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f16191c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(int i10) {
        this.f16190b = 65536;
        this.f16191c = 32;
        if (i10 > 0) {
            this.f16190b = i10;
            this.f16191c = 2097152 / i10;
        }
    }

    public final void a() {
        synchronized (this.f16189a) {
            this.f16189a.clear();
            n8.h0 h0Var = n8.h0.INSTANCE;
        }
    }

    public final Object b() {
        Object objPoll;
        synchronized (this.f16189a) {
            objPoll = this.f16189a.poll();
            n8.h0 h0Var = n8.h0.INSTANCE;
        }
        if (objPoll == null) {
            objPoll = d(this.f16190b);
            com.coloros.translate.utils.c0.f7098a.d("ByteArrayPool", "Created temp bytes");
        }
        kotlin.jvm.internal.r.b(objPoll);
        return objPoll;
    }

    protected abstract int c(Object obj);

    protected abstract Object d(int i10);

    public final boolean e(Object obj) {
        boolean z10 = false;
        if (obj == null || c(obj) != this.f16190b) {
            return false;
        }
        synchronized (this.f16189a) {
            try {
                if (this.f16189a.size() < this.f16191c) {
                    this.f16189a.offer(obj);
                    z10 = true;
                }
                n8.h0 h0Var = n8.h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z10;
    }
}
