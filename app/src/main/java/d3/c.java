package d3;

import e3.p;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import y2.m;
import y2.r;

/* JADX INFO: loaded from: classes.dex */
public class c implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Logger f11512f = Logger.getLogger(r.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f11513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f11514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z2.e f11515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f3.c f11516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g3.b f11517e;

    public c(Executor executor, z2.e eVar, p pVar, f3.c cVar, g3.b bVar) {
        this.f11514b = executor;
        this.f11515c = eVar;
        this.f11513a = pVar;
        this.f11516d = cVar;
        this.f11517e = bVar;
    }

    static /* synthetic */ Object b(c cVar, m mVar, y2.h hVar) {
        cVar.f11516d.C(mVar, hVar);
        cVar.f11513a.a(mVar, 1);
        return null;
    }

    static /* synthetic */ void c(c cVar, m mVar, w2.h hVar, y2.h hVar2) {
        try {
            z2.m mVarA = cVar.f11515c.a(mVar.b());
            if (mVarA == null) {
                String str = String.format("Transport backend '%s' is not registered", mVar.b());
                f11512f.warning(str);
                hVar.a(new IllegalArgumentException(str));
            } else {
                cVar.f11517e.c(b.a(cVar, mVar, mVarA.a(hVar2)));
                hVar.a(null);
            }
        } catch (Exception e10) {
            f11512f.warning("Error scheduling event " + e10.getMessage());
            hVar.a(e10);
        }
    }

    @Override // d3.e
    public void a(m mVar, y2.h hVar, w2.h hVar2) {
        this.f11514b.execute(a.a(this, mVar, hVar2, hVar));
    }
}
