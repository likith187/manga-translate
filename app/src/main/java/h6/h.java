package h6;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f12278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g6.h f12279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g6.d f12280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f12281d;

    public enum a {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public h(a aVar, g6.h hVar, g6.d dVar, boolean z10) {
        this.f12278a = aVar;
        this.f12279b = hVar;
        this.f12280c = dVar;
        this.f12281d = z10;
    }

    public a a() {
        return this.f12278a;
    }

    public g6.h b() {
        return this.f12279b;
    }

    public g6.d c() {
        return this.f12280c;
    }

    public boolean d() {
        return this.f12281d;
    }
}
