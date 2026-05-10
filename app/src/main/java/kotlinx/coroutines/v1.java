package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
class v1 extends a {
    public v1(kotlin.coroutines.g gVar, boolean z10) {
        super(gVar, true, z10);
    }

    @Override // kotlinx.coroutines.m1
    protected boolean L(Throwable th) {
        a0.a(getContext(), th);
        return true;
    }
}
