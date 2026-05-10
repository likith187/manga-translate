package o8;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final Object[] a(int i10) {
        if (i10 >= 0) {
            return new Object[i10];
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }

    public static final Object[] b(Object[] objArr, int i10) {
        r.e(objArr, "<this>");
        Object[] objArrCopyOf = Arrays.copyOf(objArr, i10);
        r.d(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static final void c(Object[] objArr, int i10) {
        r.e(objArr, "<this>");
        objArr[i10] = null;
    }

    public static final void d(Object[] objArr, int i10, int i11) {
        r.e(objArr, "<this>");
        while (i10 < i11) {
            c(objArr, i10);
            i10++;
        }
    }
}
