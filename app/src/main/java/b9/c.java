package b9;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends b9.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f4271h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final c f4272i = new c(1, 0);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f4272i;
        }

        private a() {
        }
    }

    public c(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // b9.a
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (a() != cVar.a() || c() != cVar.c()) {
                }
            }
            return true;
        }
        return false;
    }

    public Integer g() {
        return Integer.valueOf(c());
    }

    public Integer h() {
        return Integer.valueOf(a());
    }

    @Override // b9.a
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return c() + (a() * 31);
    }

    @Override // b9.a
    public boolean isEmpty() {
        return a() > c();
    }

    @Override // b9.a
    public String toString() {
        return a() + ".." + c();
    }
}
