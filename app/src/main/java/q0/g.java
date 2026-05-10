package q0;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import q0.g;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f15274c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r0.b f15275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f15276b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final h0 c(h hVar) {
            hVar.getLifecycle().a(new q0.a(hVar));
            return h0.INSTANCE;
        }

        public final g b(final h owner) {
            r.e(owner, "owner");
            return new g(new r0.b(owner, new w8.a() { // from class: q0.f
                @Override // w8.a
                /* JADX INFO: renamed from: invoke */
                public final Object mo8invoke() {
                    return g.a.c(owner);
                }
            }), null);
        }

        private a() {
        }
    }

    public /* synthetic */ g(r0.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    public static final g a(h hVar) {
        return f15274c.b(hVar);
    }

    public final e b() {
        return this.f15276b;
    }

    public final void c() {
        this.f15275a.f();
    }

    public final void d(Bundle bundle) {
        this.f15275a.h(bundle);
    }

    public final void e(Bundle outBundle) {
        r.e(outBundle, "outBundle");
        this.f15275a.i(outBundle);
    }

    private g(r0.b bVar) {
        this.f15275a = bVar;
        this.f15276b = new e(bVar);
    }
}
