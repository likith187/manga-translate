package com.coloros.translate.ui.simultaneous.history;

import com.coloros.translate.repository.local.SimultaneousHistory;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SimultaneousHistory f6575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6577c;

    public n0(SimultaneousHistory history, String dateTime, String audioTime) {
        kotlin.jvm.internal.r.e(history, "history");
        kotlin.jvm.internal.r.e(dateTime, "dateTime");
        kotlin.jvm.internal.r.e(audioTime, "audioTime");
        this.f6575a = history;
        this.f6576b = dateTime;
        this.f6577c = audioTime;
    }

    public final String a() {
        return this.f6577c;
    }

    public final String b() {
        return this.f6576b;
    }

    public final SimultaneousHistory c() {
        return this.f6575a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n0)) {
            return false;
        }
        n0 n0Var = (n0) obj;
        return kotlin.jvm.internal.r.a(this.f6575a, n0Var.f6575a) && kotlin.jvm.internal.r.a(this.f6576b, n0Var.f6576b) && kotlin.jvm.internal.r.a(this.f6577c, n0Var.f6577c);
    }

    public int hashCode() {
        return (((this.f6575a.hashCode() * 31) + this.f6576b.hashCode()) * 31) + this.f6577c.hashCode();
    }

    public String toString() {
        return "SimultaneousHistoryInfo(history=" + this.f6575a + ", dateTime=" + this.f6576b + ", audioTime=" + this.f6577c + ")";
    }
}
