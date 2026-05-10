package kotlinx.serialization.encoding;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.NoOpEncoder;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public abstract class AbstractEncoder implements Encoder, CompositeEncoder {
    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i10) {
        return Encoder.DefaultImpls.beginCollection(this, serialDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        encodeValue(Boolean.valueOf(z10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeBooleanElement(SerialDescriptor descriptor, int i10, boolean z10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeBoolean(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        encodeValue(Byte.valueOf(b10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeByteElement(SerialDescriptor descriptor, int i10, byte b10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeByte(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        encodeValue(Character.valueOf(c10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeCharElement(SerialDescriptor descriptor, int i10, char c10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeChar(c10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        encodeValue(Double.valueOf(d10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeDoubleElement(SerialDescriptor descriptor, int i10, double d10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeDouble(d10);
        }
    }

    public boolean encodeElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeEnum(SerialDescriptor enumDescriptor, int i10) {
        r.e(enumDescriptor, "enumDescriptor");
        encodeValue(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        encodeValue(Float.valueOf(f10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeFloatElement(SerialDescriptor descriptor, int i10, float f10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeFloat(f10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final Encoder encodeInlineElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return encodeElement(descriptor, i10) ? encodeInline(descriptor.getElementDescriptor(i10)) : NoOpEncoder.INSTANCE;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        encodeValue(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor descriptor, int i10, int i11) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeInt(i11);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        encodeValue(Long.valueOf(j10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor descriptor, int i10, long j10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeLong(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @ExperimentalSerializationApi
    public void encodeNotNullMark() {
        Encoder.DefaultImpls.encodeNotNullMark(this);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int i10, SerializationStrategy<? super T> serializer, T t10) {
        r.e(descriptor, "descriptor");
        r.e(serializer, "serializer");
        if (encodeElement(descriptor, i10)) {
            encodeNullableSerializableValue(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @ExperimentalSerializationApi
    public <T> void encodeNullableSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10) {
        Encoder.DefaultImpls.encodeNullableSerializableValue(this, serializationStrategy, t10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeSerializableElement(SerialDescriptor descriptor, int i10, SerializationStrategy<? super T> serializer, T t10) {
        r.e(descriptor, "descriptor");
        r.e(serializer, "serializer");
        if (encodeElement(descriptor, i10)) {
            encodeSerializableValue(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10) {
        Encoder.DefaultImpls.encodeSerializableValue(this, serializationStrategy, t10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        encodeValue(Short.valueOf(s10));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeShortElement(SerialDescriptor descriptor, int i10, short s10) {
        r.e(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeShort(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeString(String value) {
        r.e(value, "value");
        encodeValue(value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor descriptor, int i10, String value) {
        r.e(descriptor, "descriptor");
        r.e(value, "value");
        if (encodeElement(descriptor, i10)) {
            encodeString(value);
        }
    }

    public void encodeValue(Object value) {
        r.e(value, "value");
        throw new SerializationException("Non-serializable " + d0.b(value.getClass()) + " is not supported by " + d0.b(getClass()) + " encoder");
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void endStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    @ExperimentalSerializationApi
    public boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor, int i10) {
        return CompositeEncoder.DefaultImpls.shouldEncodeElementDefault(this, serialDescriptor, i10);
    }
}
