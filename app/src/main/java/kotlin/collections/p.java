package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class p {
    public static final Object[] a(Object[] objArr, boolean z10) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (z10 && kotlin.jvm.internal.r.a(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        kotlin.jvm.internal.r.d(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static List b(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        kotlin.jvm.internal.r.d(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static final Object[] c(int i10, Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        if (i10 < array.length) {
            array[i10] = null;
        }
        return array;
    }
}
