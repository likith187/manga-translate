package x9;

/* JADX INFO: loaded from: classes2.dex */
class a implements Runnable, l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f16409a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f16410b;

    a(c cVar) {
        this.f16410b = cVar;
    }

    @Override // x9.l
    public void a(q qVar, Object obj) {
        this.f16409a.a(j.a(qVar, obj));
        this.f16410b.d().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        j jVarB = this.f16409a.b();
        if (jVarB == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f16410b.g(jVarB);
    }
}
