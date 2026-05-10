package j9;

import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.b;
import okhttp3.b0;
import okhttp3.d0;
import okhttp3.g;
import okhttp3.n;
import okhttp3.p;
import okhttp3.u;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f12873d;

    /* JADX INFO: renamed from: j9.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0158a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12874a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f12874a = iArr;
        }
    }

    public a(p defaultDns) {
        r.e(defaultDns, "defaultDns");
        this.f12873d = defaultDns;
    }

    private final InetAddress b(Proxy proxy, u uVar, p pVar) {
        Proxy.Type type = proxy.type();
        if ((type == null ? -1 : C0158a.f12874a[type.ordinal()]) == 1) {
            return (InetAddress) o.Q(pVar.a(uVar.h()));
        }
        SocketAddress socketAddressAddress = proxy.address();
        r.c(socketAddressAddress, "null cannot be cast to non-null type java.net.InetSocketAddress");
        InetAddress address = ((InetSocketAddress) socketAddressAddress).getAddress();
        r.d(address, "address() as InetSocketAddress).address");
        return address;
    }

    @Override // okhttp3.b
    public z a(d0 d0Var, b0 response) {
        Proxy proxy;
        p pVarC;
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication;
        okhttp3.a aVarA;
        r.e(response, "response");
        List<g> listV = response.v();
        z zVarD0 = response.D0();
        u uVarI = zVarD0.i();
        boolean z10 = response.x() == 407;
        if (d0Var == null || (proxy = d0Var.b()) == null) {
            proxy = Proxy.NO_PROXY;
        }
        for (g gVar : listV) {
            if (kotlin.text.r.v("Basic", gVar.c(), true)) {
                if (d0Var == null || (aVarA = d0Var.a()) == null || (pVarC = aVarA.c()) == null) {
                    pVarC = this.f12873d;
                }
                if (z10) {
                    SocketAddress socketAddressAddress = proxy.address();
                    r.c(socketAddressAddress, "null cannot be cast to non-null type java.net.InetSocketAddress");
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    String hostName = inetSocketAddress.getHostName();
                    r.d(proxy, "proxy");
                    passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(hostName, b(proxy, uVarI, pVarC), inetSocketAddress.getPort(), uVarI.q(), gVar.b(), gVar.c(), uVarI.s(), Authenticator.RequestorType.PROXY);
                } else {
                    String strH = uVarI.h();
                    r.d(proxy, "proxy");
                    passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(strH, b(proxy, uVarI, pVarC), uVarI.m(), uVarI.q(), gVar.b(), gVar.c(), uVarI.s(), Authenticator.RequestorType.SERVER);
                }
                if (passwordAuthenticationRequestPasswordAuthentication != null) {
                    String str = z10 ? "Proxy-Authorization" : "Authorization";
                    String userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                    r.d(userName, "auth.userName");
                    char[] password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                    r.d(password, "auth.password");
                    return zVarD0.h().c(str, n.a(userName, new String(password), gVar.a())).b();
                }
            }
        }
        return null;
    }

    public /* synthetic */ a(p pVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? p.f14940b : pVar);
    }
}
