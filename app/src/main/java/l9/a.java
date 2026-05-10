package l9;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f13654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f13655d;

    public a(String name, boolean z10) {
        r.e(name, "name");
        this.f13652a = name;
        this.f13653b = z10;
        this.f13655d = -1L;
    }

    public final boolean a() {
        return this.f13653b;
    }

    public final String b() {
        return this.f13652a;
    }

    public final long c() {
        return this.f13655d;
    }

    public final d d() {
        return this.f13654c;
    }

    public final void e(d queue) {
        r.e(queue, "queue");
        d dVar = this.f13654c;
        if (dVar == queue) {
            return;
        }
        if (dVar != null) {
            throw new IllegalStateException("task is in multiple queues");
        }
        this.f13654c = queue;
    }

    public abstract long f();

    public final void g(long j10) {
        this.f13655d = j10;
    }

    public String toString() {
        return this.f13652a;
    }

    public /* synthetic */ a(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? true : z10);
    }
}
