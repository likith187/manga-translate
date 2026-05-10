package n8;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f14087b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f14088a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ b0(long j10) {
        this.f14088a = j10;
    }

    public static final /* synthetic */ b0 a(long j10) {
        return new b0(j10);
    }

    public static long b(long j10) {
        return j10;
    }

    public static boolean c(long j10, Object obj) {
        return (obj instanceof b0) && j10 == ((b0) obj).f();
    }

    public static int d(long j10) {
        return Long.hashCode(j10);
    }

    public static String e(long j10) {
        return j0.c(j10, 10);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return j0.b(f(), ((b0) obj).f());
    }

    public boolean equals(Object obj) {
        return c(this.f14088a, obj);
    }

    public final /* synthetic */ long f() {
        return this.f14088a;
    }

    public int hashCode() {
        return d(this.f14088a);
    }

    public String toString() {
        return e(this.f14088a);
    }
}
