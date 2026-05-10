package kotlin.coroutines;

import kotlin.coroutines.g;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements g.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f13035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g.c f13036b;

    public b(g.c baseKey, l safeCast) {
        r.e(baseKey, "baseKey");
        r.e(safeCast, "safeCast");
        this.f13035a = safeCast;
        this.f13036b = baseKey instanceof b ? ((b) baseKey).f13036b : baseKey;
    }

    public final boolean a(g.c key) {
        r.e(key, "key");
        return key == this || this.f13036b == key;
    }

    public final g.b b(g.b element) {
        r.e(element, "element");
        return (g.b) this.f13035a.invoke(element);
    }
}
