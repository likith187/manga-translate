package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class hb extends ib {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f8322a = new Object[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f8323b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f8324c;

    hb(int i10) {
    }

    private final void b(int i10) {
        Object[] objArr = this.f8322a;
        int length = objArr.length;
        if (length >= i10) {
            if (this.f8324c) {
                this.f8322a = (Object[]) objArr.clone();
                this.f8324c = false;
                return;
            }
            return;
        }
        int i11 = length + (length >> 1) + 1;
        if (i11 < i10) {
            int iHighestOneBit = Integer.highestOneBit(i10 - 1);
            i11 = iHighestOneBit + iHighestOneBit;
        }
        if (i11 < 0) {
            i11 = Integer.MAX_VALUE;
        }
        this.f8322a = Arrays.copyOf(objArr, i11);
        this.f8324c = false;
    }

    public final hb a(Object obj) {
        obj.getClass();
        b(this.f8323b + 1);
        Object[] objArr = this.f8322a;
        int i10 = this.f8323b;
        this.f8323b = i10 + 1;
        objArr[i10] = obj;
        return this;
    }
}
