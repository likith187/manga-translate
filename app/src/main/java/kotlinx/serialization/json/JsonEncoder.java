package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public interface JsonEncoder extends Encoder, CompositeEncoder {

    public static final class DefaultImpls {
        public static CompositeEncoder beginCollection(JsonEncoder jsonEncoder, SerialDescriptor descriptor, int i10) {
            r.e(descriptor, "descriptor");
            return Encoder.DefaultImpls.beginCollection(jsonEncoder, descriptor, i10);
        }

        @ExperimentalSerializationApi
        public static void encodeNotNullMark(JsonEncoder jsonEncoder) {
            Encoder.DefaultImpls.encodeNotNullMark(jsonEncoder);
        }

        @ExperimentalSerializationApi
        public static <T> void encodeNullableSerializableValue(JsonEncoder jsonEncoder, SerializationStrategy<? super T> serializer, T t10) {
            r.e(serializer, "serializer");
            Encoder.DefaultImpls.encodeNullableSerializableValue(jsonEncoder, serializer, t10);
        }

        public static <T> void encodeSerializableValue(JsonEncoder jsonEncoder, SerializationStrategy<? super T> serializer, T t10) {
            r.e(serializer, "serializer");
            Encoder.DefaultImpls.encodeSerializableValue(jsonEncoder, serializer, t10);
        }

        @ExperimentalSerializationApi
        public static boolean shouldEncodeElementDefault(JsonEncoder jsonEncoder, SerialDescriptor descriptor, int i10) {
            r.e(descriptor, "descriptor");
            return CompositeEncoder.DefaultImpls.shouldEncodeElementDefault(jsonEncoder, descriptor, i10);
        }
    }

    void encodeJsonElement(JsonElement jsonElement);

    Json getJson();
}
