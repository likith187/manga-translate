package com.ai.slp.library.mt;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f4511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4512b;

    public g(f request, String result) {
        r.e(request, "request");
        r.e(result, "result");
        this.f4511a = request;
        this.f4512b = result;
    }

    public final String a() {
        return this.f4512b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return r.a(this.f4511a, gVar.f4511a) && r.a(this.f4512b, gVar.f4512b);
    }

    public int hashCode() {
        f fVar = this.f4511a;
        int iHashCode = (fVar != null ? fVar.hashCode() : 0) * 31;
        String str = this.f4512b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TranslateResult(request=" + this.f4511a + ", result=" + this.f4512b + ")";
    }
}
