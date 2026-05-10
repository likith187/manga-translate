package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.NamedValueEncoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.modules.SerializersModule;
import n8.b0;
import n8.e0;
import n8.h0;
import n8.i;
import n8.x;
import n8.z;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
abstract class AbstractJsonTreeEncoder extends NamedValueEncoder implements JsonEncoder {
    protected final JsonConfiguration configuration;
    private final Json json;
    private final l nodeConsumer;
    private String polymorphicDiscriminator;
    private String polymorphicSerialName;

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder$inlineUnquotedLiteralEncoder$1 */
    public static final class AnonymousClass1 extends AbstractEncoder {
        final /* synthetic */ SerialDescriptor $inlineDescriptor;
        final /* synthetic */ String $tag;

        AnonymousClass1(String str, SerialDescriptor serialDescriptor) {
            str = str;
            serialDescriptor = serialDescriptor;
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void encodeString(String value) {
            r.e(value, "value");
            AbstractJsonTreeEncoder.this.putElement(str, new JsonLiteral(value, false, serialDescriptor));
        }

        @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
        public SerializersModule getSerializersModule() {
            return AbstractJsonTreeEncoder.this.getJson().getSerializersModule();
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder$inlineUnsignedNumberEncoder$1 */
    public static final class C02981 extends AbstractEncoder {
        final /* synthetic */ String $tag;
        private final SerializersModule serializersModule;

        C02981(String str) {
            str = str;
            this.serializersModule = AbstractJsonTreeEncoder.this.getJson().getSerializersModule();
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void encodeByte(byte b10) {
            putUnquotedString(x.e(x.b(b10)));
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void encodeInt(int i10) {
            putUnquotedString(Integer.toUnsignedString(z.b(i10)));
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void encodeLong(long j10) {
            putUnquotedString(Long.toUnsignedString(b0.b(j10)));
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void encodeShort(short s10) {
            putUnquotedString(e0.e(e0.b(s10)));
        }

        @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
        public SerializersModule getSerializersModule() {
            return this.serializersModule;
        }

        public final void putUnquotedString(String s10) {
            r.e(s10, "s");
            AbstractJsonTreeEncoder.this.putElement(str, new JsonLiteral(s10, false, null, 4, null));
        }
    }

    public /* synthetic */ AbstractJsonTreeEncoder(Json json, l lVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, lVar);
    }

    public static final h0 beginStructure$lambda$2(AbstractJsonTreeEncoder abstractJsonTreeEncoder, JsonElement node) {
        r.e(node, "node");
        abstractJsonTreeEncoder.putElement(abstractJsonTreeEncoder.getCurrentTag(), node);
        return h0.INSTANCE;
    }

    private final AnonymousClass1 inlineUnquotedLiteralEncoder(String str, SerialDescriptor serialDescriptor) {
        return new AbstractEncoder() { // from class: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder.inlineUnquotedLiteralEncoder.1
            final /* synthetic */ SerialDescriptor $inlineDescriptor;
            final /* synthetic */ String $tag;

            AnonymousClass1(String str2, SerialDescriptor serialDescriptor2) {
                str = str2;
                serialDescriptor = serialDescriptor2;
            }

            @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
            public void encodeString(String value) {
                r.e(value, "value");
                AbstractJsonTreeEncoder.this.putElement(str, new JsonLiteral(value, false, serialDescriptor));
            }

            @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
            public SerializersModule getSerializersModule() {
                return AbstractJsonTreeEncoder.this.getJson().getSerializersModule();
            }
        };
    }

    @SuppressAnimalSniffer
    private final C02981 inlineUnsignedNumberEncoder(String str) {
        return new AbstractEncoder() { // from class: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder.inlineUnsignedNumberEncoder.1
            final /* synthetic */ String $tag;
            private final SerializersModule serializersModule;

            C02981(String str2) {
                str = str2;
                this.serializersModule = AbstractJsonTreeEncoder.this.getJson().getSerializersModule();
            }

            @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
            public void encodeByte(byte b10) {
                putUnquotedString(x.e(x.b(b10)));
            }

            @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
            public void encodeInt(int i10) {
                putUnquotedString(Integer.toUnsignedString(z.b(i10)));
            }

            @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
            public void encodeLong(long j10) {
                putUnquotedString(Long.toUnsignedString(b0.b(j10)));
            }

            @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
            public void encodeShort(short s10) {
                putUnquotedString(e0.e(e0.b(s10)));
            }

            @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
            public SerializersModule getSerializersModule() {
                return this.serializersModule;
            }

            public final void putUnquotedString(String s10) {
                r.e(s10, "s");
                AbstractJsonTreeEncoder.this.putElement(str, new JsonLiteral(s10, false, null, 4, null));
            }
        };
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor) {
        AbstractJsonTreeEncoder jsonTreeListEncoder;
        r.e(descriptor, "descriptor");
        l lVar = getCurrentTagOrNull() == null ? this.nodeConsumer : new l() { // from class: kotlinx.serialization.json.internal.a
            @Override // w8.l
            public final Object invoke(Object obj) {
                return AbstractJsonTreeEncoder.beginStructure$lambda$2(this.f13430a, (JsonElement) obj);
            }
        };
        SerialKind kind = descriptor.getKind();
        if (r.a(kind, StructureKind.LIST.INSTANCE) || (kind instanceof PolymorphicKind)) {
            jsonTreeListEncoder = new JsonTreeListEncoder(this.json, lVar);
        } else if (r.a(kind, StructureKind.MAP.INSTANCE)) {
            Json json = this.json;
            SerialDescriptor serialDescriptorCarrierDescriptor = WriteModeKt.carrierDescriptor(descriptor.getElementDescriptor(0), json.getSerializersModule());
            SerialKind kind2 = serialDescriptorCarrierDescriptor.getKind();
            if ((kind2 instanceof PrimitiveKind) || r.a(kind2, SerialKind.ENUM.INSTANCE)) {
                jsonTreeListEncoder = new JsonTreeMapEncoder(this.json, lVar);
            } else {
                if (!json.getConfiguration().getAllowStructuredMapKeys()) {
                    throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
                }
                jsonTreeListEncoder = new JsonTreeListEncoder(this.json, lVar);
            }
        } else {
            jsonTreeListEncoder = new JsonTreeEncoder(this.json, lVar);
        }
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            if (jsonTreeListEncoder instanceof JsonTreeMapEncoder) {
                JsonTreeMapEncoder jsonTreeMapEncoder = (JsonTreeMapEncoder) jsonTreeListEncoder;
                jsonTreeMapEncoder.putElement("key", JsonElementKt.JsonPrimitive(str));
                String serialName = this.polymorphicSerialName;
                if (serialName == null) {
                    serialName = descriptor.getSerialName();
                }
                jsonTreeMapEncoder.putElement("value", JsonElementKt.JsonPrimitive(serialName));
            } else {
                String serialName2 = this.polymorphicSerialName;
                if (serialName2 == null) {
                    serialName2 = descriptor.getSerialName();
                }
                jsonTreeListEncoder.putElement(str, JsonElementKt.JsonPrimitive(serialName2));
            }
            this.polymorphicDiscriminator = null;
            this.polymorphicSerialName = null;
        }
        return jsonTreeListEncoder;
    }

    @Override // kotlinx.serialization.internal.NamedValueEncoder
    protected String composeName(String parentName, String childName) {
        r.e(parentName, "parentName");
        r.e(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.internal.NamedValueEncoder
    protected String elementName(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return JsonNamesMapKt.getJsonElementName(descriptor, this.json, i10);
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        if (getCurrentTagOrNull() == null) {
            return new JsonPrimitiveEncoder(this.json, this.nodeConsumer).encodeInline(descriptor);
        }
        if (this.polymorphicDiscriminator != null) {
            this.polymorphicSerialName = descriptor.getSerialName();
        }
        return super.encodeInline(descriptor);
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public void encodeJsonElement(JsonElement element) {
        r.e(element, "element");
        if (this.polymorphicDiscriminator == null || (element instanceof JsonObject)) {
            encodeSerializableValue(JsonElementSerializer.INSTANCE, element);
        } else {
            PolymorphicKt.throwJsonElementPolymorphicException(this.polymorphicSerialName, element);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        String currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            this.nodeConsumer.invoke(JsonNull.INSTANCE);
        } else {
            encodeTaggedNull(currentTagOrNull);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0089  */
    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <T> void encodeSerializableValue(kotlinx.serialization.SerializationStrategy<? super T> r4, T r5) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder.encodeSerializableValue(kotlinx.serialization.SerializationStrategy, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    protected void endEncode(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        this.nodeConsumer.invoke(getCurrent());
    }

    public abstract JsonElement getCurrent();

    @Override // kotlinx.serialization.json.JsonEncoder
    public final Json getJson() {
        return this.json;
    }

    protected final l getNodeConsumer() {
        return this.nodeConsumer;
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
    public final SerializersModule getSerializersModule() {
        return this.json.getSerializersModule();
    }

    public abstract void putElement(String str, JsonElement jsonElement);

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults();
    }

    private AbstractJsonTreeEncoder(Json json, l lVar) {
        this.json = json;
        this.nodeConsumer = lVar;
        this.configuration = json.getConfiguration();
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedBoolean(String tag, boolean z10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Boolean.valueOf(z10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedByte(String tag, byte b10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Byte.valueOf(b10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedChar(String tag, char c10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(String.valueOf(c10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedDouble(String tag, double d10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Double.valueOf(d10)));
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (Double.isInfinite(d10) || Double.isNaN(d10)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Double.valueOf(d10), tag, getCurrent().toString());
        }
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedEnum(String tag, SerialDescriptor enumDescriptor, int i10) {
        r.e(tag, "tag");
        r.e(enumDescriptor, "enumDescriptor");
        putElement(tag, JsonElementKt.JsonPrimitive(enumDescriptor.getElementName(i10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedFloat(String tag, float f10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Float.valueOf(f10)));
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (Float.isInfinite(f10) || Float.isNaN(f10)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Float.valueOf(f10), tag, getCurrent().toString());
        }
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public Encoder encodeTaggedInline(String tag, SerialDescriptor inlineDescriptor) {
        r.e(tag, "tag");
        r.e(inlineDescriptor, "inlineDescriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(inlineDescriptor) ? inlineUnsignedNumberEncoder(tag) : StreamingJsonEncoderKt.isUnquotedLiteral(inlineDescriptor) ? inlineUnquotedLiteralEncoder(tag, inlineDescriptor) : super.encodeTaggedInline(tag, inlineDescriptor);
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedInt(String tag, int i10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Integer.valueOf(i10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedLong(String tag, long j10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Long.valueOf(j10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedNull(String tag) {
        r.e(tag, "tag");
        putElement(tag, JsonNull.INSTANCE);
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedShort(String tag, short s10) {
        r.e(tag, "tag");
        putElement(tag, JsonElementKt.JsonPrimitive(Short.valueOf(s10)));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedString(String tag, String value) {
        r.e(tag, "tag");
        r.e(value, "value");
        putElement(tag, JsonElementKt.JsonPrimitive(value));
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    public void encodeTaggedValue(String tag, Object value) {
        r.e(tag, "tag");
        r.e(value, "value");
        putElement(tag, JsonElementKt.JsonPrimitive(value.toString()));
    }
}
