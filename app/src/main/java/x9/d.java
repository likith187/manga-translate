package x9;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import x9.g;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final ExecutorService f16443m = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f16448e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f16450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f16451h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    List f16453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    g f16454k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    h f16455l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f16444a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f16445b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f16446c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f16447d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f16449f = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ExecutorService f16452i = f16443m;

    d() {
    }

    g a() {
        g gVar = this.f16454k;
        return gVar != null ? gVar : g.a.a();
    }

    h b() {
        h hVar = this.f16455l;
        if (hVar != null) {
            return hVar;
        }
        if (y9.a.a()) {
            return y9.a.b().f16576b;
        }
        return null;
    }
}
