package n8;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class z implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f14107b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14108a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ z(int i10) {
        this.f14108a = i10;
    }

    public static final /* synthetic */ z a(int i10) {
        return new z(i10);
    }

    public static int b(int i10) {
        return i10;
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof z) && i10 == ((z) obj).f();
    }

    public static int d(int i10) {
        return Integer.hashCode(i10);
    }

    public static String e(int i10) {
        return String.valueOf(((long) i10) & 4294967295L);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return j0.a(f(), ((z) obj).f());
    }

    public boolean equals(Object obj) {
        return c(this.f14108a, obj);
    }

    public final /* synthetic */ int f() {
        return this.f14108a;
    }

    public int hashCode() {
        return d(this.f14108a);
    }

    public String toString() {
        return e(this.f14108a);
    }
}
