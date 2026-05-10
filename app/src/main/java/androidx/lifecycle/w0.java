package androidx.lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f2847a = new LinkedHashMap();

    public final void a() {
        Iterator it = this.f2847a.values().iterator();
        while (it.hasNext()) {
            ((s0) it.next()).b();
        }
        this.f2847a.clear();
    }

    public final s0 b(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        return (s0) this.f2847a.get(key);
    }

    public final Set c() {
        return new HashSet(this.f2847a.keySet());
    }

    public final void d(String key, s0 viewModel) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(viewModel, "viewModel");
        s0 s0Var = (s0) this.f2847a.put(key, viewModel);
        if (s0Var != null) {
            s0Var.b();
        }
    }
}
