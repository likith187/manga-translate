package kotlinx.serialization.json;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlin.text.e0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonExceptionsKt;
import n8.b0;

/* JADX INFO: loaded from: classes2.dex */
final class JsonLiteralSerializer implements KSerializer<JsonLiteral> {
    public static final JsonLiteralSerializer INSTANCE = new JsonLiteralSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor("kotlinx.serialization.json.JsonLiteral", PrimitiveKind.STRING.INSTANCE);

    private JsonLiteralSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public JsonLiteral deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        JsonElement jsonElementDecodeJsonElement = JsonElementSerializersKt.asJsonDecoder(decoder).decodeJsonElement();
        if (jsonElementDecodeJsonElement instanceof JsonLiteral) {
            return (JsonLiteral) jsonElementDecodeJsonElement;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Unexpected JSON element, expected JsonLiteral, had " + d0.b(jsonElementDecodeJsonElement.getClass()), jsonElementDecodeJsonElement.toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, JsonLiteral value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        JsonElementSerializersKt.verify(encoder);
        if (value.isString()) {
            encoder.encodeString(value.getContent());
            return;
        }
        if (value.getCoerceToInlineType$kotlinx_serialization_json() != null) {
            encoder.encodeInline(value.getCoerceToInlineType$kotlinx_serialization_json()).encodeString(value.getContent());
            return;
        }
        Long lO = kotlin.text.r.o(value.getContent());
        if (lO != null) {
            encoder.encodeLong(lO.longValue());
            return;
        }
        b0 b0VarH = e0.h(value.getContent());
        if (b0VarH != null) {
            encoder.encodeInline(BuiltinSerializersKt.serializer(b0.f14087b).getDescriptor()).encodeLong(b0VarH.f());
            return;
        }
        Double dJ = kotlin.text.r.j(value.getContent());
        if (dJ != null) {
            encoder.encodeDouble(dJ.doubleValue());
            return;
        }
        Boolean boolM0 = kotlin.text.r.M0(value.getContent());
        if (boolM0 != null) {
            encoder.encodeBoolean(boolM0.booleanValue());
        } else {
            encoder.encodeString(value.getContent());
        }
    }
}
