package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.text.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.NamedValueDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerializersModule;
import n8.i;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractJsonTreeDecoder extends NamedValueDecoder implements JsonDecoder {
    protected final JsonConfiguration configuration;
    private final Json json;
    private final String polymorphicDiscriminator;
    private final JsonElement value;

    public /* synthetic */ AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonElement, str);
    }

    private final Void unparsedPrimitive(JsonPrimitive jsonPrimitive, String str, String str2) {
        StringBuilder sb;
        String str3;
        if (r.F(str, "i", false, 2, null)) {
            sb = new StringBuilder();
            str3 = "an ";
        } else {
            sb = new StringBuilder();
            str3 = "a ";
        }
        sb.append(str3);
        sb.append(str);
        throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse literal '" + jsonPrimitive + "' as " + sb.toString() + " value at element: " + renderTagStack(str2), currentObject().toString());
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        JsonElement jsonElementCurrentObject = currentObject();
        SerialKind kind = descriptor.getKind();
        if (kotlin.jvm.internal.r.a(kind, StructureKind.LIST.INSTANCE) || (kind instanceof PolymorphicKind)) {
            Json json = getJson();
            String serialName = descriptor.getSerialName();
            if (jsonElementCurrentObject instanceof JsonArray) {
                return new JsonTreeListDecoder(json, (JsonArray) jsonElementCurrentObject);
            }
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonArray.class).c() + ", but had " + d0.b(jsonElementCurrentObject.getClass()).c() + " as the serialized body of " + serialName + " at element: " + renderTagStack(), jsonElementCurrentObject.toString());
        }
        if (!kotlin.jvm.internal.r.a(kind, StructureKind.MAP.INSTANCE)) {
            Json json2 = getJson();
            String serialName2 = descriptor.getSerialName();
            if (jsonElementCurrentObject instanceof JsonObject) {
                return new JsonTreeDecoder(json2, (JsonObject) jsonElementCurrentObject, this.polymorphicDiscriminator, null, 8, null);
            }
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonObject.class).c() + ", but had " + d0.b(jsonElementCurrentObject.getClass()).c() + " as the serialized body of " + serialName2 + " at element: " + renderTagStack(), jsonElementCurrentObject.toString());
        }
        Json json3 = getJson();
        SerialDescriptor serialDescriptorCarrierDescriptor = WriteModeKt.carrierDescriptor(descriptor.getElementDescriptor(0), json3.getSerializersModule());
        SerialKind kind2 = serialDescriptorCarrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind) || kotlin.jvm.internal.r.a(kind2, SerialKind.ENUM.INSTANCE)) {
            Json json4 = getJson();
            String serialName3 = descriptor.getSerialName();
            if (jsonElementCurrentObject instanceof JsonObject) {
                return new JsonTreeMapDecoder(json4, (JsonObject) jsonElementCurrentObject);
            }
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonObject.class).c() + ", but had " + d0.b(jsonElementCurrentObject.getClass()).c() + " as the serialized body of " + serialName3 + " at element: " + renderTagStack(), jsonElementCurrentObject.toString());
        }
        if (!json3.getConfiguration().getAllowStructuredMapKeys()) {
            throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
        }
        Json json5 = getJson();
        String serialName4 = descriptor.getSerialName();
        if (jsonElementCurrentObject instanceof JsonArray) {
            return new JsonTreeListDecoder(json5, (JsonArray) jsonElementCurrentObject);
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonArray.class).c() + ", but had " + d0.b(jsonElementCurrentObject.getClass()).c() + " as the serialized body of " + serialName4 + " at element: " + renderTagStack(), jsonElementCurrentObject.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ <T extends JsonElement> T cast(JsonElement value, SerialDescriptor descriptor) {
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        String serialName = descriptor.getSerialName();
        kotlin.jvm.internal.r.i(3, "T");
        if (value != 0) {
            return value;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Expected ");
        kotlin.jvm.internal.r.i(4, "T");
        sb.append(d0.b(JsonElement.class).c());
        sb.append(", but had ");
        sb.append(d0.b(value.getClass()).c());
        sb.append(" as the serialized body of ");
        sb.append(serialName);
        sb.append(" at element: ");
        sb.append(renderTagStack());
        throw JsonExceptionsKt.JsonDecodingException(-1, sb.toString(), value.toString());
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    protected String composeName(String parentName, String childName) {
        kotlin.jvm.internal.r.e(parentName, "parentName");
        kotlin.jvm.internal.r.e(childName, "childName");
        return childName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract JsonElement currentElement(String str);

    protected final JsonElement currentObject() {
        JsonElement jsonElementCurrentElement;
        String currentTagOrNull = getCurrentTagOrNull();
        return (currentTagOrNull == null || (jsonElementCurrentElement = currentElement(currentTagOrNull)) == null) ? getValue() : jsonElementCurrentElement;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        return getCurrentTagOrNull() != null ? super.decodeInline(descriptor) : new JsonPrimitiveDecoder(getJson(), getValue(), this.polymorphicDiscriminator).decodeInline(descriptor);
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public JsonElement decodeJsonElement() {
        return currentObject();
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return !(currentObject() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(DeserializationStrategy<? extends T> deserializer) {
        JsonPrimitive jsonPrimitive;
        kotlin.jvm.internal.r.e(deserializer, "deserializer");
        if (!(deserializer instanceof AbstractPolymorphicSerializer) || getJson().getConfiguration().getUseArrayPolymorphism()) {
            return deserializer.deserialize(this);
        }
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) deserializer;
        String strClassDiscriminator = PolymorphicKt.classDiscriminator(abstractPolymorphicSerializer.getDescriptor(), getJson());
        JsonElement jsonElementDecodeJsonElement = decodeJsonElement();
        String serialName = abstractPolymorphicSerializer.getDescriptor().getSerialName();
        if (jsonElementDecodeJsonElement instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) jsonElementDecodeJsonElement;
            JsonElement jsonElement = (JsonElement) jsonObject.get((Object) strClassDiscriminator);
            try {
                DeserializationStrategy deserializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer((AbstractPolymorphicSerializer) deserializer, this, (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null) ? null : JsonElementKt.getContentOrNull(jsonPrimitive));
                kotlin.jvm.internal.r.c(deserializationStrategyFindPolymorphicSerializer, "null cannot be cast to non-null type kotlinx.serialization.DeserializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.decodeSerializableValuePolymorphic>");
                return (T) TreeJsonDecoderKt.readPolymorphicJson(getJson(), strClassDiscriminator, jsonObject, deserializationStrategyFindPolymorphicSerializer);
            } catch (SerializationException e10) {
                String message = e10.getMessage();
                kotlin.jvm.internal.r.b(message);
                throw JsonExceptionsKt.JsonDecodingException(-1, message, jsonObject.toString());
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonObject.class).c() + ", but had " + d0.b(jsonElementDecodeJsonElement.getClass()).c() + " as the serialized body of " + serialName + " at element: " + renderTagStack(), jsonElementDecodeJsonElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public Void decodeTaggedNull(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        return null;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public Json getJson() {
        return this.json;
    }

    protected final String getPolymorphicDiscriminator() {
        return this.polymorphicDiscriminator;
    }

    protected final JsonPrimitive getPrimitiveValue(String tag, SerialDescriptor descriptor) {
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        String serialName = descriptor.getSerialName();
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            return (JsonPrimitive) jsonElementCurrentElement;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of " + serialName + " at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return getJson().getSerializersModule();
    }

    public JsonElement getValue() {
        return this.value;
    }

    public final String renderTagStack(String currentTag) {
        kotlin.jvm.internal.r.e(currentTag, "currentTag");
        return renderTagStack() + '.' + currentTag;
    }

    public /* synthetic */ AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonElement, (i10 & 4) != 0 ? null : str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public boolean decodeTaggedBoolean(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                Boolean booleanOrNull = JsonElementKt.getBooleanOrNull(jsonPrimitive);
                if (booleanOrNull != null) {
                    return booleanOrNull.booleanValue();
                }
                unparsedPrimitive(jsonPrimitive, "boolean", tag);
                throw new i();
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "boolean", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of boolean at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public byte decodeTaggedByte(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                int i10 = JsonElementKt.getInt(jsonPrimitive);
                Byte bValueOf = (-128 > i10 || i10 > 127) ? null : Byte.valueOf((byte) i10);
                if (bValueOf != null) {
                    return bValueOf.byteValue();
                }
                unparsedPrimitive(jsonPrimitive, "byte", tag);
                throw new i();
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "byte", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of byte at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public char decodeTaggedChar(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                return r.V0(jsonPrimitive.getContent());
            } catch (IllegalArgumentException unused) {
                this.unparsedPrimitive(jsonPrimitive, "char", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of char at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public double decodeTaggedDouble(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                double d10 = JsonElementKt.getDouble(jsonPrimitive);
                if (getJson().getConfiguration().getAllowSpecialFloatingPointValues() || !(Double.isInfinite(d10) || Double.isNaN(d10))) {
                    return d10;
                }
                throw JsonExceptionsKt.InvalidFloatingPointDecoded(Double.valueOf(d10), tag, currentObject().toString());
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "double", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of double at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public int decodeTaggedEnum(String tag, SerialDescriptor enumDescriptor) {
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.e(enumDescriptor, "enumDescriptor");
        Json json = getJson();
        JsonElement jsonElementCurrentElement = currentElement(tag);
        String serialName = enumDescriptor.getSerialName();
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            return JsonNamesMapKt.getJsonNameIndexOrThrow$default(enumDescriptor, json, ((JsonPrimitive) jsonElementCurrentElement).getContent(), null, 4, null);
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of " + serialName + " at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public float decodeTaggedFloat(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                float f10 = JsonElementKt.getFloat(jsonPrimitive);
                if (getJson().getConfiguration().getAllowSpecialFloatingPointValues() || !(Float.isInfinite(f10) || Float.isNaN(f10))) {
                    return f10;
                }
                throw JsonExceptionsKt.InvalidFloatingPointDecoded(Float.valueOf(f10), tag, currentObject().toString());
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "float", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of float at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public Decoder decodeTaggedInline(String tag, SerialDescriptor inlineDescriptor) {
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.e(inlineDescriptor, "inlineDescriptor");
        if (!StreamingJsonEncoderKt.isUnsignedNumber(inlineDescriptor)) {
            return super.decodeTaggedInline(tag, inlineDescriptor);
        }
        Json json = getJson();
        JsonElement jsonElementCurrentElement = currentElement(tag);
        String serialName = inlineDescriptor.getSerialName();
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            return new JsonDecoderForUnsignedTypes(StringJsonLexerKt.StringJsonLexer(json, ((JsonPrimitive) jsonElementCurrentElement).getContent()), getJson());
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of " + serialName + " at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public int decodeTaggedInt(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                return JsonElementKt.getInt(jsonPrimitive);
            } catch (IllegalArgumentException unused) {
                this.unparsedPrimitive(jsonPrimitive, "int", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of int at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public long decodeTaggedLong(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                return JsonElementKt.getLong(jsonPrimitive);
            } catch (IllegalArgumentException unused) {
                this.unparsedPrimitive(jsonPrimitive, "long", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of long at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public boolean decodeTaggedNotNullMark(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        return currentElement(tag) != JsonNull.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public short decodeTaggedShort(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                int i10 = JsonElementKt.getInt(jsonPrimitive);
                Short shValueOf = (-32768 > i10 || i10 > 32767) ? null : Short.valueOf((short) i10);
                if (shValueOf != null) {
                    return shValueOf.shortValue();
                }
                unparsedPrimitive(jsonPrimitive, "short", tag);
                throw new i();
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, "short", tag);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of short at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    public String decodeTaggedString(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        JsonElement jsonElementCurrentElement = currentElement(tag);
        if (!(jsonElementCurrentElement instanceof JsonPrimitive)) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of string at element: " + renderTagStack(tag), jsonElementCurrentElement.toString());
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
        if (!(jsonPrimitive instanceof JsonLiteral)) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected string value for a non-null key '" + tag + "', got null literal instead at element: " + renderTagStack(tag), currentObject().toString());
        }
        JsonLiteral jsonLiteral = (JsonLiteral) jsonPrimitive;
        if (jsonLiteral.isString() || getJson().getConfiguration().isLenient()) {
            return jsonLiteral.getContent();
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "String literal for key '" + tag + "' should be quoted at element: " + renderTagStack(tag) + ".\nUse 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.", currentObject().toString());
    }

    private AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, String str) {
        this.json = json;
        this.value = jsonElement;
        this.polymorphicDiscriminator = str;
        this.configuration = getJson().getConfiguration();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ <T extends JsonElement> T cast(JsonElement value, String serialName, String tag) {
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(serialName, "serialName");
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.i(3, "T");
        if (value != 0) {
            return value;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Expected ");
        kotlin.jvm.internal.r.i(4, "T");
        sb.append(d0.b(JsonElement.class).c());
        sb.append(", but had ");
        sb.append(d0.b(value.getClass()).c());
        sb.append(" as the serialized body of ");
        sb.append(serialName);
        sb.append(" at element: ");
        sb.append(renderTagStack(tag));
        throw JsonExceptionsKt.JsonDecodingException(-1, sb.toString(), value.toString());
    }

    private final <T> T getPrimitiveValue(String str, String str2, l lVar) {
        JsonElement jsonElementCurrentElement = currentElement(str);
        if (jsonElementCurrentElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementCurrentElement;
            try {
                T t10 = (T) lVar.invoke(jsonPrimitive);
                if (t10 != null) {
                    return t10;
                }
                unparsedPrimitive(jsonPrimitive, str2, str);
                throw new i();
            } catch (IllegalArgumentException unused) {
                unparsedPrimitive(jsonPrimitive, str2, str);
                throw new i();
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonPrimitive.class).c() + ", but had " + d0.b(jsonElementCurrentElement.getClass()).c() + " as the serialized body of " + str2 + " at element: " + renderTagStack(str), jsonElementCurrentElement.toString());
    }
}
