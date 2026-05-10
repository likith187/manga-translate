package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e0 {
    public static Object a(Object obj) {
        return obj;
    }

    public static final d0 b(Object obj) {
        if (obj == c.f13256a) {
            throw new IllegalStateException("Does not contain segment");
        }
        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (d0) obj;
    }

    public static final boolean c(Object obj) {
        return obj == c.f13256a;
    }
}
