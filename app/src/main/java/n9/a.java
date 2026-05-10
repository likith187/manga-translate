package n9;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.t;
import t9.f;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0184a f14109c = new C0184a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f14110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f14111b;

    /* JADX INFO: renamed from: n9.a$a, reason: collision with other inner class name */
    public static final class C0184a {
        public /* synthetic */ C0184a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0184a() {
        }
    }

    public a(f source) {
        r.e(source, "source");
        this.f14110a = source;
        this.f14111b = 262144L;
    }

    public final t a() {
        t.a aVar = new t.a();
        while (true) {
            String strB = b();
            if (strB.length() == 0) {
                return aVar.d();
            }
            aVar.b(strB);
        }
    }

    public final String b() {
        String strD0 = this.f14110a.d0(this.f14111b);
        this.f14111b -= (long) strD0.length();
        return strD0;
    }
}
