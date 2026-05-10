package m0;

import kotlinx.coroutines.o0;
import kotlinx.coroutines.x1;
import n8.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final b a() {
        kotlin.coroutines.g gVarF0;
        try {
            gVarF0 = o0.c().F0();
        } catch (IllegalStateException unused) {
            gVarF0 = kotlin.coroutines.h.INSTANCE;
        } catch (p unused2) {
            gVarF0 = kotlin.coroutines.h.INSTANCE;
        }
        return new b(gVarF0.plus(x1.b(null, 1, null)));
    }
}
