package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends RuntimeException {
    private final transient kotlin.coroutines.g context;

    public i(kotlin.coroutines.g gVar) {
        this.context = gVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.context.toString();
    }
}
