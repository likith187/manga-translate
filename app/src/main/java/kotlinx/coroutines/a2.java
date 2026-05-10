package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class a2 extends CancellationException {
    public final transient f1 coroutine;

    public a2(String str, f1 f1Var) {
        super(str);
        this.coroutine = f1Var;
    }

    public a2 createCopy() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        a2 a2Var = new a2(message, this.coroutine);
        a2Var.initCause(this);
        return a2Var;
    }

    public a2(String str) {
        this(str, null);
    }
}
