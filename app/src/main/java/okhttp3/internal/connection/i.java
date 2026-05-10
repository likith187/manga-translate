package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends RuntimeException {
    private final IOException firstConnectException;
    private IOException lastConnectException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(IOException firstConnectException) {
        super(firstConnectException);
        r.e(firstConnectException, "firstConnectException");
        this.firstConnectException = firstConnectException;
        this.lastConnectException = firstConnectException;
    }

    public final void addConnectException(IOException e10) {
        r.e(e10, "e");
        n8.e.a(this.firstConnectException, e10);
        this.lastConnectException = e10;
    }

    public final IOException getFirstConnectException() {
        return this.firstConnectException;
    }

    public final IOException getLastConnectException() {
        return this.lastConnectException;
    }
}
