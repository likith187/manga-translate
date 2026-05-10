package a3;

/* JADX INFO: loaded from: classes.dex */
public final class a implements m8.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f66c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile m8.a f67a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f68b = f66c;

    private a(m8.a aVar) {
        this.f67a = aVar;
    }

    public static m8.a a(m8.a aVar) {
        d.b(aVar);
        return aVar instanceof a ? aVar : new a(aVar);
    }

    public static Object b(Object obj, Object obj2) {
        if (obj == f66c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // m8.a
    public Object get() {
        Object obj = this.f68b;
        Object obj2 = f66c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f68b;
                    if (obj == obj2) {
                        obj = this.f67a.get();
                        this.f68b = b(this.f68b, obj);
                        this.f67a = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
