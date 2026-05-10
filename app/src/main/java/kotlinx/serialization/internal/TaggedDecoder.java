package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public abstract class TaggedDecoder<Tag> implements Decoder, CompositeDecoder {
    private boolean flag;
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object decodeNullableSerializableElement$lambda$3(TaggedDecoder taggedDecoder, DeserializationStrategy deserializationStrategy, Object obj) {
        return (deserializationStrategy.getDescriptor().isNullable() || taggedDecoder.decodeNotNullMark()) ? taggedDecoder.decodeSerializableValue(deserializationStrategy, obj) : taggedDecoder.decodeNull();
    }

    private final <E> E tagBlock(Tag tag, w8.a aVar) {
        pushTag(tag);
        E e10 = (E) aVar.mo8invoke();
        if (!this.flag) {
            popTag();
        }
        this.flag = false;
        return e10;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        return this;
    }

    protected final void copyTagsTo(TaggedDecoder<Tag> other) {
        r.e(other, "other");
        other.tagStack.addAll(this.tagStack);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        return decodeTaggedBoolean(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean decodeBooleanElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedBoolean(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        return decodeTaggedByte(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte decodeByteElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedByte(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        return decodeTaggedChar(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char decodeCharElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedChar(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeCollectionSize(SerialDescriptor serialDescriptor) {
        return CompositeDecoder.DefaultImpls.decodeCollectionSize(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        return decodeTaggedDouble(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double decodeDoubleElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedDouble(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(SerialDescriptor enumDescriptor) {
        r.e(enumDescriptor, "enumDescriptor");
        return decodeTaggedEnum(popTag(), enumDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        return decodeTaggedFloat(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float decodeFloatElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedFloat(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        return decodeTaggedInline(popTag(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder decodeInlineElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedInline(getTag(descriptor, i10), descriptor.getElementDescriptor(i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        return decodeTaggedInt(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeIntElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedInt(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return decodeTaggedLong(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long decodeLongElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedLong(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        Tag currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            return false;
        }
        return decodeTaggedNotNullMark(currentTagOrNull);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T decodeNullableSerializableElement(SerialDescriptor descriptor, int i10, final DeserializationStrategy<? extends T> deserializer, final T t10) {
        r.e(descriptor, "descriptor");
        r.e(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i10), new w8.a() { // from class: kotlinx.serialization.internal.m
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return TaggedDecoder.decodeNullableSerializableElement$lambda$3(this.f13426a, deserializer, t10);
            }
        });
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @ExperimentalSerializationApi
    public <T> T decodeNullableSerializableValue(DeserializationStrategy<? extends T> deserializationStrategy) {
        return (T) Decoder.DefaultImpls.decodeNullableSerializableValue(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    @ExperimentalSerializationApi
    public boolean decodeSequentially() {
        return CompositeDecoder.DefaultImpls.decodeSequentially(this);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T decodeSerializableElement(SerialDescriptor descriptor, int i10, final DeserializationStrategy<? extends T> deserializer, final T t10) {
        r.e(descriptor, "descriptor");
        r.e(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i10), new w8.a() { // from class: kotlinx.serialization.internal.l
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return this.f13423a.decodeSerializableValue(deserializer, t10);
            }
        });
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(DeserializationStrategy<? extends T> deserializationStrategy) {
        return (T) Decoder.DefaultImpls.decodeSerializableValue(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        return decodeTaggedShort(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short decodeShortElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedShort(getTag(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return decodeTaggedString(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String decodeStringElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return decodeTaggedString(getTag(descriptor, i10));
    }

    protected boolean decodeTaggedBoolean(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objDecodeTaggedValue).booleanValue();
    }

    protected byte decodeTaggedByte(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objDecodeTaggedValue).byteValue();
    }

    protected char decodeTaggedChar(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objDecodeTaggedValue).charValue();
    }

    protected double decodeTaggedDouble(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objDecodeTaggedValue).doubleValue();
    }

    protected int decodeTaggedEnum(Tag tag, SerialDescriptor enumDescriptor) {
        r.e(enumDescriptor, "enumDescriptor");
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objDecodeTaggedValue).intValue();
    }

    protected float decodeTaggedFloat(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objDecodeTaggedValue).floatValue();
    }

    protected Decoder decodeTaggedInline(Tag tag, SerialDescriptor inlineDescriptor) {
        r.e(inlineDescriptor, "inlineDescriptor");
        pushTag(tag);
        return this;
    }

    protected int decodeTaggedInt(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objDecodeTaggedValue).intValue();
    }

    protected long decodeTaggedLong(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objDecodeTaggedValue).longValue();
    }

    protected boolean decodeTaggedNotNullMark(Tag tag) {
        return true;
    }

    protected Void decodeTaggedNull(Tag tag) {
        return null;
    }

    protected short decodeTaggedShort(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objDecodeTaggedValue).shortValue();
    }

    protected String decodeTaggedString(Tag tag) {
        Object objDecodeTaggedValue = decodeTaggedValue(tag);
        r.c(objDecodeTaggedValue, "null cannot be cast to non-null type kotlin.String");
        return (String) objDecodeTaggedValue;
    }

    protected Object decodeTaggedValue(Tag tag) {
        throw new SerializationException(d0.b(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
    }

    protected final Tag getCurrentTag() {
        return (Tag) o.c0(this.tagStack);
    }

    protected final Tag getCurrentTagOrNull() {
        return (Tag) o.d0(this.tagStack);
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return SerializersModuleBuildersKt.EmptySerializersModule();
    }

    protected abstract Tag getTag(SerialDescriptor serialDescriptor, int i10);

    public final ArrayList<Tag> getTagStack$kotlinx_serialization_core() {
        return this.tagStack;
    }

    protected final Tag popTag() {
        ArrayList<Tag> arrayList = this.tagStack;
        Tag tagRemove = arrayList.remove(o.j(arrayList));
        this.flag = true;
        return tagRemove;
    }

    protected final void pushTag(Tag tag) {
        this.tagStack.add(tag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T decodeSerializableValue(DeserializationStrategy<? extends T> deserializer, T t10) {
        r.e(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer);
    }
}
