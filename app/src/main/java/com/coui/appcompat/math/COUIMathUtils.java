package com.coui.appcompat.math;

/* JADX INFO: loaded from: classes.dex */
public class COUIMathUtils {
    public static int floorDiv(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    public static int floorMod(int i10, int i11) {
        return i10 - (floorDiv(i10, i11) * i11);
    }
}
