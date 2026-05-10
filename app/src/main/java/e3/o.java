package e3;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class o implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f11736d;

    public o(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        this.f11733a = aVar;
        this.f11734b = aVar2;
        this.f11735c = aVar3;
        this.f11736d = aVar4;
    }

    public static o a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        return new o(aVar, aVar2, aVar3, aVar4);
    }

    public static n c(Executor executor, f3.c cVar, p pVar, g3.b bVar) {
        return new n(executor, cVar, pVar, bVar);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public n get() {
        return c((Executor) this.f11733a.get(), (f3.c) this.f11734b.get(), (p) this.f11735c.get(), (g3.b) this.f11736d.get());
    }
}
