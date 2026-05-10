package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class CharArrayPoolBatchSize extends CharArrayPoolBase {
    public static final CharArrayPoolBatchSize INSTANCE = new CharArrayPoolBatchSize();

    private CharArrayPoolBatchSize() {
    }

    public final void release(char[] array) {
        r.e(array, "array");
        if (array.length == 16384) {
            releaseImpl(array);
            return;
        }
        throw new IllegalArgumentException(("Inconsistent internal invariant: unexpected array size " + array.length).toString());
    }

    public final char[] take() {
        return super.take(ReaderJsonLexerKt.BATCH_SIZE);
    }
}
