package f8;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f12037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f12038d;

    public d(String name, int i10, String mediaType, int i11) {
        r.e(name, "name");
        r.e(mediaType, "mediaType");
        this.f12035a = name;
        this.f12036b = i10;
        this.f12037c = mediaType;
        this.f12038d = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return r.a(this.f12035a, dVar.f12035a) && this.f12036b == dVar.f12036b && r.a(this.f12037c, dVar.f12037c) && this.f12038d == dVar.f12038d;
    }

    public int hashCode() {
        return (((((this.f12035a.hashCode() * 31) + Integer.hashCode(this.f12036b)) * 31) + this.f12037c.hashCode()) * 31) + Integer.hashCode(this.f12038d);
    }

    public String toString() {
        return "ImgStat(name=" + this.f12035a + ", fileSize=" + this.f12036b + ", mediaType=" + this.f12037c + ", loadTime=" + this.f12038d + ")";
    }
}
