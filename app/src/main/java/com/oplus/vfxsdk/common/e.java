package com.oplus.vfxsdk.common;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    public static final int a(Object[] objArr, Comparable key, w8.l selector) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(selector, "selector");
        int length = objArr.length - 1;
        int i10 = 0;
        while (i10 <= length) {
            int i11 = i10 + length;
            int iCompareTo = key.compareTo((Comparable) selector.invoke(objArr[i11]));
            if (iCompareTo < 0) {
                length = i11 - 1;
            } else {
                if (iCompareTo <= 0) {
                    return i11;
                }
                i10 = i11 + 1;
            }
        }
        return i10;
    }
}
