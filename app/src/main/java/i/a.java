package i;

import i.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f12346h = new HashMap();

    @Override // i.b
    protected b.c c(Object obj) {
        return (b.c) this.f12346h.get(obj);
    }

    public boolean contains(Object obj) {
        return this.f12346h.containsKey(obj);
    }

    @Override // i.b
    public Object g(Object obj, Object obj2) {
        b.c cVarC = c(obj);
        if (cVarC != null) {
            return cVarC.f12352b;
        }
        this.f12346h.put(obj, f(obj, obj2));
        return null;
    }

    @Override // i.b
    public Object h(Object obj) {
        Object objH = super.h(obj);
        this.f12346h.remove(obj);
        return objH;
    }

    public Map.Entry i(Object obj) {
        if (contains(obj)) {
            return ((b.c) this.f12346h.get(obj)).f12354f;
        }
        return null;
    }
}
