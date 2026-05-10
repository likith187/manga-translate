package k;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap f12878a;

    public c(int i10, float f10) {
        this.f12878a = new LinkedHashMap(i10, f10, true);
    }

    public final Object a(Object key) {
        r.e(key, "key");
        return this.f12878a.get(key);
    }

    public final Set b() {
        Set setEntrySet = this.f12878a.entrySet();
        r.d(setEntrySet, "map.entries");
        return setEntrySet;
    }

    public final boolean c() {
        return this.f12878a.isEmpty();
    }

    public final Object d(Object key, Object value) {
        r.e(key, "key");
        r.e(value, "value");
        return this.f12878a.put(key, value);
    }

    public final Object e(Object key) {
        r.e(key, "key");
        return this.f12878a.remove(key);
    }
}
