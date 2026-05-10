package kotlin.collections;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j {
    public static final Object[] a(Object[] reference, int i10) {
        kotlin.jvm.internal.r.e(reference, "reference");
        Object objNewInstance = Array.newInstance(reference.getClass().getComponentType(), i10);
        kotlin.jvm.internal.r.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) objNewInstance;
    }

    public static int b(Object[] objArr) {
        return Arrays.deepHashCode(objArr);
    }

    public static final void c(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }
}
