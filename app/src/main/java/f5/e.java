package f5;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f11931a = new HashMap();

    protected abstract Object a(Object obj);

    public Object b(Object obj) {
        synchronized (this.f11931a) {
            try {
                if (this.f11931a.containsKey(obj)) {
                    return this.f11931a.get(obj);
                }
                Object objA = a(obj);
                this.f11931a.put(obj, objA);
                return objA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
