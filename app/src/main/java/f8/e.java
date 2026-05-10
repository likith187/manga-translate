package f8;

import com.oplus.vfxsdk.common.perf.Stat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f12039a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Stat f12040b = new Stat();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(long j10) {
            if (c().a().get(Long.valueOf(j10)) != null) {
                Object obj = c().a().get(Long.valueOf(j10));
                r.b(obj);
                return (b) obj;
            }
            b bVar = new b();
            c().a().put(Long.valueOf(j10), bVar);
            return bVar;
        }

        public final c b(String key) {
            r.e(key, "key");
            if (c().b().get(key) != null) {
                Object obj = c().b().get(key);
                r.b(obj);
                return (c) obj;
            }
            c cVar = new c();
            c().b().put(key, cVar);
            return cVar;
        }

        public final Stat c() {
            return e.f12040b;
        }

        private a() {
        }
    }
}
