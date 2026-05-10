package s9;

import java.util.List;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import p9.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15583a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(X509TrustManager trustManager) {
            r.e(trustManager, "trustManager");
            return h.f15249a.g().c(trustManager);
        }

        private a() {
        }
    }

    public abstract List a(List list, String str);
}
