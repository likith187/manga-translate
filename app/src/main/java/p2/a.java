package p2;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f15171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f15172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f15173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f15174f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f15175g;

    public a(int i10, int i11, float f10, float f11, int i12, int i13, int i14) {
        this.f15169a = i10;
        this.f15170b = i11;
        this.f15171c = f10;
        this.f15172d = f11;
        this.f15173e = i12;
        this.f15174f = i13;
        this.f15175g = i14;
    }

    public final int a() {
        return this.f15170b;
    }

    public final int b() {
        return this.f15169a;
    }

    public final int c() {
        return this.f15174f;
    }

    public final float d() {
        return this.f15172d;
    }

    public final int e() {
        return this.f15175g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f15169a == aVar.f15169a && this.f15170b == aVar.f15170b && Float.compare(this.f15171c, aVar.f15171c) == 0 && Float.compare(this.f15172d, aVar.f15172d) == 0 && this.f15173e == aVar.f15173e && this.f15174f == aVar.f15174f && this.f15175g == aVar.f15175g;
    }

    public final int f() {
        return this.f15173e;
    }

    public final float g() {
        return this.f15171c;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.f15169a) * 31) + Integer.hashCode(this.f15170b)) * 31) + Float.hashCode(this.f15171c)) * 31) + Float.hashCode(this.f15172d)) * 31) + Integer.hashCode(this.f15173e)) * 31) + Integer.hashCode(this.f15174f)) * 31) + Integer.hashCode(this.f15175g);
    }

    public String toString() {
        return "AnimateSpanParams(duration=" + this.f15169a + ", delay=" + this.f15170b + ", textSize=" + this.f15171c + ", offset=" + this.f15172d + ", startColor=" + this.f15173e + ", endColor=" + this.f15174f + ", stableColor=" + this.f15175g + ")";
    }
}
