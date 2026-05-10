package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class r1 implements p0, o {
    public static final r1 INSTANCE = new r1();

    private r1() {
    }

    @Override // kotlinx.coroutines.p0
    public void a() {
    }

    @Override // kotlinx.coroutines.o
    public boolean e(Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.o
    public f1 getParent() {
        return null;
    }

    public String toString() {
        return "NonDisposableHandle";
    }
}
