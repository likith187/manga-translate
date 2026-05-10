package kotlin.collections;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends j {
    public static boolean d(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr == null || objArr2 == null || objArr.length != objArr2.length) {
            return false;
        }
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = objArr[i10];
            Object obj2 = objArr2[i10];
            if (obj != obj2) {
                if (obj == null || obj2 == null) {
                    return false;
                }
                if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                    if (!i.d((Object[]) obj, (Object[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                    if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                    if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                    if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                    if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                    if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                    if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof n8.y) && (obj2 instanceof n8.y)) {
                    if (!p8.a.c(((n8.y) obj).q(), ((n8.y) obj2).q())) {
                        return false;
                    }
                } else if ((obj instanceof n8.f0) && (obj2 instanceof n8.f0)) {
                    if (!p8.a.a(((n8.f0) obj).q(), ((n8.f0) obj2).q())) {
                        return false;
                    }
                } else if ((obj instanceof n8.a0) && (obj2 instanceof n8.a0)) {
                    if (!p8.a.b(((n8.a0) obj).q(), ((n8.a0) obj2).q())) {
                        return false;
                    }
                } else if ((obj instanceof n8.c0) && (obj2 instanceof n8.c0)) {
                    if (!p8.a.d(((n8.c0) obj).q(), ((n8.c0) obj2).q())) {
                        return false;
                    }
                } else if (!kotlin.jvm.internal.r.a(obj, obj2)) {
                    return false;
                }
            }
        }
        return true;
    }
}
