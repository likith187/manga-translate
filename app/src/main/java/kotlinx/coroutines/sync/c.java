package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.g0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g0 f13361a = new g0("NO_OWNER");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g0 f13362b = new g0("ALREADY_LOCKED_BY_OWNER");

    public static final a a(boolean z10) {
        return new b(z10);
    }

    public static /* synthetic */ a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
