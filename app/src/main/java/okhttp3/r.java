package okhttp3;

import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.u;

/* JADX INFO: loaded from: classes2.dex */
public final class r extends a0 {

    /* JADX INFO: renamed from: d */
    public static final b f14944d = new b(null);

    /* JADX INFO: renamed from: e */
    private static final w f14945e = w.f14980e.a("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: b */
    private final List f14946b;

    /* JADX INFO: renamed from: c */
    private final List f14947c;

    public static final class a {

        /* JADX INFO: renamed from: a */
        private final Charset f14948a;

        /* JADX INFO: renamed from: b */
        private final List f14949b = new ArrayList();

        /* JADX INFO: renamed from: c */
        private final List f14950c = new ArrayList();

        public a(Charset charset) {
            this.f14948a = charset;
        }

        public final a a(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            List list = this.f14949b;
            u.b bVar = u.f14959k;
            list.add(u.b.b(bVar, name, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f14948a, 91, null));
            this.f14950c.add(u.b.b(bVar, value, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f14948a, 91, null));
            return this;
        }

        public final r b() {
            return new r(this.f14949b, this.f14950c);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public r(List encodedNames, List encodedValues) {
        kotlin.jvm.internal.r.e(encodedNames, "encodedNames");
        kotlin.jvm.internal.r.e(encodedValues, "encodedValues");
        this.f14946b = i9.d.Q(encodedNames);
        this.f14947c = i9.d.Q(encodedValues);
    }

    private final long f(t9.e eVar, boolean z10) throws EOFException {
        t9.d dVarD;
        if (z10) {
            dVarD = new t9.d();
        } else {
            kotlin.jvm.internal.r.b(eVar);
            dVarD = eVar.d();
        }
        int size = this.f14946b.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                dVarD.T(38);
            }
            dVarD.u0((String) this.f14946b.get(i10));
            dVarD.T(61);
            dVarD.u0((String) this.f14947c.get(i10));
        }
        if (!z10) {
            return 0L;
        }
        long jG0 = dVarD.G0();
        dVarD.i();
        return jG0;
    }

    @Override // okhttp3.a0
    public long a() {
        return f(null, true);
    }

    @Override // okhttp3.a0
    public w b() {
        return f14945e;
    }

    @Override // okhttp3.a0
    public void e(t9.e sink) throws EOFException {
        kotlin.jvm.internal.r.e(sink, "sink");
        f(sink, false);
    }
}
