package y2;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class r implements q {

    /* JADX INFO: renamed from: e */
    private static volatile s f16548e;

    /* JADX INFO: renamed from: a */
    private final h3.a f16549a;

    /* JADX INFO: renamed from: b */
    private final h3.a f16550b;

    /* JADX INFO: renamed from: c */
    private final d3.e f16551c;

    /* JADX INFO: renamed from: d */
    private final e3.j f16552d;

    r(h3.a aVar, h3.a aVar2, d3.e eVar, e3.j jVar, e3.n nVar) {
        this.f16549a = aVar;
        this.f16550b = aVar2;
        this.f16551c = eVar;
        this.f16552d = jVar;
        nVar.a();
    }

    private h b(l lVar) {
        return h.a().i(this.f16549a.getTime()).k(this.f16550b.getTime()).j(lVar.g()).h(new g(lVar.b(), lVar.d())).g(lVar.c().a()).d();
    }

    public static r c() {
        s sVar = f16548e;
        if (sVar != null) {
            return sVar.i();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set d(e eVar) {
        return eVar instanceof f ? Collections.unmodifiableSet(((f) eVar).a()) : Collections.singleton(w2.b.b("proto"));
    }

    public static void f(Context context) {
        if (f16548e == null) {
            synchronized (r.class) {
                try {
                    if (f16548e == null) {
                        f16548e = d.k().b(context).a();
                    }
                } finally {
                }
            }
        }
    }

    @Override // y2.q
    public void a(l lVar, w2.h hVar) {
        this.f16551c.a(lVar.f().e(lVar.c().c()), b(lVar), hVar);
    }

    public e3.j e() {
        return this.f16552d;
    }

    public w2.g g(e eVar) {
        return new n(d(eVar), m.a().b(eVar.getName()).c(eVar.getExtras()).a(), this);
    }
}
