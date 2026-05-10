package e3;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import z2.g;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a */
    private final Context f11713a;

    /* JADX INFO: renamed from: b */
    private final z2.e f11714b;

    /* JADX INFO: renamed from: c */
    private final f3.c f11715c;

    /* JADX INFO: renamed from: d */
    private final p f11716d;

    /* JADX INFO: renamed from: e */
    private final Executor f11717e;

    /* JADX INFO: renamed from: f */
    private final g3.b f11718f;

    /* JADX INFO: renamed from: g */
    private final h3.a f11719g;

    public j(Context context, z2.e eVar, f3.c cVar, p pVar, Executor executor, g3.b bVar, h3.a aVar) {
        this.f11713a = context;
        this.f11714b = eVar;
        this.f11715c = cVar;
        this.f11716d = pVar;
        this.f11717e = executor;
        this.f11718f = bVar;
        this.f11719g = aVar;
    }

    static /* synthetic */ Object c(j jVar, z2.g gVar, Iterable iterable, y2.m mVar, int i10) {
        if (gVar.c() == g.a.TRANSIENT_ERROR) {
            jVar.f11715c.m0(iterable);
            jVar.f11716d.a(mVar, i10 + 1);
            return null;
        }
        jVar.f11715c.q(iterable);
        if (gVar.c() == g.a.OK) {
            jVar.f11715c.s0(mVar, jVar.f11719g.getTime() + gVar.b());
        }
        if (!jVar.f11715c.o0(mVar)) {
            return null;
        }
        jVar.f11716d.b(mVar, 1, true);
        return null;
    }

    static /* synthetic */ Object d(j jVar, y2.m mVar, int i10) {
        jVar.f11716d.a(mVar, i10 + 1);
        return null;
    }

    static /* synthetic */ void e(j jVar, y2.m mVar, int i10, Runnable runnable) {
        try {
            try {
                g3.b bVar = jVar.f11718f;
                f3.c cVar = jVar.f11715c;
                cVar.getClass();
                bVar.c(h.a(cVar));
                if (jVar.a()) {
                    jVar.f(mVar, i10);
                } else {
                    jVar.f11718f.c(i.a(jVar, mVar, i10));
                }
            } catch (g3.a unused) {
                jVar.f11716d.a(mVar, i10 + 1);
            }
            runnable.run();
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }

    boolean a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f11713a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    void f(y2.m mVar, int i10) {
        z2.g gVarB;
        z2.m mVarA = this.f11714b.a(mVar.b());
        Iterable iterable = (Iterable) this.f11718f.c(f.a(this, mVar));
        if (iterable.iterator().hasNext()) {
            if (mVarA == null) {
                b3.a.a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                gVarB = z2.g.a();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((f3.i) it.next()).b());
                }
                gVarB = mVarA.b(z2.f.a().b(arrayList).c(mVar.c()).a());
            }
            this.f11718f.c(g.a(this, gVarB, iterable, mVar, i10));
        }
    }

    public void g(y2.m mVar, int i10, Runnable runnable) {
        this.f11717e.execute(e.a(this, mVar, i10, runnable));
    }
}
