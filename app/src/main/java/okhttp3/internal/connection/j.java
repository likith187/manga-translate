package okhttp3.internal.connection;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.d0;
import okhttp3.q;
import okhttp3.u;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f14880i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final okhttp3.a f14881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f14882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final okhttp3.e f14883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q f14884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f14885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f14887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f14888h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(InetSocketAddress inetSocketAddress) {
            r.e(inetSocketAddress, "<this>");
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                String hostName = inetSocketAddress.getHostName();
                r.d(hostName, "hostName");
                return hostName;
            }
            String hostAddress = address.getHostAddress();
            r.d(hostAddress, "address.hostAddress");
            return hostAddress;
        }

        private a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f14889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14890b;

        public b(List routes) {
            r.e(routes, "routes");
            this.f14889a = routes;
        }

        public final List a() {
            return this.f14889a;
        }

        public final boolean b() {
            return this.f14890b < this.f14889a.size();
        }

        public final d0 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List list = this.f14889a;
            int i10 = this.f14890b;
            this.f14890b = i10 + 1;
            return (d0) list.get(i10);
        }
    }

    public j(okhttp3.a address, h routeDatabase, okhttp3.e call, q eventListener) {
        r.e(address, "address");
        r.e(routeDatabase, "routeDatabase");
        r.e(call, "call");
        r.e(eventListener, "eventListener");
        this.f14881a = address;
        this.f14882b = routeDatabase;
        this.f14883c = call;
        this.f14884d = eventListener;
        this.f14885e = o.h();
        this.f14887g = o.h();
        this.f14888h = new ArrayList();
        f(address.l(), address.g());
    }

    private final boolean b() {
        return this.f14886f < this.f14885e.size();
    }

    private final Proxy d() throws SocketException, UnknownHostException {
        if (b()) {
            List list = this.f14885e;
            int i10 = this.f14886f;
            this.f14886f = i10 + 1;
            Proxy proxy = (Proxy) list.get(i10);
            e(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f14881a.l().h() + "; exhausted proxy configurations: " + this.f14885e);
    }

    private final void e(Proxy proxy) throws SocketException, UnknownHostException {
        String strH;
        int iM;
        List listB;
        ArrayList arrayList = new ArrayList();
        this.f14887g = arrayList;
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strH = this.f14881a.l().h();
            iM = this.f14881a.l().m();
        } else {
            SocketAddress proxyAddress = proxy.address();
            if (!(proxyAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + proxyAddress.getClass()).toString());
            }
            a aVar = f14880i;
            r.d(proxyAddress, "proxyAddress");
            InetSocketAddress inetSocketAddress = (InetSocketAddress) proxyAddress;
            strH = aVar.a(inetSocketAddress);
            iM = inetSocketAddress.getPort();
        }
        if (1 > iM || iM >= 65536) {
            throw new SocketException("No route to " + strH + ':' + iM + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            arrayList.add(InetSocketAddress.createUnresolved(strH, iM));
            return;
        }
        if (i9.d.i(strH)) {
            listB = o.b(InetAddress.getByName(strH));
        } else {
            this.f14884d.m(this.f14883c, strH);
            List listA = this.f14881a.c().a(strH);
            if (listA.isEmpty()) {
                throw new UnknownHostException(this.f14881a.c() + " returned no addresses for " + strH);
            }
            this.f14884d.l(this.f14883c, strH, listA);
            listB = listA;
        }
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(new InetSocketAddress((InetAddress) it.next(), iM));
        }
    }

    private final void f(u uVar, Proxy proxy) {
        this.f14884d.o(this.f14883c, uVar);
        List listG = g(proxy, uVar, this);
        this.f14885e = listG;
        this.f14886f = 0;
        this.f14884d.n(this.f14883c, uVar, listG);
    }

    private static final List g(Proxy proxy, u uVar, j jVar) {
        if (proxy != null) {
            return o.b(proxy);
        }
        URI uriR = uVar.r();
        if (uriR.getHost() == null) {
            return i9.d.v(Proxy.NO_PROXY);
        }
        List<Proxy> proxiesOrNull = jVar.f14881a.i().select(uriR);
        if (proxiesOrNull == null || proxiesOrNull.isEmpty()) {
            return i9.d.v(Proxy.NO_PROXY);
        }
        r.d(proxiesOrNull, "proxiesOrNull");
        return i9.d.Q(proxiesOrNull);
    }

    public final boolean a() {
        return b() || !this.f14888h.isEmpty();
    }

    public final b c() {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (b()) {
            Proxy proxyD = d();
            Iterator it = this.f14887g.iterator();
            while (it.hasNext()) {
                d0 d0Var = new d0(this.f14881a, proxyD, (InetSocketAddress) it.next());
                if (this.f14882b.c(d0Var)) {
                    this.f14888h.add(d0Var);
                } else {
                    arrayList.add(d0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            o.v(arrayList, this.f14888h);
            this.f14888h.clear();
        }
        return new b(arrayList);
    }
}
