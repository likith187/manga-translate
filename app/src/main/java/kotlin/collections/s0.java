package kotlin.collections;

import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s0 extends r0 {
    public static Set b() {
        return c0.INSTANCE;
    }

    public static final Set c(Set set) {
        kotlin.jvm.internal.r.e(set, "<this>");
        int size = set.size();
        return size != 0 ? size != 1 ? set : r0.a(set.iterator().next()) : q0.b();
    }

    public static Set d(Object... elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return m.Z(elements);
    }
}
