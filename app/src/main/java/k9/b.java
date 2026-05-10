package k9;

import i9.d;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import m9.c;
import okhttp3.b0;
import okhttp3.t;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f12994c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f12995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f12996b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean a(okhttp3.b0 r4, okhttp3.z r5) {
            /*
                r3 = this;
                java.lang.String r3 = "response"
                kotlin.jvm.internal.r.e(r4, r3)
                java.lang.String r3 = "request"
                kotlin.jvm.internal.r.e(r5, r3)
                int r3 = r4.x()
                r0 = 200(0xc8, float:2.8E-43)
                r1 = 0
                if (r3 == r0) goto L65
                r0 = 410(0x19a, float:5.75E-43)
                if (r3 == r0) goto L65
                r0 = 414(0x19e, float:5.8E-43)
                if (r3 == r0) goto L65
                r0 = 501(0x1f5, float:7.02E-43)
                if (r3 == r0) goto L65
                r0 = 203(0xcb, float:2.84E-43)
                if (r3 == r0) goto L65
                r0 = 204(0xcc, float:2.86E-43)
                if (r3 == r0) goto L65
                r0 = 307(0x133, float:4.3E-43)
                if (r3 == r0) goto L3b
                r0 = 308(0x134, float:4.32E-43)
                if (r3 == r0) goto L65
                r0 = 404(0x194, float:5.66E-43)
                if (r3 == r0) goto L65
                r0 = 405(0x195, float:5.68E-43)
                if (r3 == r0) goto L65
                switch(r3) {
                    case 300: goto L65;
                    case 301: goto L65;
                    case 302: goto L3b;
                    default: goto L3a;
                }
            L3a:
                return r1
            L3b:
                java.lang.String r3 = "Expires"
                r0 = 2
                r2 = 0
                java.lang.String r3 = okhttp3.b0.I(r4, r3, r2, r0, r2)
                if (r3 != 0) goto L65
                okhttp3.d r3 = r4.i()
                int r3 = r3.c()
                r0 = -1
                if (r3 != r0) goto L65
                okhttp3.d r3 = r4.i()
                boolean r3 = r3.b()
                if (r3 != 0) goto L65
                okhttp3.d r3 = r4.i()
                boolean r3 = r3.a()
                if (r3 != 0) goto L65
                return r1
            L65:
                okhttp3.d r3 = r4.i()
                boolean r3 = r3.h()
                if (r3 != 0) goto L7a
                okhttp3.d r3 = r5.b()
                boolean r3 = r3.h()
                if (r3 != 0) goto L7a
                r1 = 1
            L7a:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: k9.b.a.a(okhttp3.b0, okhttp3.z):boolean");
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: k9.b$b, reason: collision with other inner class name */
    public static final class C0160b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f12997a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final z f12998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b0 f12999c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f13000d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13001e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f13002f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13003g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Date f13004h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f13005i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f13006j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f13007k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f13008l;

        public C0160b(long j10, z request, b0 b0Var) {
            r.e(request, "request");
            this.f12997a = j10;
            this.f12998b = request;
            this.f12999c = b0Var;
            this.f13008l = -1;
            if (b0Var != null) {
                this.f13005i = b0Var.E0();
                this.f13006j = b0Var.x0();
                t tVarN = b0Var.N();
                int size = tVarN.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String strC = tVarN.c(i10);
                    String strE = tVarN.e(i10);
                    if (kotlin.text.r.v(strC, "Date", true)) {
                        this.f13000d = c.a(strE);
                        this.f13001e = strE;
                    } else if (kotlin.text.r.v(strC, "Expires", true)) {
                        this.f13004h = c.a(strE);
                    } else if (kotlin.text.r.v(strC, "Last-Modified", true)) {
                        this.f13002f = c.a(strE);
                        this.f13003g = strE;
                    } else if (kotlin.text.r.v(strC, "ETag", true)) {
                        this.f13007k = strE;
                    } else if (kotlin.text.r.v(strC, "Age", true)) {
                        this.f13008l = d.T(strE, -1);
                    }
                }
            }
        }

        private final long a() {
            Date date = this.f13000d;
            long jMax = date != null ? Math.max(0L, this.f13006j - date.getTime()) : 0L;
            int i10 = this.f13008l;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f13006j;
            return jMax + (j10 - this.f13005i) + (this.f12997a - j10);
        }

        private final b c() {
            String str;
            if (this.f12999c == null) {
                return new b(this.f12998b, null);
            }
            if ((!this.f12998b.f() || this.f12999c.D() != null) && b.f12994c.a(this.f12999c, this.f12998b)) {
                okhttp3.d dVarB = this.f12998b.b();
                if (dVarB.g() || e(this.f12998b)) {
                    return new b(this.f12998b, null);
                }
                okhttp3.d dVarI = this.f12999c.i();
                long jA = a();
                long jD = d();
                if (dVarB.c() != -1) {
                    jD = Math.min(jD, TimeUnit.SECONDS.toMillis(dVarB.c()));
                }
                long millis = 0;
                long millis2 = dVarB.e() != -1 ? TimeUnit.SECONDS.toMillis(dVarB.e()) : 0L;
                if (!dVarI.f() && dVarB.d() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(dVarB.d());
                }
                if (!dVarI.g()) {
                    long j10 = millis2 + jA;
                    if (j10 < millis + jD) {
                        b0.a aVarB0 = this.f12999c.b0();
                        if (j10 >= jD) {
                            aVarB0.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (jA > 86400000 && f()) {
                            aVarB0.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, aVarB0.c());
                    }
                }
                String str2 = this.f13007k;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.f13002f != null) {
                        str2 = this.f13003g;
                    } else {
                        if (this.f13000d == null) {
                            return new b(this.f12998b, null);
                        }
                        str2 = this.f13001e;
                    }
                    str = "If-Modified-Since";
                }
                t.a aVarD = this.f12998b.e().d();
                r.b(str2);
                aVarD.c(str, str2);
                return new b(this.f12998b.h().d(aVarD.d()).b(), this.f12999c);
            }
            return new b(this.f12998b, null);
        }

        private final long d() {
            b0 b0Var = this.f12999c;
            r.b(b0Var);
            if (b0Var.i().c() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.c());
            }
            Date date = this.f13004h;
            if (date != null) {
                Date date2 = this.f13000d;
                long time = date.getTime() - (date2 != null ? date2.getTime() : this.f13006j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f13002f == null || this.f12999c.D0().i().n() != null) {
                return 0L;
            }
            Date date3 = this.f13000d;
            long time2 = date3 != null ? date3.getTime() : this.f13005i;
            Date date4 = this.f13002f;
            r.b(date4);
            long time3 = time2 - date4.getTime();
            if (time3 > 0) {
                return time3 / ((long) 10);
            }
            return 0L;
        }

        private final boolean e(z zVar) {
            return (zVar.d("If-Modified-Since") == null && zVar.d("If-None-Match") == null) ? false : true;
        }

        private final boolean f() {
            b0 b0Var = this.f12999c;
            r.b(b0Var);
            return b0Var.i().c() == -1 && this.f13004h == null;
        }

        public final b b() {
            b bVarC = c();
            return (bVarC.b() == null || !this.f12998b.b().i()) ? bVarC : new b(null, null);
        }
    }

    public b(z zVar, b0 b0Var) {
        this.f12995a = zVar;
        this.f12996b = b0Var;
    }

    public final b0 a() {
        return this.f12996b;
    }

    public final z b() {
        return this.f12995a;
    }
}
