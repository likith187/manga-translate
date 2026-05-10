package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f8082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f8083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f8084c;

    f(Object obj, Object obj2, Object obj3) {
        this.f8082a = obj;
        this.f8083b = obj2;
        this.f8084c = obj3;
    }

    final IllegalArgumentException a() {
        Object obj = this.f8084c;
        Object obj2 = this.f8083b;
        Object obj3 = this.f8082a;
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(obj3) + "=" + String.valueOf(obj2) + " and " + String.valueOf(obj3) + "=" + String.valueOf(obj));
    }
}
