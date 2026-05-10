package com.coloros.translate.ui.simultaneous.history;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f6548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f6550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f6554g;

    public k0(long j10, String startTimeStr, long j11, long j12, String fromText, String toText, boolean z10) {
        kotlin.jvm.internal.r.e(startTimeStr, "startTimeStr");
        kotlin.jvm.internal.r.e(fromText, "fromText");
        kotlin.jvm.internal.r.e(toText, "toText");
        this.f6548a = j10;
        this.f6549b = startTimeStr;
        this.f6550c = j11;
        this.f6551d = j12;
        this.f6552e = fromText;
        this.f6553f = toText;
        this.f6554g = z10;
    }

    public final k0 a(long j10, String startTimeStr, long j11, long j12, String fromText, String toText, boolean z10) {
        kotlin.jvm.internal.r.e(startTimeStr, "startTimeStr");
        kotlin.jvm.internal.r.e(fromText, "fromText");
        kotlin.jvm.internal.r.e(toText, "toText");
        return new k0(j10, startTimeStr, j11, j12, fromText, toText, z10);
    }

    public final String c() {
        return this.f6552e;
    }

    public final long d() {
        return this.f6548a;
    }

    public final long e() {
        return this.f6550c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return this.f6548a == k0Var.f6548a && kotlin.jvm.internal.r.a(this.f6549b, k0Var.f6549b) && this.f6550c == k0Var.f6550c && this.f6551d == k0Var.f6551d && kotlin.jvm.internal.r.a(this.f6552e, k0Var.f6552e) && kotlin.jvm.internal.r.a(this.f6553f, k0Var.f6553f) && this.f6554g == k0Var.f6554g;
    }

    public final String f() {
        return this.f6549b;
    }

    public final String g() {
        return this.f6553f;
    }

    public final boolean h() {
        return this.f6554g;
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.f6548a) * 31) + this.f6549b.hashCode()) * 31) + Long.hashCode(this.f6550c)) * 31) + Long.hashCode(this.f6551d)) * 31) + this.f6552e.hashCode()) * 31) + this.f6553f.hashCode()) * 31) + Boolean.hashCode(this.f6554g);
    }

    public final boolean i(long j10) {
        return j10 < this.f6551d && this.f6550c <= j10;
    }

    public final void j(long j10) {
        this.f6551d = j10;
    }

    public String toString() {
        return "SimultaneousHistoryDetailsInfo(id=" + this.f6548a + ", startTimeStr=" + this.f6549b + ", startTime=" + this.f6550c + ", endTime=" + this.f6551d + ", fromText=" + this.f6552e + ", toText=" + this.f6553f + ", isPlaying=" + this.f6554g + ")";
    }
}
