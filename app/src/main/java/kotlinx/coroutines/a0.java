package kotlinx.coroutines;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 {
    public static final void a(kotlin.coroutines.g gVar, Throwable th) {
        try {
            z zVar = (z) gVar.get(z.f13394e);
            if (zVar != null) {
                zVar.b0(gVar, th);
            } else {
                kotlinx.coroutines.internal.h.a(gVar, th);
            }
        } catch (Throwable th2) {
            kotlinx.coroutines.internal.h.a(gVar, b(th, th2));
        }
    }

    public static final Throwable b(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        n8.e.a(runtimeException, th);
        return runtimeException;
    }
}
