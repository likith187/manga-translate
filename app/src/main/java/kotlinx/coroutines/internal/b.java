package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13255a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_consensus$volatile");
    private volatile /* synthetic */ Object _consensus$volatile = a.f13253a;

    private final Object c(Object obj) {
        Object obj2 = f13255a.get(this);
        Object obj3 = a.f13253a;
        return obj2 != obj3 ? obj2 : androidx.concurrent.futures.b.a(f13255a, this, obj3, obj) ? obj : f13255a.get(this);
    }

    @Override // kotlinx.coroutines.internal.z
    public final Object a(Object obj) {
        Object objC = f13255a.get(this);
        if (objC == a.f13253a) {
            objC = c(e(obj));
        }
        b(obj, objC);
        return objC;
    }

    public abstract void b(Object obj, Object obj2);

    public abstract Object e(Object obj);
}
