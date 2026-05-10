package n1;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f13981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m1.h f13982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m1.d f13983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f13984d;

    public enum a {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public i(a aVar, m1.h hVar, m1.d dVar, boolean z10) {
        this.f13981a = aVar;
        this.f13982b = hVar;
        this.f13983c = dVar;
        this.f13984d = z10;
    }

    public a a() {
        return this.f13981a;
    }

    public m1.h b() {
        return this.f13982b;
    }

    public m1.d c() {
        return this.f13983c;
    }

    public boolean d() {
        return this.f13984d;
    }
}
