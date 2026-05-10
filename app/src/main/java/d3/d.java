package d3;

import e3.p;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class d implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f11521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m8.a f11522e;

    public d(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5) {
        this.f11518a = aVar;
        this.f11519b = aVar2;
        this.f11520c = aVar3;
        this.f11521d = aVar4;
        this.f11522e = aVar5;
    }

    public static d a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4, m8.a aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, z2.e eVar, p pVar, f3.c cVar, g3.b bVar) {
        return new c(executor, eVar, pVar, cVar, bVar);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c get() {
        return c((Executor) this.f11518a.get(), (z2.e) this.f11519b.get(), (p) this.f11520c.get(), (f3.c) this.f11521d.get(), (g3.b) this.f11522e.get());
    }
}
