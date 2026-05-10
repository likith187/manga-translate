package com.airbnb.lottie;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f4647b;

    public n0(Object obj) {
        this.f4646a = obj;
        this.f4647b = null;
    }

    public Throwable a() {
        return this.f4647b;
    }

    public Object b() {
        return this.f4646a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n0)) {
            return false;
        }
        n0 n0Var = (n0) obj;
        if (b() != null && b().equals(n0Var.b())) {
            return true;
        }
        if (a() == null || n0Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public n0(Throwable th) {
        this.f4647b = th;
        this.f4646a = null;
    }
}
