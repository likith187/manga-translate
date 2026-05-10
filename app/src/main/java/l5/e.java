package l5;

import com.heytap.epona.Request;
import com.heytap.epona.Response;
import com.heytap.epona.h;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f13592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Request f13593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f13594c = new AtomicBoolean(false);

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.heytap.epona.a f13595a;

        b(com.heytap.epona.a aVar) {
            this.f13595a = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = 0;
            z10 = 0;
            z10 = 0;
            try {
                try {
                    e.this.f(this.f13595a, true);
                    h hVar = e.this.f13592a;
                    hVar.f(this, true);
                    z10 = hVar;
                } catch (Exception e10) {
                    q5.a.c("RealCall", "AsyncCall run failed and exception is %s", e10.toString());
                    this.f13595a.onReceive(Response.b());
                    e.this.f13592a.f(this, false);
                }
            } catch (Throwable th) {
                e.this.f13592a.f(this, z10);
                throw th;
            }
        }
    }

    private static class c implements com.heytap.epona.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Response f13597a;

        private c() {
            this.f13597a = null;
        }

        public Response a() {
            return this.f13597a;
        }

        @Override // com.heytap.epona.a
        public void onReceive(Response response) {
            this.f13597a = response;
        }
    }

    private e(h hVar, Request request) {
        this.f13592a = hVar;
        this.f13593b = request;
    }

    public static e e(h hVar, Request request) {
        return new e(hVar, request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(com.heytap.epona.a aVar, boolean z10) {
        ArrayList arrayList = new ArrayList(com.heytap.epona.c.h());
        arrayList.add(new k5.a());
        arrayList.add(new k5.c());
        arrayList.add(new k5.d());
        arrayList.add(new k5.b());
        new f(arrayList, 0, this.f13593b, aVar, z10).b();
    }

    public void c(com.heytap.epona.a aVar) {
        b bVar = new b(aVar);
        if (this.f13594c.getAndSet(true)) {
            q5.a.f("RealCall", "asyncExecute has been executed", new Object[0]);
            aVar.onReceive(Response.b());
        }
        this.f13592a.b(bVar);
    }

    public Response d() {
        if (this.f13594c.getAndSet(true)) {
            q5.a.f("RealCall", "execute has been executed", new Object[0]);
            return Response.b();
        }
        try {
            this.f13592a.d(this);
            c cVar = new c();
            f(cVar, false);
            return cVar.a();
        } finally {
            this.f13592a.g(this);
        }
    }
}
