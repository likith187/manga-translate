package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: n */
    public static final b f14696n = new b(null);

    /* JADX INFO: renamed from: o */
    public static final d f14697o = new a().d().a();

    /* JADX INFO: renamed from: p */
    public static final d f14698p = new a().e().c(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* JADX INFO: renamed from: a */
    private final boolean f14699a;

    /* JADX INFO: renamed from: b */
    private final boolean f14700b;

    /* JADX INFO: renamed from: c */
    private final int f14701c;

    /* JADX INFO: renamed from: d */
    private final int f14702d;

    /* JADX INFO: renamed from: e */
    private final boolean f14703e;

    /* JADX INFO: renamed from: f */
    private final boolean f14704f;

    /* JADX INFO: renamed from: g */
    private final boolean f14705g;

    /* JADX INFO: renamed from: h */
    private final int f14706h;

    /* JADX INFO: renamed from: i */
    private final int f14707i;

    /* JADX INFO: renamed from: j */
    private final boolean f14708j;

    /* JADX INFO: renamed from: k */
    private final boolean f14709k;

    /* JADX INFO: renamed from: l */
    private final boolean f14710l;

    /* JADX INFO: renamed from: m */
    private String f14711m;

    public static final class a {

        /* JADX INFO: renamed from: a */
        private boolean f14712a;

        /* JADX INFO: renamed from: b */
        private boolean f14713b;

        /* JADX INFO: renamed from: c */
        private int f14714c = -1;

        /* JADX INFO: renamed from: d */
        private int f14715d = -1;

        /* JADX INFO: renamed from: e */
        private int f14716e = -1;

        /* JADX INFO: renamed from: f */
        private boolean f14717f;

        /* JADX INFO: renamed from: g */
        private boolean f14718g;

        /* JADX INFO: renamed from: h */
        private boolean f14719h;

        private final int b(long j10) {
            if (j10 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j10;
        }

        public final d a() {
            return new d(this.f14712a, this.f14713b, this.f14714c, -1, false, false, false, this.f14715d, this.f14716e, this.f14717f, this.f14718g, this.f14719h, null, null);
        }

        public final a c(int i10, TimeUnit timeUnit) {
            kotlin.jvm.internal.r.e(timeUnit, "timeUnit");
            if (i10 >= 0) {
                this.f14715d = b(timeUnit.toSeconds(i10));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + i10).toString());
        }

        public final a d() {
            this.f14712a = true;
            return this;
        }

        public final a e() {
            this.f14717f = true;
            return this;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(String str, String str2, int i10) {
            int length = str.length();
            while (i10 < length) {
                if (kotlin.text.r.J(str2, str.charAt(i10), false, 2, null)) {
                    return i10;
                }
                i10++;
            }
            return str.length();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x00d8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okhttp3.d b(okhttp3.t r31) {
            /*
                Method dump skipped, instruction units count: 403
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.d.b.b(okhttp3.t):okhttp3.d");
        }

        private b() {
        }
    }

    public /* synthetic */ d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, i10, i11, z12, z13, z14, i12, i13, z15, z16, z17, str);
    }

    public final boolean a() {
        return this.f14703e;
    }

    public final boolean b() {
        return this.f14704f;
    }

    public final int c() {
        return this.f14701c;
    }

    public final int d() {
        return this.f14706h;
    }

    public final int e() {
        return this.f14707i;
    }

    public final boolean f() {
        return this.f14705g;
    }

    public final boolean g() {
        return this.f14699a;
    }

    public final boolean h() {
        return this.f14700b;
    }

    public final boolean i() {
        return this.f14708j;
    }

    public String toString() {
        String str = this.f14711m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f14699a) {
            sb.append("no-cache, ");
        }
        if (this.f14700b) {
            sb.append("no-store, ");
        }
        if (this.f14701c != -1) {
            sb.append("max-age=");
            sb.append(this.f14701c);
            sb.append(", ");
        }
        if (this.f14702d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f14702d);
            sb.append(", ");
        }
        if (this.f14703e) {
            sb.append("private, ");
        }
        if (this.f14704f) {
            sb.append("public, ");
        }
        if (this.f14705g) {
            sb.append("must-revalidate, ");
        }
        if (this.f14706h != -1) {
            sb.append("max-stale=");
            sb.append(this.f14706h);
            sb.append(", ");
        }
        if (this.f14707i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f14707i);
            sb.append(", ");
        }
        if (this.f14708j) {
            sb.append("only-if-cached, ");
        }
        if (this.f14709k) {
            sb.append("no-transform, ");
        }
        if (this.f14710l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        this.f14711m = string;
        return string;
    }

    private d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.f14699a = z10;
        this.f14700b = z11;
        this.f14701c = i10;
        this.f14702d = i11;
        this.f14703e = z12;
        this.f14704f = z13;
        this.f14705g = z14;
        this.f14706h = i12;
        this.f14707i = i13;
        this.f14708j = z15;
        this.f14709k = z16;
        this.f14710l = z17;
        this.f14711m = str;
    }
}
