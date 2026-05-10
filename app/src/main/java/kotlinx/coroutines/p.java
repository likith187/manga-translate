package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends h1 implements o {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final q f13345h;

    public p(q qVar) {
        this.f13345h = qVar;
    }

    @Override // kotlinx.coroutines.c1
    public void b(Throwable th) {
        this.f13345h.a0(v());
    }

    @Override // kotlinx.coroutines.o
    public boolean e(Throwable th) {
        return v().s(th);
    }

    @Override // kotlinx.coroutines.o
    public f1 getParent() {
        return v();
    }
}
