package m0;

import androidx.lifecycle.j;
import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import androidx.lifecycle.x0;
import kotlin.jvm.internal.r;
import l0.a;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static final h INSTANCE = new h();

    private h() {
    }

    public final l0.a a(x0 owner) {
        r.e(owner, "owner");
        return owner instanceof j ? ((j) owner).getDefaultViewModelCreationExtras() : a.b.INSTANCE;
    }

    public final u0.c b(x0 owner) {
        r.e(owner, "owner");
        return owner instanceof j ? ((j) owner).getDefaultViewModelProviderFactory() : d.INSTANCE;
    }

    public final String c(c9.c modelClass) {
        r.e(modelClass, "modelClass");
        String strA = a.a(modelClass);
        if (strA == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return "androidx.lifecycle.ViewModelProvider.DefaultKey:" + strA;
    }

    public final s0 d() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }
}
