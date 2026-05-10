package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f7719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Feature f7720b;

    /* synthetic */ z(b bVar, Feature feature, y yVar) {
        this.f7719a = bVar;
        this.f7720b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof z)) {
            z zVar = (z) obj;
            if (com.google.android.gms.common.internal.j.a(this.f7719a, zVar.f7719a) && com.google.android.gms.common.internal.j.a(this.f7720b, zVar.f7720b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.j.b(this.f7719a, this.f7720b);
    }

    public final String toString() {
        return com.google.android.gms.common.internal.j.c(this).a("key", this.f7719a).a("feature", this.f7720b).toString();
    }
}
