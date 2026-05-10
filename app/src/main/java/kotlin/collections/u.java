package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class u extends t {
    public static void t(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static void u(List list, Comparator comparator) {
        kotlin.jvm.internal.r.e(list, "<this>");
        kotlin.jvm.internal.r.e(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
