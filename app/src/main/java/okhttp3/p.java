package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14939a = a.f14941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p f14940b = new a.C0196a();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f14941a = new a();

        /* JADX INFO: renamed from: okhttp3.p$a$a, reason: collision with other inner class name */
        private static final class C0196a implements p {
            @Override // okhttp3.p
            public List a(String hostname) throws UnknownHostException {
                kotlin.jvm.internal.r.e(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    kotlin.jvm.internal.r.d(allByName, "getAllByName(hostname)");
                    return kotlin.collections.i.W(allByName);
                } catch (NullPointerException e10) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + hostname);
                    unknownHostException.initCause(e10);
                    throw unknownHostException;
                }
            }
        }

        private a() {
        }
    }

    List a(String str);
}
