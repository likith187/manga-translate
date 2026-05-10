package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public class o implements a.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f7901b = a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7902a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7903a;

        /* synthetic */ a(r rVar) {
        }

        public o a() {
            return new o(this.f7903a, null);
        }

        public a b(String str) {
            this.f7903a = str;
            return this;
        }
    }

    /* synthetic */ o(String str, s sVar) {
        this.f7902a = str;
    }

    public static a a() {
        return new a(null);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.f7902a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return j.a(this.f7902a, ((o) obj).f7902a);
        }
        return false;
    }

    public final int hashCode() {
        return j.b(this.f7902a);
    }
}
