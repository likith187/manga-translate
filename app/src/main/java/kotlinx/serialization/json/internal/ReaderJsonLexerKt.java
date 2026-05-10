package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
public final class ReaderJsonLexerKt {
    public static final int BATCH_SIZE = 16384;
    private static final int DEFAULT_THRESHOLD = 128;

    public static final ReaderJsonLexer ReaderJsonLexer(Json json, InternalJsonReader reader, char[] buffer) {
        r.e(json, "json");
        r.e(reader, "reader");
        r.e(buffer, "buffer");
        return !json.getConfiguration().getAllowComments() ? new ReaderJsonLexer(reader, buffer) : new ReaderJsonLexerWithComments(reader, buffer);
    }

    public static /* synthetic */ ReaderJsonLexer ReaderJsonLexer$default(Json json, InternalJsonReader internalJsonReader, char[] cArr, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            cArr = CharArrayPoolBatchSize.INSTANCE.take();
        }
        return ReaderJsonLexer(json, internalJsonReader, cArr);
    }
}
