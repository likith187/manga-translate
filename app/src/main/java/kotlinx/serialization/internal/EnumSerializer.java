package kotlinx.serialization.internal;

import java.lang.Enum;
import java.util.Arrays;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class EnumSerializer<T extends Enum<T>> implements KSerializer<T> {
    private final n8.j descriptor$delegate;
    private SerialDescriptor overriddenDescriptor;
    private final T[] values;

    public EnumSerializer(final String serialName, T[] values) {
        r.e(serialName, "serialName");
        r.e(values, "values");
        this.values = values;
        this.descriptor$delegate = n8.k.b(new w8.a() { // from class: kotlinx.serialization.internal.c
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return EnumSerializer.descriptor_delegate$lambda$0(this.f13410a, serialName);
            }
        });
    }

    private final SerialDescriptor createUnmarkedDescriptor(String str) {
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, this.values.length);
        for (T t10 : this.values) {
            PluginGeneratedSerialDescriptor.addElement$default(enumDescriptor, t10.name(), false, 2, null);
        }
        return enumDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor_delegate$lambda$0(EnumSerializer enumSerializer, String str) {
        SerialDescriptor serialDescriptor = enumSerializer.overriddenDescriptor;
        return serialDescriptor == null ? enumSerializer.createUnmarkedDescriptor(str) : serialDescriptor;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().getSerialName() + '>';
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        int iDecodeEnum = decoder.decodeEnum(getDescriptor());
        if (iDecodeEnum >= 0) {
            T[] tArr = this.values;
            if (iDecodeEnum < tArr.length) {
                return tArr[iDecodeEnum];
            }
        }
        throw new SerializationException(iDecodeEnum + " is not among valid " + getDescriptor().getSerialName() + " enum values, values size is " + this.values.length);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        int iM = kotlin.collections.i.M(this.values, value);
        if (iM != -1) {
            encoder.encodeEnum(getDescriptor(), iM);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(value);
        sb.append(" is not a valid enum ");
        sb.append(getDescriptor().getSerialName());
        sb.append(", must be one of ");
        String string = Arrays.toString(this.values);
        r.d(string, "toString(...)");
        sb.append(string);
        throw new SerializationException(sb.toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumSerializer(String serialName, T[] values, SerialDescriptor descriptor) {
        this(serialName, values);
        r.e(serialName, "serialName");
        r.e(values, "values");
        r.e(descriptor, "descriptor");
        this.overriddenDescriptor = descriptor;
    }
}
