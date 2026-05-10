package n8;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s {
    public static final Object a(Throwable exception) {
        kotlin.jvm.internal.r.e(exception, "exception");
        return new r.b(exception);
    }

    public static final void b(Object obj) {
        if (obj instanceof r.b) {
            throw ((r.b) obj).exception;
        }
    }
}
