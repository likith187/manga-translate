package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonTransformingSerializer<T> implements KSerializer<T> {
    private final KSerializer<T> tSerializer;

    public JsonTransformingSerializer(KSerializer<T> tSerializer) {
        r.e(tSerializer, "tSerializer");
        this.tSerializer = tSerializer;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final T deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        JsonDecoder jsonDecoderAsJsonDecoder = JsonElementSerializersKt.asJsonDecoder(decoder);
        return (T) jsonDecoderAsJsonDecoder.getJson().decodeFromJsonElement(this.tSerializer, transformDeserialize(jsonDecoderAsJsonDecoder.decodeJsonElement()));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.tSerializer.getDescriptor();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        JsonEncoder jsonEncoderAsJsonEncoder = JsonElementSerializersKt.asJsonEncoder(encoder);
        jsonEncoderAsJsonEncoder.encodeJsonElement(transformSerialize(TreeJsonEncoderKt.writeJson(jsonEncoderAsJsonEncoder.getJson(), value, this.tSerializer)));
    }

    protected JsonElement transformDeserialize(JsonElement element) {
        r.e(element, "element");
        return element;
    }

    protected JsonElement transformSerialize(JsonElement element) {
        r.e(element, "element");
        return element;
    }
}
