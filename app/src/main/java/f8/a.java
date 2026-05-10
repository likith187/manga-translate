package f8;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f12012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f12013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f12014d;

    public a(String name, long j10, long j11, long j12) {
        r.e(name, "name");
        this.f12011a = name;
        this.f12012b = j10;
        this.f12013c = j11;
        this.f12014d = j12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return r.a(this.f12011a, aVar.f12011a) && this.f12012b == aVar.f12012b && this.f12013c == aVar.f12013c && this.f12014d == aVar.f12014d;
    }

    public int hashCode() {
        return (((((this.f12011a.hashCode() * 31) + Long.hashCode(this.f12012b)) * 31) + Long.hashCode(this.f12013c)) * 31) + Long.hashCode(this.f12014d);
    }

    public String toString() {
        return "AnimStat(name=" + this.f12011a + ", startTime=" + this.f12012b + ", endTime=" + this.f12013c + ", duration=" + this.f12014d + ")";
    }
}
