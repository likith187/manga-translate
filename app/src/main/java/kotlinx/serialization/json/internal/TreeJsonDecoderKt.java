package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import n8.o;

/* JADX INFO: loaded from: classes2.dex */
public final class TreeJsonDecoderKt {
    @JsonFriendModuleApi
    public static final <T> T readJson(Json json, JsonElement element, DeserializationStrategy<? extends T> deserializer) {
        Decoder jsonPrimitiveDecoder;
        r.e(json, "json");
        r.e(element, "element");
        r.e(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            jsonPrimitiveDecoder = new JsonTreeDecoder(json, (JsonObject) element, null, null, 12, null);
        } else if (element instanceof JsonArray) {
            jsonPrimitiveDecoder = new JsonTreeListDecoder(json, (JsonArray) element);
        } else {
            if (!(element instanceof JsonLiteral) && !r.a(element, JsonNull.INSTANCE)) {
                throw new o();
            }
            jsonPrimitiveDecoder = new JsonPrimitiveDecoder(json, (JsonPrimitive) element, null, 4, null);
        }
        return (T) jsonPrimitiveDecoder.decodeSerializableValue(deserializer);
    }

    public static final <T> T readPolymorphicJson(Json json, String discriminator, JsonObject element, DeserializationStrategy<? extends T> deserializer) {
        r.e(json, "<this>");
        r.e(discriminator, "discriminator");
        r.e(element, "element");
        r.e(deserializer, "deserializer");
        return (T) new JsonTreeDecoder(json, element, discriminator, deserializer.getDescriptor()).decodeSerializableValue(deserializer);
    }
}
