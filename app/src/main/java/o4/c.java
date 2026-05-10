package o4;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f14387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f14388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f14389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f14390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f14391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f14392f;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f14393a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set f14394b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f14395c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f14396d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private g f14397e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Set f14398f;

        /* JADX INFO: Access modifiers changed from: private */
        public b e() {
            this.f14396d = 1;
            return this;
        }

        private void f(Class cls) {
            a0.a(!this.f14393a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b b(o oVar) {
            a0.c(oVar, "Null dependency");
            f(oVar.b());
            this.f14394b.add(oVar);
            return this;
        }

        public c c() {
            a0.d(this.f14397e != null, "Missing required property: factory.");
            return new c(new HashSet(this.f14393a), new HashSet(this.f14394b), this.f14395c, this.f14396d, this.f14397e, this.f14398f);
        }

        public b d(g gVar) {
            this.f14397e = (g) a0.c(gVar, "Null factory");
            return this;
        }

        private b(Class cls, Class... clsArr) {
            HashSet hashSet = new HashSet();
            this.f14393a = hashSet;
            this.f14394b = new HashSet();
            this.f14395c = 0;
            this.f14396d = 0;
            this.f14398f = new HashSet();
            a0.c(cls, "Null interface");
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                a0.c(cls2, "Null interface");
            }
            Collections.addAll(this.f14393a, clsArr);
        }
    }

    public static b a(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b b(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static b g(Class cls) {
        return a(cls).e();
    }

    static /* synthetic */ Object k(Object obj, d dVar) {
        return obj;
    }

    public static c l(Object obj, Class cls, Class... clsArr) {
        return b(cls, clsArr).d(o4.b.b(obj)).c();
    }

    public Set c() {
        return this.f14388b;
    }

    public g d() {
        return this.f14391e;
    }

    public Set e() {
        return this.f14387a;
    }

    public Set f() {
        return this.f14392f;
    }

    public boolean h() {
        return this.f14389c == 1;
    }

    public boolean i() {
        return this.f14389c == 2;
    }

    public boolean j() {
        return this.f14390d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f14387a.toArray()) + ">{" + this.f14389c + ", type=" + this.f14390d + ", deps=" + Arrays.toString(this.f14388b.toArray()) + "}";
    }

    private c(Set set, Set set2, int i10, int i11, g gVar, Set set3) {
        this.f14387a = Collections.unmodifiableSet(set);
        this.f14388b = Collections.unmodifiableSet(set2);
        this.f14389c = i10;
        this.f14390d = i11;
        this.f14391e = gVar;
        this.f14392f = Collections.unmodifiableSet(set3);
    }
}
