package q4;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f15345b;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f15347b = null;

        b(String str) {
            this.f15346a = str;
        }

        public c a() {
            return new c(this.f15346a, this.f15347b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.f15347b)));
        }

        public b b(Annotation annotation) {
            if (this.f15347b == null) {
                this.f15347b = new HashMap();
            }
            this.f15347b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public static c d(String str) {
        return new c(str, Collections.emptyMap());
    }

    public String b() {
        return this.f15344a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.f15345b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f15344a.equals(cVar.f15344a) && this.f15345b.equals(cVar.f15345b);
    }

    public int hashCode() {
        return (this.f15344a.hashCode() * 31) + this.f15345b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f15344a + ", properties=" + this.f15345b.values() + "}";
    }

    private c(String str, Map map) {
        this.f15344a = str;
        this.f15345b = map;
    }
}
