package o4;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f14407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u4.b f14408b;

    private k(v vVar, u4.b bVar) {
        this.f14407a = vVar;
        this.f14408b = bVar;
    }

    public static Runnable a(v vVar, u4.b bVar) {
        return new k(vVar, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14407a.a(this.f14408b);
    }
}
