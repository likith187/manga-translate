package kotlin.collections;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w extends v {
    public static List H(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        return new p0(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int I(List list, int i10) {
        if (i10 >= 0 && i10 <= o.j(list)) {
            return o.j(list) - i10;
        }
        throw new IndexOutOfBoundsException("Element index " + i10 + " must be in range [" + new b9.c(0, o.j(list)) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int J(List list, int i10) {
        return o.j(list) - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int K(List list, int i10) {
        if (i10 >= 0 && i10 <= list.size()) {
            return list.size() - i10;
        }
        throw new IndexOutOfBoundsException("Position index " + i10 + " must be in range [" + new b9.c(0, list.size()) + "].");
    }
}
