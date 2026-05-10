package g9;

import kotlinx.coroutines.internal.o;
import kotlinx.coroutines.y;

/* JADX INFO: loaded from: classes2.dex */
final class m extends y {
    public static final m INSTANCE = new m();

    private m() {
    }

    @Override // kotlinx.coroutines.y
    public y E0(int i10) {
        o.a(i10);
        return i10 >= l.f12155d ? this : super.E0(i10);
    }

    @Override // kotlinx.coroutines.y
    public void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        c.INSTANCE.G0(runnable, l.f12159h, false);
    }
}
