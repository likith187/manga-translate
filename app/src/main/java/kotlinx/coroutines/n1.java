package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13334a = new kotlinx.coroutines.internal.g0("COMPLETING_ALREADY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.g0 f13335b = new kotlinx.coroutines.internal.g0("COMPLETING_WAITING_CHILDREN");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13336c = new kotlinx.coroutines.internal.g0("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13337d = new kotlinx.coroutines.internal.g0("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.g0 f13338e = new kotlinx.coroutines.internal.g0("SEALED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final r0 f13339f = new r0(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final r0 f13340g = new r0(true);

    public static final Object g(Object obj) {
        return obj instanceof a1 ? new b1((a1) obj) : obj;
    }

    public static final Object h(Object obj) {
        a1 a1Var;
        b1 b1Var = obj instanceof b1 ? (b1) obj : null;
        return (b1Var == null || (a1Var = b1Var.f13175a) == null) ? obj : a1Var;
    }
}
