package e3;

import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f11729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f3.c f11730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p f11731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g3.b f11732d;

    n(Executor executor, f3.c cVar, p pVar, g3.b bVar) {
        this.f11729a = executor;
        this.f11730b = cVar;
        this.f11731c = pVar;
        this.f11732d = bVar;
    }

    static /* synthetic */ Object b(n nVar) {
        Iterator it = nVar.f11730b.Y().iterator();
        while (it.hasNext()) {
            nVar.f11731c.a((y2.m) it.next(), 1);
        }
        return null;
    }

    public void a() {
        this.f11729a.execute(l.a(this));
    }
}
