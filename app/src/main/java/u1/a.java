package u1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String message) {
        super(message);
        r.e(message, "message");
    }
}
