package n8;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class x implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f14102b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte f14103a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ x(byte b10) {
        this.f14103a = b10;
    }

    public static final /* synthetic */ x a(byte b10) {
        return new x(b10);
    }

    public static byte b(byte b10) {
        return b10;
    }

    public static boolean c(byte b10, Object obj) {
        return (obj instanceof x) && b10 == ((x) obj).f();
    }

    public static int d(byte b10) {
        return Byte.hashCode(b10);
    }

    public static String e(byte b10) {
        return String.valueOf(b10 & 255);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return kotlin.jvm.internal.r.f(f() & 255, ((x) obj).f() & 255);
    }

    public boolean equals(Object obj) {
        return c(this.f14103a, obj);
    }

    public final /* synthetic */ byte f() {
        return this.f14103a;
    }

    public int hashCode() {
        return d(this.f14103a);
    }

    public String toString() {
        return e(this.f14103a);
    }
}
