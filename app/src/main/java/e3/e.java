package e3;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f11698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.m f11699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f11700c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f11701f;

    private e(j jVar, y2.m mVar, int i10, Runnable runnable) {
        this.f11698a = jVar;
        this.f11699b = mVar;
        this.f11700c = i10;
        this.f11701f = runnable;
    }

    public static Runnable a(j jVar, y2.m mVar, int i10, Runnable runnable) {
        return new e(jVar, mVar, i10, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        j.e(this.f11698a, this.f11699b, this.f11700c, this.f11701f);
    }
}
