package w3;

/* JADX INFO: loaded from: classes.dex */
public final class c extends IllegalStateException {
    private c(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException of(i iVar) {
        if (!iVar.h()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception excE = iVar.e();
        return new c("Complete with: ".concat(excE != null ? "failure" : iVar.i() ? "result ".concat(String.valueOf(iVar.f())) : iVar.g() ? "cancellation" : "unknown issue"), excE);
    }
}
