package o4;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f14405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u4.b f14406b;

    private j(z zVar, u4.b bVar) {
        this.f14405a = zVar;
        this.f14406b = bVar;
    }

    public static Runnable a(z zVar, u4.b bVar) {
        return new j(zVar, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14405a.d(this.f14406b);
    }
}
