package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m extends l {

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Object[] $this_withIndex;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object[] objArr) {
            super(0);
            this.$this_withIndex = objArr;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Iterator<Object> mo8invoke() {
            return kotlin.jvm.internal.b.a(this.$this_withIndex);
        }
    }

    public static List A(Object[] objArr, int i10) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (i10 >= 0) {
            return T(objArr, b9.d.c(objArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static List B(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return (List) C(objArr, new ArrayList());
    }

    public static final Collection C(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static Object D(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static int E(int[] iArr) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        return iArr.length - 1;
    }

    public static int F(long[] jArr) {
        kotlin.jvm.internal.r.e(jArr, "<this>");
        return jArr.length - 1;
    }

    public static int G(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return objArr.length - 1;
    }

    public static Object H(Object[] objArr, int i10) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (i10 < 0 || i10 >= objArr.length) {
            return null;
        }
        return objArr[i10];
    }

    public static final int I(byte[] bArr, byte b10) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (b10 == bArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int J(char[] cArr, char c10) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (c10 == cArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int K(int[] iArr, int i10) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 == iArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static final int L(long[] jArr, long j10) {
        kotlin.jvm.internal.r.e(jArr, "<this>");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (j10 == jArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static int M(Object[] objArr, Object obj) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        int i10 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i10 < length) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i10 < length2) {
            if (kotlin.jvm.internal.r.a(obj, objArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final int N(short[] sArr, short s10) {
        kotlin.jvm.internal.r.e(sArr, "<this>");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (s10 == sArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static Object O(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[i.G(objArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static final int P(int[] iArr, int i10) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (i10 == iArr[length]) {
                    return length;
                }
                if (i11 < 0) {
                    break;
                }
                length = i11;
            }
        }
        return -1;
    }

    public static int[] Q(int[] iArr) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        if (iArr.length == 0) {
            return iArr;
        }
        int[] iArr2 = new int[iArr.length];
        int iE = i.E(iArr);
        if (iE >= 0) {
            int i10 = 0;
            while (true) {
                iArr2[iE - i10] = iArr[i10];
                if (i10 == iE) {
                    break;
                }
                i10++;
            }
        }
        return iArr2;
    }

    public static char R(char[] cArr) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static Object S(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static final List T(Object[] objArr, int i10) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return o.h();
        }
        int length = objArr.length;
        if (i10 >= length) {
            return i.W(objArr);
        }
        if (i10 == 1) {
            return o.b(objArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(objArr[i11]);
        }
        return arrayList;
    }

    public static final Collection U(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        for (Object obj : objArr) {
            destination.add(obj);
        }
        return destination;
    }

    public static float[] V(Float[] fArr) {
        kotlin.jvm.internal.r.e(fArr, "<this>");
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            fArr2[i10] = fArr[i10].floatValue();
        }
        return fArr2;
    }

    public static List W(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        int length = objArr.length;
        return length != 0 ? length != 1 ? i.Y(objArr) : o.b(objArr[0]) : o.h();
    }

    public static List X(int[] iArr) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static List Y(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return new ArrayList(q.e(objArr));
    }

    public static final Set Z(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        int length = objArr.length;
        return length != 0 ? length != 1 ? (Set) U(objArr, new LinkedHashSet(j0.e(objArr.length))) : r0.a(objArr[0]) : q0.b();
    }

    public static Iterable a0(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return new f0(new a(objArr));
    }

    public static List b0(Object[] objArr, Object[] other) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        int iMin = Math.min(objArr.length, other.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i10 = 0; i10 < iMin; i10++) {
            arrayList.add(n8.w.a(objArr[i10], other[i10]));
        }
        return arrayList;
    }

    public static boolean u(byte[] bArr, byte b10) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        return I(bArr, b10) >= 0;
    }

    public static boolean v(char[] cArr, char c10) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        return J(cArr, c10) >= 0;
    }

    public static boolean w(int[] iArr, int i10) {
        kotlin.jvm.internal.r.e(iArr, "<this>");
        return K(iArr, i10) >= 0;
    }

    public static boolean x(long[] jArr, long j10) {
        kotlin.jvm.internal.r.e(jArr, "<this>");
        return L(jArr, j10) >= 0;
    }

    public static boolean y(Object[] objArr, Object obj) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return i.M(objArr, obj) >= 0;
    }

    public static boolean z(short[] sArr, short s10) {
        kotlin.jvm.internal.r.e(sArr, "<this>");
        return N(sArr, s10) >= 0;
    }
}
