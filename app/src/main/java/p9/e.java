package p9;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f15235i = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Method f15236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f15237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Method f15238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class f15239g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Class f15240h;

    private static final class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f15241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f15242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f15243c;

        public a(List protocols) {
            r.e(protocols, "protocols");
            this.f15241a = protocols;
        }

        public final String a() {
            return this.f15243c;
        }

        public final boolean b() {
            return this.f15242b;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object proxy, Method method, Object[] objArr) {
            r.e(proxy, "proxy");
            r.e(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (r.a(name, "supports") && r.a(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (r.a(name, "unsupported") && r.a(Void.TYPE, returnType)) {
                this.f15242b = true;
                return null;
            }
            if (r.a(name, "protocols") && objArr.length == 0) {
                return this.f15241a;
            }
            if ((r.a(name, "selectProtocol") || r.a(name, "select")) && r.a(String.class, returnType) && objArr.length == 1) {
                Object obj = objArr[0];
                if (obj instanceof List) {
                    r.c(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
                    List list = (List) obj;
                    int size = list.size();
                    if (size >= 0) {
                        int i10 = 0;
                        while (true) {
                            Object obj2 = list.get(i10);
                            r.c(obj2, "null cannot be cast to non-null type kotlin.String");
                            String str = (String) obj2;
                            if (!this.f15241a.contains(str)) {
                                if (i10 == size) {
                                    break;
                                }
                                i10++;
                            } else {
                                this.f15243c = str;
                                return str;
                            }
                        }
                    }
                    String str2 = (String) this.f15241a.get(0);
                    this.f15243c = str2;
                    return str2;
                }
            }
            if ((!r.a(name, "protocolSelected") && !r.a(name, "selected")) || objArr.length != 1) {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
            Object obj3 = objArr[0];
            r.c(obj3, "null cannot be cast to non-null type kotlin.String");
            this.f15243c = (String) obj3;
            return null;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            String jvmVersion = System.getProperty("java.specification.version", "unknown");
            try {
                r.d(jvmVersion, "jvmVersion");
                if (Integer.parseInt(jvmVersion) >= 9) {
                    return null;
                }
            } catch (NumberFormatException unused) {
            }
            try {
                Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
                Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider", true, null);
                Class<?> clientProviderClass = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider", true, null);
                Class<?> serverProviderClass = Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider", true, null);
                Method putMethod = cls.getMethod("put", SSLSocket.class, cls2);
                Method getMethod = cls.getMethod("get", SSLSocket.class);
                Method removeMethod = cls.getMethod("remove", SSLSocket.class);
                r.d(putMethod, "putMethod");
                r.d(getMethod, "getMethod");
                r.d(removeMethod, "removeMethod");
                r.d(clientProviderClass, "clientProviderClass");
                r.d(serverProviderClass, "serverProviderClass");
                return new e(putMethod, getMethod, removeMethod, clientProviderClass, serverProviderClass);
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return null;
            }
        }

        private b() {
        }
    }

    public e(Method putMethod, Method getMethod, Method removeMethod, Class clientProviderClass, Class serverProviderClass) {
        r.e(putMethod, "putMethod");
        r.e(getMethod, "getMethod");
        r.e(removeMethod, "removeMethod");
        r.e(clientProviderClass, "clientProviderClass");
        r.e(serverProviderClass, "serverProviderClass");
        this.f15236d = putMethod;
        this.f15237e = getMethod;
        this.f15238f = removeMethod;
        this.f15239g = clientProviderClass;
        this.f15240h = serverProviderClass;
    }

    @Override // p9.h
    public void b(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        try {
            this.f15238f.invoke(null, sslSocket);
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to remove ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to remove ALPN", e11);
        }
    }

    @Override // p9.h
    public void e(SSLSocket sslSocket, String str, List protocols) {
        r.e(sslSocket, "sslSocket");
        r.e(protocols, "protocols");
        try {
            this.f15236d.invoke(null, sslSocket, Proxy.newProxyInstance(h.class.getClassLoader(), new Class[]{this.f15239g, this.f15240h}, new a(h.f15249a.b(protocols))));
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to set ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to set ALPN", e11);
        }
    }

    @Override // p9.h
    public String g(SSLSocket sslSocket) {
        r.e(sslSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f15237e.invoke(null, sslSocket));
            r.c(invocationHandler, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            a aVar = (a) invocationHandler;
            if (!aVar.b() && aVar.a() == null) {
                h.k(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, null, 6, null);
                return null;
            }
            if (aVar.b()) {
                return null;
            }
            return aVar.a();
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to get ALPN selected protocol", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to get ALPN selected protocol", e11);
        }
    }
}
