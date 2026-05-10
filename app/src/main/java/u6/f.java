package u6;

import com.oplus.epona.Call$Callback;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.epona.k;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f15879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Request f15880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f15881c = new AtomicBoolean(false);

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Call$Callback f15882a;

        b(Call$Callback call$Callback) {
            this.f15882a = call$Callback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = 0;
            z10 = 0;
            z10 = 0;
            try {
                try {
                    f.this.f(this.f15882a, true);
                    k kVar = f.this.f15879a;
                    kVar.f(this, true);
                    z10 = kVar;
                } catch (Exception e10) {
                    c8.a.d("Epona->RealCall", "AsyncCall run failed and exception is %s", e10.toString());
                    this.f15882a.onReceive(Response.a());
                    f.this.f15879a.f(this, false);
                }
            } catch (Throwable th) {
                f.this.f15879a.f(this, z10);
                throw th;
            }
        }
    }

    private static class c implements Call$Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Response f15884a;

        private c() {
            this.f15884a = null;
        }

        public Response a() {
            return this.f15884a;
        }

        @Override // com.oplus.epona.Call$Callback
        public void onReceive(Response response) {
            this.f15884a = response;
        }
    }

    private f(k kVar, Request request) {
        this.f15879a = kVar;
        this.f15880b = request;
    }

    public static f e(k kVar, Request request) {
        return new f(kVar, request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Call$Callback call$Callback, boolean z10) {
        ArrayList arrayList = new ArrayList(com.oplus.epona.d.k());
        arrayList.add(new s6.a());
        arrayList.add(new s6.c());
        arrayList.add(new s6.e());
        arrayList.add(com.oplus.epona.d.i());
        new g(arrayList, 0, this.f15880b, call$Callback, z10).b();
    }

    public void c(Call$Callback call$Callback) {
        b bVar = new b(call$Callback);
        if (this.f15881c.getAndSet(true)) {
            c8.a.i("Epona->RealCall", "asyncExecute has been executed", new Object[0]);
            call$Callback.onReceive(Response.a());
        }
        this.f15879a.b(bVar);
    }

    public Response d() {
        Response responseC;
        try {
            if (this.f15881c.getAndSet(true)) {
                c8.a.i("Epona->RealCall", "execute has been executed", new Object[0]);
                return Response.a();
            }
            try {
                this.f15879a.d(this);
                c cVar = new c();
                f(cVar, false);
                responseC = cVar.a();
            } catch (Exception e10) {
                c8.a.d("Epona->RealCall", "call has exception:" + e10.toString() + ", message:" + e10.getMessage(), new Object[0]);
                responseC = Response.c(e10.getMessage());
            }
            return responseC;
        } finally {
            this.f15879a.g(this);
        }
    }
}
