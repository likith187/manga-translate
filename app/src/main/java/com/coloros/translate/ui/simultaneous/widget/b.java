package com.coloros.translate.ui.simultaneous.widget;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f6852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f6853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f6854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f6855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f6858g;

    public b(long j10, long j11, float f10, float f11, int i10, int i11, int i12) {
        this.f6852a = j10;
        this.f6853b = j11;
        this.f6854c = f10;
        this.f6855d = f11;
        this.f6856e = i10;
        this.f6857f = i11;
        this.f6858g = i12;
    }

    public final long a() {
        return this.f6853b;
    }

    public final long b() {
        return this.f6852a;
    }

    public final int c() {
        return this.f6857f;
    }

    public final float d() {
        return this.f6855d;
    }

    public final int e() {
        return this.f6858g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f6852a == bVar.f6852a && this.f6853b == bVar.f6853b && Float.compare(this.f6854c, bVar.f6854c) == 0 && Float.compare(this.f6855d, bVar.f6855d) == 0 && this.f6856e == bVar.f6856e && this.f6857f == bVar.f6857f && this.f6858g == bVar.f6858g;
    }

    public final int f() {
        return this.f6856e;
    }

    public final float g() {
        return this.f6854c;
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.f6852a) * 31) + Long.hashCode(this.f6853b)) * 31) + Float.hashCode(this.f6854c)) * 31) + Float.hashCode(this.f6855d)) * 31) + Integer.hashCode(this.f6856e)) * 31) + Integer.hashCode(this.f6857f)) * 31) + Integer.hashCode(this.f6858g);
    }

    public String toString() {
        return "AnimateSpanParams(duration=" + this.f6852a + ", delay=" + this.f6853b + ", textSize=" + this.f6854c + ", offset=" + this.f6855d + ", startColor=" + this.f6856e + ", endColor=" + this.f6857f + ", stableColor=" + this.f6858g + ")";
    }
}
