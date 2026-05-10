package m9;

import kotlin.jvm.internal.r;
import okhttp3.c0;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f13906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f13907c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t9.f f13908f;

    public h(String str, long j10, t9.f source) {
        r.e(source, "source");
        this.f13906b = str;
        this.f13907c = j10;
        this.f13908f = source;
    }

    @Override // okhttp3.c0
    public long i() {
        return this.f13907c;
    }

    @Override // okhttp3.c0
    public t9.f k() {
        return this.f13908f;
    }
}
