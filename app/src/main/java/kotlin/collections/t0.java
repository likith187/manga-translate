package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class t0 extends s0 {
    public static Set e(Set set, Iterable elements) {
        int size;
        kotlin.jvm.internal.r.e(set, "<this>");
        kotlin.jvm.internal.r.e(elements, "elements");
        Integer numS = r.s(elements);
        if (numS != null) {
            size = set.size() + numS.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(j0.e(size));
        linkedHashSet.addAll(set);
        o.v(linkedHashSet, elements);
        return linkedHashSet;
    }
}
