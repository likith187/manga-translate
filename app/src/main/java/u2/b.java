package u2;

import androidx.appcompat.app.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: c */
    private final i f15830c;

    /* JADX INFO: renamed from: a */
    private final Map f15828a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Set f15829b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: d */
    private final CopyOnWriteArraySet f15831d = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: e */
    private boolean f15832e = true;

    public b(i iVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("springLooper is required");
        }
        this.f15830c = iVar;
        iVar.a(this);
    }

    void a(String str) {
        e eVar = (e) this.f15828a.get(str);
        if (eVar == null) {
            throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
        }
        this.f15829b.add(eVar);
        if (d()) {
            this.f15832e = false;
            this.f15830c.b();
        }
    }

    void b(double d10) {
        for (e eVar : this.f15829b) {
            if (eVar.q()) {
                eVar.b(d10 / 1000.0d);
            } else {
                this.f15829b.remove(eVar);
            }
        }
    }

    public e c() {
        e eVar = new e(this);
        f(eVar);
        return eVar;
    }

    public boolean d() {
        return this.f15832e;
    }

    public void e(double d10) {
        Iterator it = this.f15831d.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
        b(d10);
        if (this.f15829b.isEmpty()) {
            this.f15832e = true;
        }
        Iterator it2 = this.f15831d.iterator();
        if (it2.hasNext()) {
            t.a(it2.next());
            throw null;
        }
        if (this.f15832e) {
            this.f15830c.c();
        }
    }

    void f(e eVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("spring is required");
        }
        if (this.f15828a.containsKey(eVar.f())) {
            throw new IllegalArgumentException("spring is already registered");
        }
        this.f15828a.put(eVar.f(), eVar);
    }
}
