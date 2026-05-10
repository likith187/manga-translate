package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import n8.i;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class StreamingJsonDecoderKt {
    @JsonFriendModuleApi
    public static final <T> JsonElement decodeStringToJsonTree(Json json, DeserializationStrategy<? extends T> deserializer, String source) {
        r.e(json, "json");
        r.e(deserializer, "deserializer");
        r.e(source, "source");
        StringJsonLexer StringJsonLexer = StringJsonLexerKt.StringJsonLexer(json, source);
        JsonElement jsonElementDecodeJsonElement = new StreamingJsonDecoder(json, WriteMode.OBJ, StringJsonLexer, deserializer.getDescriptor(), null).decodeJsonElement();
        StringJsonLexer.expectEof();
        return jsonElementDecodeJsonElement;
    }

    private static final <T> T parseString(AbstractJsonLexer abstractJsonLexer, String str, l lVar) {
        String strConsumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            return (T) lVar.invoke(strConsumeStringLenient);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse type '" + str + "' for input '" + strConsumeStringLenient + '\'', 0, null, 6, null);
            throw new i();
        }
    }
}
