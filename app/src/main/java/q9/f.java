package q9;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import q9.j;

/* JADX INFO: loaded from: classes2.dex */
public class f implements k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f15362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final j.a f15363g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f15364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f15365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f15366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Method f15367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f15368e;

    public static final class a {

        /* JADX INFO: renamed from: q9.f$a$a, reason: collision with other inner class name */
        public static final class C0212a implements j.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f15369a;

            C0212a(String str) {
                this.f15369a = str;
            }

            @Override // q9.j.a
            public boolean a(SSLSocket sslSocket) {
                r.e(sslSocket, "sslSocket");
                String name = sslSocket.getClass().getName();
                r.d(name, "sslSocket.javaClass.name");
                return kotlin.text.r.F(name, this.f15369a + '.', false, 2, null);
            }

            @Override // q9.j.a
            public k b(SSLSocket sslSocket) {
                r.e(sslSocket, "sslSocket");
                return f.f15362f.b(sslSocket.getClass());
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final f b(Class cls) {
            Class superclass = cls;
            while (superclass != null && !r.a(superclass.getSimpleName(), "OpenSSLSocketImpl")) {
                superclass = superclass.getSuperclass();
                if (superclass == null) {
                    throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
                }
            }
            r.b(superclass);
            return new f(superclass);
        }

        public final j.a c(String packageName) {
            r.e(packageName, "packageName");
            return new C0212a(packageName);
        }

        public final j.a d() {
            return f.f15363g;
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f15362f = aVar;
        f15363g = aVar.c("com.google.android.gms.org.conscrypt");
    }

    public f(Class sslSocketClass) throws NoSuchMethodException {
        r.e(sslSocketClass, "sslSocketClass");
        this.f15364a = sslSocketClass;
        Method declaredMethod = sslSocketClass.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        r.d(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.f15365b = declaredMethod;
        this.f15366c = sslSocketClass.getMethod("setHostname", String.class);
        this.f15367d = sslSocketClass.getMethod("getAlpnSelectedProtocol", null);
        this.f15368e = sslSocketClass.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // q9.k
    public boolean a(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        return this.f15364a.isInstance(sslSocket);
    }

    @Override // q9.k
    public String b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        if (!a(sslSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f15367d.invoke(sslSocket, null);
            if (bArr != null) {
                return new String(bArr, kotlin.text.d.f13110a);
            }
            return null;
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if ((cause instanceof NullPointerException) && r.a(((NullPointerException) cause).getMessage(), "ssl == null")) {
                return null;
            }
            throw new AssertionError(e11);
        }
    }

    @Override // q9.k
    public void c(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        if (a(sslSocket)) {
            try {
                this.f15365b.invoke(sslSocket, Boolean.TRUE);
                if (str != null) {
                    this.f15366c.invoke(sslSocket, str);
                }
                this.f15368e.invoke(sslSocket, p9.h.f15249a.c(protocols));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    @Override // q9.k
    public boolean isSupported() {
        return p9.b.f15223f.b();
    }
}
