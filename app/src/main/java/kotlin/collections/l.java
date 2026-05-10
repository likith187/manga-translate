package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends k {

    public static final class a extends c implements RandomAccess {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int[] f13029a;

        a(int[] iArr) {
            this.f13029a = iArr;
        }

        public boolean a(int i10) {
            return i.w(this.f13029a, i10);
        }

        @Override // kotlin.collections.c, java.util.List
        /* JADX INFO: renamed from: c */
        public Integer get(int i10) {
            return Integer.valueOf(this.f13029a[i10]);
        }

        @Override // kotlin.collections.a, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof Integer) {
                return a(((Number) obj).intValue());
            }
            return false;
        }

        public int d(int i10) {
            return m.K(this.f13029a, i10);
        }

        public int e(int i10) {
            return m.P(this.f13029a, i10);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return this.f13029a.length;
        }

        @Override // kotlin.collections.c, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return d(((Number) obj).intValue());
            }
            return -1;
        }

        @Override // kotlin.collections.a, java.util.Collection
        public boolean isEmpty() {
            return this.f13029a.length == 0;
        }

        @Override // kotlin.collections.c, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return e(((Number) obj).intValue());
            }
            return -1;
        }
    }

    public static List e(int[] iArr) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        return new a(iArr);
    }

    public static List f(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        List listA = n.a(objArr);
        kotlin.jvm.internal.r.d(listA, "asList(...)");
        return listA;
    }

    public static byte[] g(byte[] bArr, byte[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static char[] h(char[] cArr, char[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        System.arraycopy(cArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static int[] i(int[] iArr, int[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static long[] j(long[] jArr, long[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.r.e(jArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static Object[] k(Object[] objArr, Object[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        System.arraycopy(objArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static /* synthetic */ byte[] l(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return i.g(bArr, bArr2, i10, i11, i12);
    }

    public static /* synthetic */ int[] m(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        return i.i(iArr, iArr2, i10, i11, i12);
    }

    public static /* synthetic */ Object[] n(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return i.k(objArr, objArr2, i10, i11, i12);
    }

    public static byte[] o(byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        j.c(i11, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        kotlin.jvm.internal.r.d(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] p(Object[] objArr, int i10, int i11) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        j.c(i11, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i10, i11);
        kotlin.jvm.internal.r.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static void q(Object[] objArr, Object obj, int i10, int i11) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        Arrays.fill(objArr, i10, i11, obj);
    }

    public static /* synthetic */ void r(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        i.q(objArr, obj, i10, i11);
    }

    public static void s(Object[] objArr, Comparator comparator) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static Float[] t(float[] fArr) {
        kotlin.jvm.internal.r.e(fArr, "<this>");
        Float[] fArr2 = new Float[fArr.length];
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            fArr2[i10] = Float.valueOf(fArr[i10]);
        }
        return fArr2;
    }
}
