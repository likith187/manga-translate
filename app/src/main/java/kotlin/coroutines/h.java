package kotlin.coroutines;

import java.io.Serializable;
import kotlin.coroutines.g;
import kotlin.jvm.internal.r;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements g, Serializable {
    public static final h INSTANCE = new h();
    private static final long serialVersionUID = 0;

    private h() {
    }

    private final Object readResolve() {
        return INSTANCE;
    }

    @Override // kotlin.coroutines.g
    public <R> R fold(R r10, p operation) {
        r.e(operation, "operation");
        return r10;
    }

    @Override // kotlin.coroutines.g
    public <E extends g.b> E get(g.c key) {
        r.e(key, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // kotlin.coroutines.g
    public g minusKey(g.c key) {
        r.e(key, "key");
        return this;
    }

    @Override // kotlin.coroutines.g
    public g plus(g context) {
        r.e(context, "context");
        return context;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
