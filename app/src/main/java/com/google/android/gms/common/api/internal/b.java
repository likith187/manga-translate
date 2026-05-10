package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.api.a f7605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a.d f7606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7607d;

    private b(com.google.android.gms.common.api.a aVar, a.d dVar, String str) {
        this.f7605b = aVar;
        this.f7606c = dVar;
        this.f7607d = str;
        this.f7604a = com.google.android.gms.common.internal.j.b(aVar, dVar, str);
    }

    public static b a(com.google.android.gms.common.api.a aVar, a.d dVar, String str) {
        return new b(aVar, dVar, str);
    }

    public final String b() {
        return this.f7605b.b();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return com.google.android.gms.common.internal.j.a(this.f7605b, bVar.f7605b) && com.google.android.gms.common.internal.j.a(this.f7606c, bVar.f7606c) && com.google.android.gms.common.internal.j.a(this.f7607d, bVar.f7607d);
    }

    public final int hashCode() {
        return this.f7604a;
    }
}
