package x5;

import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f16392a = k.b(a.INSTANCE);

    public static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        public a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final y5.b mo8invoke() {
            return new y5.b();
        }
    }

    public final y5.b a() {
        return (y5.b) this.f16392a.getValue();
    }

    public final x5.a b() {
        return a();
    }

    public final void c(int i10, String str) {
        a().a(i10, str);
    }

    public final void d(Exception exception) {
        r.e(exception, "exception");
        a().d(exception);
    }

    public final void e(Object obj) {
        a().b(obj);
    }
}
