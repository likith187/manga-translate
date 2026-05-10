package o4;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class b0 extends o4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f14378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f14379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f14380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f14381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f14382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f14383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f14384g;

    private static class a implements t4.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f14385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t4.b f14386b;

        public a(Set set, t4.b bVar) {
            this.f14385a = set;
            this.f14386b = bVar;
        }
    }

    b0(c cVar, d dVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (o oVar : cVar.c()) {
            if (oVar.d()) {
                if (oVar.f()) {
                    hashSet4.add(oVar.b());
                } else {
                    hashSet.add(oVar.b());
                }
            } else if (oVar.c()) {
                hashSet3.add(oVar.b());
            } else if (oVar.f()) {
                hashSet5.add(oVar.b());
            } else {
                hashSet2.add(oVar.b());
            }
        }
        if (!cVar.f().isEmpty()) {
            hashSet.add(t4.b.class);
        }
        this.f14378a = Collections.unmodifiableSet(hashSet);
        this.f14379b = Collections.unmodifiableSet(hashSet2);
        this.f14380c = Collections.unmodifiableSet(hashSet3);
        this.f14381d = Collections.unmodifiableSet(hashSet4);
        this.f14382e = Collections.unmodifiableSet(hashSet5);
        this.f14383f = cVar.f();
        this.f14384g = dVar;
    }

    @Override // o4.a, o4.d
    public Object a(Class cls) {
        if (!this.f14378a.contains(cls)) {
            throw new q(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object objA = this.f14384g.a(cls);
        return !cls.equals(t4.b.class) ? objA : new a(this.f14383f, (t4.b) objA);
    }

    @Override // o4.a, o4.d
    public Set b(Class cls) {
        if (this.f14381d.contains(cls)) {
            return this.f14384g.b(cls);
        }
        throw new q(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // o4.d
    public u4.b c(Class cls) {
        if (this.f14379b.contains(cls)) {
            return this.f14384g.c(cls);
        }
        throw new q(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // o4.d
    public u4.b d(Class cls) {
        if (this.f14382e.contains(cls)) {
            return this.f14384g.d(cls);
        }
        throw new q(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }
}
