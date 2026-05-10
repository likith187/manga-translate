package o9;

import java.io.IOException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends IOException {
    public final b errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(b errorCode) {
        super("stream was reset: " + errorCode);
        r.e(errorCode, "errorCode");
        this.errorCode = errorCode;
    }
}
