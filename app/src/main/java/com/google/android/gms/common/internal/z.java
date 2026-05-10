package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f7929a = new SparseIntArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.common.b f7930b;

    public z(com.google.android.gms.common.b bVar) {
        k.g(bVar);
        this.f7930b = bVar;
    }

    public final int a(Context context, int i10) {
        return this.f7929a.get(i10, -1);
    }

    public final int b(Context context, a.f fVar) {
        k.g(context);
        k.g(fVar);
        int i10 = 0;
        if (!fVar.e()) {
            return 0;
        }
        int iG = fVar.g();
        int iA = a(context, iG);
        if (iA == -1) {
            int i11 = 0;
            while (true) {
                if (i11 >= this.f7929a.size()) {
                    i10 = -1;
                    break;
                }
                int iKeyAt = this.f7929a.keyAt(i11);
                if (iKeyAt > iG && this.f7929a.get(iKeyAt) == 0) {
                    break;
                }
                i11++;
            }
            iA = i10 == -1 ? this.f7930b.g(context, iG) : i10;
            this.f7929a.put(iG, iA);
        }
        return iA;
    }

    public final void c() {
        this.f7929a.clear();
    }
}
