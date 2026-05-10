package n8;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f14096b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final short f14097a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ e0(short s10) {
        this.f14097a = s10;
    }

    public static final /* synthetic */ e0 a(short s10) {
        return new e0(s10);
    }

    public static short b(short s10) {
        return s10;
    }

    public static boolean c(short s10, Object obj) {
        return (obj instanceof e0) && s10 == ((e0) obj).f();
    }

    public static int d(short s10) {
        return Short.hashCode(s10);
    }

    public static String e(short s10) {
        return String.valueOf(s10 & 65535);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return kotlin.jvm.internal.r.f(f() & 65535, ((e0) obj).f() & 65535);
    }

    public boolean equals(Object obj) {
        return c(this.f14097a, obj);
    }

    public final /* synthetic */ short f() {
        return this.f14097a;
    }

    public int hashCode() {
        return d(this.f14097a);
    }

    public String toString() {
        return e(this.f14097a);
    }
}
