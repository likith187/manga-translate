package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.g0;
import kotlinx.coroutines.internal.j0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i f13193a = new i(-1, null, null, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f13194b = j0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f13195c = j0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g0 f13196d = new g0("BUFFERED");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final g0 f13197e = new g0("SHOULD_BUFFER");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final g0 f13198f = new g0("S_RESUMING_BY_RCV");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final g0 f13199g = new g0("RESUMING_BY_EB");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final g0 f13200h = new g0("POISONED");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final g0 f13201i = new g0("DONE_RCV");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final g0 f13202j = new g0("INTERRUPTED_SEND");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final g0 f13203k = new g0("INTERRUPTED_RCV");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final g0 f13204l = new g0("CHANNEL_CLOSED");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final g0 f13205m = new g0("SUSPEND");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final g0 f13206n = new g0("SUSPEND_NO_WAITER");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final g0 f13207o = new g0("FAILED");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final g0 f13208p = new g0("NO_RECEIVE_RESULT");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final g0 f13209q = new g0("CLOSE_HANDLER_CLOSED");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final g0 f13210r = new g0("CLOSE_HANDLER_INVOKED");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final g0 f13211s = new g0("NO_CLOSE_CAUSE");

    /* synthetic */ class a extends kotlin.jvm.internal.o implements p {
        public static final a INSTANCE = new a();

        a() {
            super(2, c.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).longValue(), (i) obj2);
        }

        public final i invoke(long j10, i iVar) {
            return c.v(j10, iVar);
        }
    }

    static /* synthetic */ boolean A(kotlinx.coroutines.i iVar, Object obj, w8.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        return z(iVar, obj, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long t(long j10, boolean z10) {
        return (z10 ? 4611686018427387904L : 0L) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long u(long j10, int i10) {
        return (((long) i10) << 60) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i v(long j10, i iVar) {
        return new i(j10, iVar, iVar.y(), 0);
    }

    public static final c9.g w() {
        return a.INSTANCE;
    }

    public static final g0 x() {
        return f13204l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long y(int i10) {
        if (i10 == 0) {
            return 0L;
        }
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean z(kotlinx.coroutines.i iVar, Object obj, w8.l lVar) {
        Object objD = iVar.d(obj, null, lVar);
        if (objD == null) {
            return false;
        }
        iVar.g(objD);
        return true;
    }
}
