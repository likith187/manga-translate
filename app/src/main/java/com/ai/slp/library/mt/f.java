package com.ai.slp.library.mt;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f4509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f4510c;

    public f(String query, a from, a to) {
        r.e(query, "query");
        r.e(from, "from");
        r.e(to, "to");
        this.f4508a = query;
        this.f4509b = from;
        this.f4510c = to;
    }

    public final a a() {
        return this.f4509b;
    }

    public final String b() {
        return this.f4508a;
    }

    public final a c() {
        return this.f4510c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return r.a(this.f4508a, fVar.f4508a) && r.a(this.f4509b, fVar.f4509b) && r.a(this.f4510c, fVar.f4510c);
    }

    public int hashCode() {
        String str = this.f4508a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        a aVar = this.f4509b;
        int iHashCode2 = (iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        a aVar2 = this.f4510c;
        return iHashCode2 + (aVar2 != null ? aVar2.hashCode() : 0);
    }

    public String toString() {
        return "TranslateRequest(query=" + this.f4508a + ", from=" + this.f4509b + ", to=" + this.f4510c + ")";
    }
}
