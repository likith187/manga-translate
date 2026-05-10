package q9;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends f {

    /* JADX INFO: renamed from: j */
    public static final a f15380j = new a(null);

    /* JADX INFO: renamed from: h */
    private final Class f15381h;

    /* JADX INFO: renamed from: i */
    private final Class f15382i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ k b(a aVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = "com.android.org.conscrypt";
            }
            return aVar.a(str);
        }

        public final k a(String packageName) {
            r.e(packageName, "packageName");
            try {
                Class<?> cls = Class.forName(packageName + ".OpenSSLSocketImpl");
                r.c(cls, "null cannot be cast to non-null type java.lang.Class<in javax.net.ssl.SSLSocket>");
                Class<?> cls2 = Class.forName(packageName + ".OpenSSLSocketFactoryImpl");
                r.c(cls2, "null cannot be cast to non-null type java.lang.Class<in javax.net.ssl.SSLSocketFactory>");
                Class<?> paramsClass = Class.forName(packageName + ".SSLParametersImpl");
                r.d(paramsClass, "paramsClass");
                return new l(cls, cls2, paramsClass);
            } catch (Exception e10) {
                p9.h.f15249a.g().j("unable to load android socket classes", 5, e10);
                return null;
            }
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Class sslSocketClass, Class sslSocketFactoryClass, Class paramClass) {
        super(sslSocketClass);
        r.e(sslSocketClass, "sslSocketClass");
        r.e(sslSocketFactoryClass, "sslSocketFactoryClass");
        r.e(paramClass, "paramClass");
        this.f15381h = sslSocketFactoryClass;
        this.f15382i = paramClass;
    }
}
