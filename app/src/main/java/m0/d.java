package m0;

import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class d implements u0.c {
    public static final d INSTANCE = new d();

    private d() {
    }

    @Override // androidx.lifecycle.u0.c
    public s0 b(c9.c modelClass, l0.a extras) {
        r.e(modelClass, "modelClass");
        r.e(extras, "extras");
        return e.INSTANCE.a(v8.a.a(modelClass));
    }
}
