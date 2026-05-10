package okhttp3;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final okhttp3.internal.connection.g f14899a;

    public j(okhttp3.internal.connection.g delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f14899a = delegate;
    }

    public final okhttp3.internal.connection.g a() {
        return this.f14899a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(int i10, long j10, TimeUnit timeUnit) {
        this(new okhttp3.internal.connection.g(l9.e.INSTANCE, i10, j10, timeUnit));
        kotlin.jvm.internal.r.e(timeUnit, "timeUnit");
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
