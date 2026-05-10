package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: loaded from: classes2.dex */
public interface JsonDecoder extends Decoder, CompositeDecoder {

    public static final class DefaultImpls {
        public static int decodeCollectionSize(JsonDecoder jsonDecoder, SerialDescriptor descriptor) {
            r.e(descriptor, "descriptor");
            return CompositeDecoder.DefaultImpls.decodeCollectionSize(jsonDecoder, descriptor);
        }

        @ExperimentalSerializationApi
        public static <T> T decodeNullableSerializableValue(JsonDecoder jsonDecoder, DeserializationStrategy<? extends T> deserializer) {
            r.e(deserializer, "deserializer");
            return (T) Decoder.DefaultImpls.decodeNullableSerializableValue(jsonDecoder, deserializer);
        }

        @ExperimentalSerializationApi
        public static boolean decodeSequentially(JsonDecoder jsonDecoder) {
            return CompositeDecoder.DefaultImpls.decodeSequentially(jsonDecoder);
        }

        public static <T> T decodeSerializableValue(JsonDecoder jsonDecoder, DeserializationStrategy<? extends T> deserializer) {
            r.e(deserializer, "deserializer");
            return (T) Decoder.DefaultImpls.decodeSerializableValue(jsonDecoder, deserializer);
        }
    }

    JsonElement decodeJsonElement();

    Json getJson();
}
