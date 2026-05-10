package b9;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
abstract class e {
    public static final void a(boolean z10, Number step) {
        r.e(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }
}
