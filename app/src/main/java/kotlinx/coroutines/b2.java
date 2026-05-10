package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public final class b2 extends y {
    public static final b2 INSTANCE = new b2();

    private b2() {
    }

    @Override // kotlinx.coroutines.y
    public boolean D0(kotlin.coroutines.g gVar) {
        return false;
    }

    @Override // kotlinx.coroutines.y
    public String toString() {
        return "Dispatchers.Unconfined";
    }

    @Override // kotlinx.coroutines.y
    public void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        androidx.appcompat.app.t.a(gVar.get(f2.f13230b));
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }
}
