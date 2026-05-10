package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a */
    private final Feature[] f7655a;

    /* JADX INFO: renamed from: b */
    private final boolean f7656b;

    /* JADX INFO: renamed from: c */
    private final int f7657c;

    public static class a {

        /* JADX INFO: renamed from: a */
        private k f7658a;

        /* JADX INFO: renamed from: c */
        private Feature[] f7660c;

        /* JADX INFO: renamed from: b */
        private boolean f7659b = true;

        /* JADX INFO: renamed from: d */
        private int f7661d = 0;

        /* synthetic */ a(o0 o0Var) {
        }

        public m a() {
            com.google.android.gms.common.internal.k.b(this.f7658a != null, "execute parameter required");
            return new n0(this, this.f7660c, this.f7659b, this.f7661d);
        }

        public a b(k kVar) {
            this.f7658a = kVar;
            return this;
        }

        public a c(boolean z10) {
            this.f7659b = z10;
            return this;
        }

        public a d(Feature... featureArr) {
            this.f7660c = featureArr;
            return this;
        }
    }

    protected m(Feature[] featureArr, boolean z10, int i10) {
        this.f7655a = featureArr;
        boolean z11 = false;
        if (featureArr != null && z10) {
            z11 = true;
        }
        this.f7656b = z11;
        this.f7657c = i10;
    }

    public static a a() {
        return new a(null);
    }

    protected abstract void b(a.b bVar, w3.j jVar);

    public boolean c() {
        return this.f7656b;
    }

    public final int d() {
        return this.f7657c;
    }

    public final Feature[] e() {
        return this.f7655a;
    }
}
