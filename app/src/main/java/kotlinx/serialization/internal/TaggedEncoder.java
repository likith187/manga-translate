package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class TaggedEncoder<Tag> implements Encoder, CompositeEncoder {
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    private final boolean encodeElement(SerialDescriptor serialDescriptor, int i10) {
        pushTag(getTag(serialDescriptor, i10));
        return true;
    }

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
    public final void encodeBoolean(boolean z10) {
        encodeTaggedBoolean(popTag(), z10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeBooleanElement(SerialDescriptor descriptor, int i10, boolean z10) {
        r.e(descriptor, "descriptor");
        encodeTaggedBoolean(getTag(descriptor, i10), z10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeByte(byte b10) {
        encodeTaggedByte(popTag(), b10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeByteElement(SerialDescriptor descriptor, int i10, byte b10) {
        r.e(descriptor, "descriptor");
        encodeTaggedByte(getTag(descriptor, i10), b10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeChar(char c10) {
        encodeTaggedChar(popTag(), c10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeCharElement(SerialDescriptor descriptor, int i10, char c10) {
        r.e(descriptor, "descriptor");
        encodeTaggedChar(getTag(descriptor, i10), c10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeDouble(double d10) {
        encodeTaggedDouble(popTag(), d10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeDoubleElement(SerialDescriptor descriptor, int i10, double d10) {
        r.e(descriptor, "descriptor");
        encodeTaggedDouble(getTag(descriptor, i10), d10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeEnum(SerialDescriptor enumDescriptor, int i10) {
        r.e(enumDescriptor, "enumDescriptor");
        encodeTaggedEnum(popTag(), enumDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeFloat(float f10) {
        encodeTaggedFloat(popTag(), f10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeFloatElement(SerialDescriptor descriptor, int i10, float f10) {
        r.e(descriptor, "descriptor");
        encodeTaggedFloat(getTag(descriptor, i10), f10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        return encodeTaggedInline(popTag(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final Encoder encodeInlineElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return encodeTaggedInline(getTag(descriptor, i10), descriptor.getElementDescriptor(i10));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeInt(int i10) {
        encodeTaggedInt(popTag(), i10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor descriptor, int i10, int i11) {
        r.e(descriptor, "descriptor");
        encodeTaggedInt(getTag(descriptor, i10), i11);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeLong(long j10) {
        encodeTaggedLong(popTag(), j10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor descriptor, int i10, long j10) {
        r.e(descriptor, "descriptor");
        encodeTaggedLong(getTag(descriptor, i10), j10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
        encodeTaggedNonNullMark(getCurrentTag());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        encodeTaggedNull(popTag());
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
    public final void encodeShort(short s10) {
        encodeTaggedShort(popTag(), s10);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeShortElement(SerialDescriptor descriptor, int i10, short s10) {
        r.e(descriptor, "descriptor");
        encodeTaggedShort(getTag(descriptor, i10), s10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeString(String value) {
        r.e(value, "value");
        encodeTaggedString(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor descriptor, int i10, String value) {
        r.e(descriptor, "descriptor");
        r.e(value, "value");
        encodeTaggedString(getTag(descriptor, i10), value);
    }

    protected void encodeTaggedBoolean(Tag tag, boolean z10) {
        encodeTaggedValue(tag, Boolean.valueOf(z10));
    }

    protected void encodeTaggedByte(Tag tag, byte b10) {
        encodeTaggedValue(tag, Byte.valueOf(b10));
    }

    protected void encodeTaggedChar(Tag tag, char c10) {
        encodeTaggedValue(tag, Character.valueOf(c10));
    }

    protected void encodeTaggedDouble(Tag tag, double d10) {
        encodeTaggedValue(tag, Double.valueOf(d10));
    }

    protected void encodeTaggedEnum(Tag tag, SerialDescriptor enumDescriptor, int i10) {
        r.e(enumDescriptor, "enumDescriptor");
        encodeTaggedValue(tag, Integer.valueOf(i10));
    }

    protected void encodeTaggedFloat(Tag tag, float f10) {
        encodeTaggedValue(tag, Float.valueOf(f10));
    }

    protected Encoder encodeTaggedInline(Tag tag, SerialDescriptor inlineDescriptor) {
        r.e(inlineDescriptor, "inlineDescriptor");
        pushTag(tag);
        return this;
    }

    protected void encodeTaggedInt(Tag tag, int i10) {
        encodeTaggedValue(tag, Integer.valueOf(i10));
    }

    protected void encodeTaggedLong(Tag tag, long j10) {
        encodeTaggedValue(tag, Long.valueOf(j10));
    }

    protected void encodeTaggedNonNullMark(Tag tag) {
    }

    protected void encodeTaggedNull(Tag tag) {
        throw new SerializationException("null is not supported");
    }

    protected void encodeTaggedShort(Tag tag, short s10) {
        encodeTaggedValue(tag, Short.valueOf(s10));
    }

    protected void encodeTaggedString(Tag tag, String value) {
        r.e(value, "value");
        encodeTaggedValue(tag, value);
    }

    protected void encodeTaggedValue(Tag tag, Object value) {
        r.e(value, "value");
        throw new SerializationException("Non-serializable " + d0.b(value.getClass()) + " is not supported by " + d0.b(getClass()) + " encoder");
    }

    protected void endEncode(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void endStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        if (!this.tagStack.isEmpty()) {
            popTag();
        }
        endEncode(descriptor);
    }

    protected final Tag getCurrentTag() {
        return (Tag) o.c0(this.tagStack);
    }

    protected final Tag getCurrentTagOrNull() {
        return (Tag) o.d0(this.tagStack);
    }

    @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
    public SerializersModule getSerializersModule() {
        return SerializersModuleBuildersKt.EmptySerializersModule();
    }

    protected abstract Tag getTag(SerialDescriptor serialDescriptor, int i10);

    protected final Tag popTag() {
        if (this.tagStack.isEmpty()) {
            throw new SerializationException("No tag in stack for requested element");
        }
        ArrayList<Tag> arrayList = this.tagStack;
        return arrayList.remove(o.j(arrayList));
    }

    protected final void pushTag(Tag tag) {
        this.tagStack.add(tag);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    @ExperimentalSerializationApi
    public boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor, int i10) {
        return CompositeEncoder.DefaultImpls.shouldEncodeElementDefault(this, serialDescriptor, i10);
    }
}
