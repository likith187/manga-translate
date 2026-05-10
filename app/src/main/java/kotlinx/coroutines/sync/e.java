package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.g0;
import kotlinx.coroutines.internal.j0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f13370a = j0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g0 f13371b = new g0("PERMIT");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final g0 f13372c = new g0("TAKEN");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final g0 f13373d = new g0("BROKEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final g0 f13374e = new g0("CANCELLED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f13375f = j0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final f h(long j10, f fVar) {
        return new f(j10, fVar, 0);
    }
}
