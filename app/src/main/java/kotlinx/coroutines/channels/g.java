package kotlinx.coroutines.channels;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f13215a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f13216b = new c();

    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f13217a;

        public a(Throwable th) {
            this.f13217a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && r.a(this.f13217a, ((a) obj).f13217a);
        }

        public int hashCode() {
            Throwable th = this.f13217a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.g.c
        public String toString() {
            return "Closed(" + this.f13217a + ')';
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Throwable th) {
            return g.b(new a(th));
        }

        public final Object b() {
            return g.b(g.f13216b);
        }

        public final Object c(Object obj) {
            return g.b(obj);
        }

        private b() {
        }
    }

    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    public static Object b(Object obj) {
        return obj;
    }

    public static final boolean c(Object obj) {
        return obj instanceof a;
    }

    public static final boolean d(Object obj) {
        return !(obj instanceof c);
    }
}
