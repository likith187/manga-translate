package com.oplus.anim;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f11133b;

    public r(Object obj) {
        this.f11132a = obj;
        this.f11133b = null;
    }

    public Throwable a() {
        return this.f11133b;
    }

    public Object b() {
        return this.f11132a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (b() != null && b().equals(rVar.b())) {
            return true;
        }
        if (a() == null || rVar.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public r(Throwable th) {
        this.f11133b = th;
        this.f11132a = null;
    }
}
