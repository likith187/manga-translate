package e8;

import android.animation.TimeInterpolator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f11814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f11815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f11816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f11817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f11818f;

    public f(String name, Object obj, TimeInterpolator interpolator, long j10, long j11, String ipol) {
        r.e(name, "name");
        r.e(interpolator, "interpolator");
        r.e(ipol, "ipol");
        this.f11813a = name;
        this.f11814b = obj;
        this.f11815c = interpolator;
        this.f11816d = j10;
        this.f11817e = j11;
        this.f11818f = ipol;
    }

    public final Object a() {
        return this.f11814b;
    }

    public final TimeInterpolator b() {
        return this.f11815c;
    }

    public final String c() {
        return this.f11813a;
    }

    public final void d(TimeInterpolator timeInterpolator) {
        r.e(timeInterpolator, "<set-?>");
        this.f11815c = timeInterpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return r.a(this.f11813a, fVar.f11813a) && r.a(this.f11814b, fVar.f11814b) && r.a(this.f11815c, fVar.f11815c) && this.f11816d == fVar.f11816d && this.f11817e == fVar.f11817e && r.a(this.f11818f, fVar.f11818f);
    }

    public int hashCode() {
        int iHashCode = this.f11813a.hashCode() * 31;
        Object obj = this.f11814b;
        return ((((((((iHashCode + (obj == null ? 0 : obj.hashCode())) * 31) + this.f11815c.hashCode()) * 31) + Long.hashCode(this.f11816d)) * 31) + Long.hashCode(this.f11817e)) * 31) + this.f11818f.hashCode();
    }

    public String toString() {
        return "Param(name=" + this.f11813a + ", defaultValue=" + this.f11814b + ", interpolator=" + this.f11815c + ", duration=" + this.f11816d + ", delay=" + this.f11817e + ", ipol=" + this.f11818f + ")";
    }

    public /* synthetic */ f(String str, Object obj, TimeInterpolator timeInterpolator, long j10, long j11, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, obj, timeInterpolator, (i10 & 8) != 0 ? 0L : j10, (i10 & 16) != 0 ? 0L : j11, (i10 & 32) != 0 ? "bezier" : str2);
    }
}
