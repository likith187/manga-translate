package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.p1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w {
    private static final x a(Throwable th, String str) throws Throwable {
        if (th != null) {
            throw th;
        }
        d();
        throw new n8.i();
    }

    static /* synthetic */ x b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(p1 p1Var) {
        return p1Var.F0() instanceof x;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final p1 e(u uVar, List list) {
        try {
            return uVar.b(list);
        } catch (Throwable th) {
            return a(th, uVar.a());
        }
    }
}
