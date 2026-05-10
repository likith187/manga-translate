package kotlinx.serialization.encoding;

import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositeDecoder {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int DECODE_DONE = -1;
    public static final int UNKNOWN_NAME = -3;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int DECODE_DONE = -1;
        public static final int UNKNOWN_NAME = -3;

        private Companion() {
        }
    }

    public static final class DefaultImpls {
        public static int decodeCollectionSize(CompositeDecoder compositeDecoder, SerialDescriptor descriptor) {
            r.e(descriptor, "descriptor");
            return -1;
        }

        public static /* synthetic */ Object decodeNullableSerializableElement$default(CompositeDecoder compositeDecoder, SerialDescriptor serialDescriptor, int i10, DeserializationStrategy deserializationStrategy, Object obj, int i11, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeNullableSerializableElement");
            }
            if ((i11 & 8) != 0) {
                obj = null;
            }
            return compositeDecoder.decodeNullableSerializableElement(serialDescriptor, i10, deserializationStrategy, obj);
        }

        @ExperimentalSerializationApi
        public static boolean decodeSequentially(CompositeDecoder compositeDecoder) {
            return false;
        }

        public static /* synthetic */ Object decodeSerializableElement$default(CompositeDecoder compositeDecoder, SerialDescriptor serialDescriptor, int i10, DeserializationStrategy deserializationStrategy, Object obj, int i11, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i11 & 8) != 0) {
                obj = null;
            }
            return compositeDecoder.decodeSerializableElement(serialDescriptor, i10, deserializationStrategy, obj);
        }
    }

    boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i10);

    byte decodeByteElement(SerialDescriptor serialDescriptor, int i10);

    char decodeCharElement(SerialDescriptor serialDescriptor, int i10);

    int decodeCollectionSize(SerialDescriptor serialDescriptor);

    double decodeDoubleElement(SerialDescriptor serialDescriptor, int i10);

    int decodeElementIndex(SerialDescriptor serialDescriptor);

    float decodeFloatElement(SerialDescriptor serialDescriptor, int i10);

    Decoder decodeInlineElement(SerialDescriptor serialDescriptor, int i10);

    int decodeIntElement(SerialDescriptor serialDescriptor, int i10);

    long decodeLongElement(SerialDescriptor serialDescriptor, int i10);

    @ExperimentalSerializationApi
    <T> T decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i10, DeserializationStrategy<? extends T> deserializationStrategy, T t10);

    @ExperimentalSerializationApi
    boolean decodeSequentially();

    <T> T decodeSerializableElement(SerialDescriptor serialDescriptor, int i10, DeserializationStrategy<? extends T> deserializationStrategy, T t10);

    short decodeShortElement(SerialDescriptor serialDescriptor, int i10);

    String decodeStringElement(SerialDescriptor serialDescriptor, int i10);

    void endStructure(SerialDescriptor serialDescriptor);

    SerializersModule getSerializersModule();
}
