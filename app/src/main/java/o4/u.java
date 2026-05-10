package o4;

/* JADX INFO: loaded from: classes.dex */
public class u implements u4.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f14432c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Object f14433a = f14432c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile u4.b f14434b;

    public u(u4.b bVar) {
        this.f14434b = bVar;
    }

    @Override // u4.b
    public Object get() {
        Object obj = this.f14433a;
        Object obj2 = f14432c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f14433a;
                    if (obj == obj2) {
                        obj = this.f14434b.get();
                        this.f14433a = obj;
                        this.f14434b = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
