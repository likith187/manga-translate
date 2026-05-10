package e3;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f11727a;

    private l(n nVar) {
        this.f11727a = nVar;
    }

    public static Runnable a(n nVar) {
        return new l(nVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVar = this.f11727a;
        nVar.f11732d.c(m.a(nVar));
    }
}
