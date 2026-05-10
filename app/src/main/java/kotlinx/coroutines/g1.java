package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class g1 extends CancellationException {
    public final transient f1 job;

    public g1(String str, Throwable th, f1 f1Var) {
        super(str);
        this.job = f1Var;
        if (th != null) {
            initCause(th);
        }
    }

    public g1 createCopy() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof g1) {
                g1 g1Var = (g1) obj;
                if (!kotlin.jvm.internal.r.a(g1Var.getMessage(), getMessage()) || !kotlin.jvm.internal.r.a(g1Var.job, this.job) || !kotlin.jvm.internal.r.a(g1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        kotlin.jvm.internal.r.b(message);
        int iHashCode = ((message.hashCode() * 31) + this.job.hashCode()) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.job;
    }
}
