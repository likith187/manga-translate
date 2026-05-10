package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13390a = new kotlinx.coroutines.internal.g0("REMOVED_TASK");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13391b = new kotlinx.coroutines.internal.g0("CLOSED_EMPTY");

    public static final long c(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j10;
    }
}
