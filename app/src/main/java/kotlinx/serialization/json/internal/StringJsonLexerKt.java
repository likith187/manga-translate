package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
public final class StringJsonLexerKt {
    public static final StringJsonLexer StringJsonLexer(Json json, String source) {
        r.e(json, "json");
        r.e(source, "source");
        return !json.getConfiguration().getAllowComments() ? new StringJsonLexer(source) : new StringJsonLexerWithComments(source);
    }
}
