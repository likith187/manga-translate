package l0;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0177a f13531b = new C0177a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f13532a = new LinkedHashMap();

    /* JADX INFO: renamed from: l0.a$a, reason: collision with other inner class name */
    public static final class C0177a {
        public /* synthetic */ C0177a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0177a() {
        }
    }

    public static final class b extends a {
        public static final b INSTANCE = new b();

        private b() {
        }

        @Override // l0.a
        public Object a(c key) {
            r.e(key, "key");
            return null;
        }
    }

    public interface c {
    }

    public abstract Object a(c cVar);

    public final Map b() {
        return this.f13532a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && r.a(this.f13532a, ((a) obj).f13532a);
    }

    public int hashCode() {
        return this.f13532a.hashCode();
    }

    public String toString() {
        return "CreationExtras(extras=" + this.f13532a + ')';
    }
}
