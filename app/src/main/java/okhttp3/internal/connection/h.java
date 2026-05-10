package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.r;
import okhttp3.d0;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f14879a = new LinkedHashSet();

    public final synchronized void a(d0 route) {
        r.e(route, "route");
        this.f14879a.remove(route);
    }

    public final synchronized void b(d0 failedRoute) {
        r.e(failedRoute, "failedRoute");
        this.f14879a.add(failedRoute);
    }

    public final synchronized boolean c(d0 route) {
        r.e(route, "route");
        return this.f14879a.contains(route);
    }
}
