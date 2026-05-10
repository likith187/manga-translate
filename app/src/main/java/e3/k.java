package e3;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class k implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f11723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m8.a f11724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m8.a f11725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m8.a f11726g;

    public k(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5, m8.a aVar6, m8.a aVar7) {
        this.f11720a = aVar;
        this.f11721b = aVar2;
        this.f11722c = aVar3;
        this.f11723d = aVar4;
        this.f11724e = aVar5;
        this.f11725f = aVar6;
        this.f11726g = aVar7;
    }

    public static k a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5, m8.a aVar6, m8.a aVar7) {
        return new k(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static j c(Context context, z2.e eVar, f3.c cVar, p pVar, Executor executor, g3.b bVar, h3.a aVar) {
        return new j(context, eVar, cVar, pVar, executor, bVar, aVar);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public j get() {
        return c((Context) this.f11720a.get(), (z2.e) this.f11721b.get(), (f3.c) this.f11722c.get(), (p) this.f11723d.get(), (Executor) this.f11724e.get(), (g3.b) this.f11725f.get(), (h3.a) this.f11726g.get());
    }
}
