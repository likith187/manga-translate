package e3;

import android.app.job.JobInfo;
import e3.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private h3.a f11696a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f11697b = new HashMap();

        public a a(w2.d dVar, b bVar) {
            this.f11697b.put(dVar, bVar);
            return this;
        }

        public d b() {
            if (this.f11696a == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.f11697b.keySet().size() < w2.d.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map map = this.f11697b;
            this.f11697b = new HashMap();
            return d.d(this.f11696a, map);
        }

        public a c(h3.a aVar) {
            this.f11696a = aVar;
            return this;
        }
    }

    public static abstract class b {

        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new b.C0137b().c(Collections.emptySet());
        }

        abstract long b();

        abstract Set c();

        abstract long d();
    }

    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    private long a(int i10, long j10) {
        return (long) (Math.pow(3.0d, i10 - 1) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * ((long) r7))));
    }

    public static a b() {
        return new a();
    }

    static d d(h3.a aVar, Map map) {
        return new e3.a(aVar, map);
    }

    public static d f(h3.a aVar) {
        return b().a(w2.d.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(w2.d.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(w2.d.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.NETWORK_UNMETERED, c.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static Set i(Object... objArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(objArr)));
    }

    private void j(JobInfo.Builder builder, Set set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public JobInfo.Builder c(JobInfo.Builder builder, w2.d dVar, long j10, int i10) {
        builder.setMinimumLatency(g(dVar, j10, i10));
        j(builder, ((b) h().get(dVar)).c());
        return builder;
    }

    abstract h3.a e();

    public long g(w2.d dVar, long j10, int i10) {
        long time = j10 - e().getTime();
        b bVar = (b) h().get(dVar);
        return Math.min(Math.max(a(i10, bVar.b()), time), bVar.d());
    }

    abstract Map h();
}
