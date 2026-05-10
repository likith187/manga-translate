package b1;

import com.slp.library.common.log.Logs;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: b */
    private b f4228b;

    /* JADX INFO: renamed from: a */
    private final Map f4227a = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: c */
    private final HashMap f4229c = new HashMap();

    private d c(d dVar) {
        d dVarG = g(dVar);
        return dVarG != null ? dVarG : dVar;
    }

    private Object f(Object obj) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Short)) {
            return obj;
        }
        return null;
    }

    private void i() {
        this.f4229c.clear();
        this.f4227a.clear();
    }

    @Override // b1.b
    public b a(b bVar) {
        e eVar;
        this.f4228b = bVar;
        if (bVar != null) {
            Map mapH = bVar.h();
            for (d dVar : this.f4227a.keySet()) {
                if (!mapH.containsKey(dVar) && (eVar = (e) this.f4227a.get(dVar)) != null) {
                    mapH.put(dVar, eVar);
                }
            }
        }
        i();
        return this;
    }

    @Override // b1.b
    public e b(d dVar) {
        d dVarC = c(dVar);
        b bVar = this.f4228b;
        if (bVar != null) {
            return bVar.b(dVarC);
        }
        e eVar = (e) this.f4227a.get(dVarC);
        if (eVar != null) {
            return eVar;
        }
        Object objA = ((g) dVarC).a();
        Object objF = f(objA);
        if (objF == null) {
            Logs.WARNS.logf("[%s] value not implements IClone， You need call setParamsValue a New Value!!", objA);
        }
        h hVar = new h(objF);
        this.f4227a.put(dVarC, hVar);
        return hVar;
    }

    @Override // b1.b
    public b d(d dVar, Object obj) {
        d dVarC = c(dVar);
        b bVar = this.f4228b;
        if (bVar != null) {
            return bVar.d(dVarC, obj);
        }
        if (obj == null) {
            this.f4227a.remove(dVarC);
        } else {
            b(dVarC).set(obj);
        }
        return this;
    }

    @Override // b1.b
    public Object e(d dVar) {
        return b(dVar).get();
    }

    public d g(d dVar) {
        return (d) this.f4229c.get(dVar);
    }

    @Override // b1.b
    public Map h() {
        b bVar = this.f4228b;
        return bVar != null ? bVar.h() : this.f4227a;
    }

    @Override // z0.c
    public void release() {
        i();
    }
}
