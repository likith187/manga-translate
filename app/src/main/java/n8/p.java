package n8;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends Error {
    public p() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(String message) {
        super(message);
        kotlin.jvm.internal.r.e(message, "message");
    }

    public /* synthetic */ p(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "An operation is not implemented." : str);
    }
}
