package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
@Serializable(with = JsonNullSerializer.class)
public final class JsonNull extends JsonPrimitive {
    public static final JsonNull INSTANCE = new JsonNull();
    private static final String content = AbstractJsonLexerKt.NULL;

    private JsonNull() {
        super(null);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String getContent() {
        return content;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public boolean isString() {
        return false;
    }

    public final KSerializer<JsonNull> serializer() {
        return JsonNullSerializer.INSTANCE;
    }
}
