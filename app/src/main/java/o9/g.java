package o9;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import okhttp3.t;
import okhttp3.x;
import okhttp3.y;
import okhttp3.z;
import t9.a0;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements m9.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f14576g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final List f14577h = i9.d.v("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final List f14578i = i9.d.v("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final okhttp3.internal.connection.f f14579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m9.g f14580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f14581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile i f14582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y f14583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f14584f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(z request) {
            r.e(request, "request");
            t tVarE = request.e();
            ArrayList arrayList = new ArrayList(tVarE.size() + 4);
            arrayList.add(new c(c.f14475g, request.g()));
            arrayList.add(new c(c.f14476h, m9.i.INSTANCE.c(request.i())));
            String strD = request.d("Host");
            if (strD != null) {
                arrayList.add(new c(c.f14478j, strD));
            }
            arrayList.add(new c(c.f14477i, request.i().q()));
            int size = tVarE.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strC = tVarE.c(i10);
                Locale US = Locale.US;
                r.d(US, "US");
                String lowerCase = strC.toLowerCase(US);
                r.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (!g.f14577h.contains(lowerCase) || (r.a(lowerCase, "te") && r.a(tVarE.e(i10), "trailers"))) {
                    arrayList.add(new c(lowerCase, tVarE.e(i10)));
                }
            }
            return arrayList;
        }

        public final b0.a b(t headerBlock, y protocol) throws ProtocolException {
            r.e(headerBlock, "headerBlock");
            r.e(protocol, "protocol");
            t.a aVar = new t.a();
            int size = headerBlock.size();
            m9.k kVarA = null;
            for (int i10 = 0; i10 < size; i10++) {
                String strC = headerBlock.c(i10);
                String strE = headerBlock.e(i10);
                if (r.a(strC, ":status")) {
                    kVarA = m9.k.f13911d.a("HTTP/1.1 " + strE);
                } else if (!g.f14578i.contains(strC)) {
                    aVar.c(strC, strE);
                }
            }
            if (kVarA != null) {
                return new b0.a().p(protocol).g(kVarA.f13913b).m(kVarA.f13914c).k(aVar.d());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }

        private a() {
        }
    }

    public g(x client, okhttp3.internal.connection.f connection, m9.g chain, f http2Connection) {
        r.e(client, "client");
        r.e(connection, "connection");
        r.e(chain, "chain");
        r.e(http2Connection, "http2Connection");
        this.f14579a = connection;
        this.f14580b = chain;
        this.f14581c = http2Connection;
        List listW = client.w();
        y yVar = y.H2_PRIOR_KNOWLEDGE;
        this.f14583e = listW.contains(yVar) ? yVar : y.HTTP_2;
    }

    @Override // m9.d
    public void a() {
        i iVar = this.f14582d;
        r.b(iVar);
        iVar.n().close();
    }

    @Override // m9.d
    public void b(z request) throws IOException {
        r.e(request, "request");
        if (this.f14582d != null) {
            return;
        }
        this.f14582d = this.f14581c.U0(f14576g.a(request), request.a() != null);
        if (this.f14584f) {
            i iVar = this.f14582d;
            r.b(iVar);
            iVar.f(b.CANCEL);
            throw new IOException("Canceled");
        }
        i iVar2 = this.f14582d;
        r.b(iVar2);
        t9.b0 b0VarV = iVar2.v();
        long jH = this.f14580b.h();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        b0VarV.g(jH, timeUnit);
        i iVar3 = this.f14582d;
        r.b(iVar3);
        iVar3.E().g(this.f14580b.j(), timeUnit);
    }

    @Override // m9.d
    public void c() {
        this.f14581c.flush();
    }

    @Override // m9.d
    public void cancel() {
        this.f14584f = true;
        i iVar = this.f14582d;
        if (iVar != null) {
            iVar.f(b.CANCEL);
        }
    }

    @Override // m9.d
    public long d(b0 response) {
        r.e(response, "response");
        if (m9.e.b(response)) {
            return i9.d.u(response);
        }
        return 0L;
    }

    @Override // m9.d
    public a0 e(b0 response) {
        r.e(response, "response");
        i iVar = this.f14582d;
        r.b(iVar);
        return iVar.p();
    }

    @Override // m9.d
    public t9.y f(z request, long j10) {
        r.e(request, "request");
        i iVar = this.f14582d;
        r.b(iVar);
        return iVar.n();
    }

    @Override // m9.d
    public b0.a g(boolean z10) throws IOException {
        i iVar = this.f14582d;
        if (iVar == null) {
            throw new IOException("stream wasn't created");
        }
        b0.a aVarB = f14576g.b(iVar.C(), this.f14583e);
        if (z10 && aVarB.h() == 100) {
            return null;
        }
        return aVarB;
    }

    @Override // m9.d
    public okhttp3.internal.connection.f h() {
        return this.f14579a;
    }
}
