package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.JsonInternalDependenciesKt;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonClassDiscriminator;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public final class PolymorphicKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ClassDiscriminatorMode.values().length];
            try {
                iArr[ClassDiscriminatorMode.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ClassDiscriminatorMode.POLYMORPHIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ClassDiscriminatorMode.ALL_JSON_OBJECTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void checkKind(SerialKind kind) {
        r.e(kind, "kind");
        if (kind instanceof SerialKind.ENUM) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (kind instanceof PrimitiveKind) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (kind instanceof PolymorphicKind) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself");
        }
    }

    public static final String classDiscriminator(SerialDescriptor serialDescriptor, Json json) {
        r.e(serialDescriptor, "<this>");
        r.e(json, "json");
        for (Annotation annotation : serialDescriptor.getAnnotations()) {
            if (annotation instanceof JsonClassDiscriminator) {
                return ((JsonClassDiscriminator) annotation).discriminator();
            }
        }
        return json.getConfiguration().getClassDiscriminator();
    }

    public static final <T> T decodeSerializableValuePolymorphic(JsonDecoder jsonDecoder, DeserializationStrategy<? extends T> deserializer, w8.a path) {
        JsonPrimitive jsonPrimitive;
        r.e(jsonDecoder, "<this>");
        r.e(deserializer, "deserializer");
        r.e(path, "path");
        if (!(deserializer instanceof AbstractPolymorphicSerializer) || jsonDecoder.getJson().getConfiguration().getUseArrayPolymorphism()) {
            return deserializer.deserialize(jsonDecoder);
        }
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) deserializer;
        String strClassDiscriminator = classDiscriminator(abstractPolymorphicSerializer.getDescriptor(), jsonDecoder.getJson());
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        String serialName = abstractPolymorphicSerializer.getDescriptor().getSerialName();
        if (jsonElementDecodeJsonElement instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) jsonElementDecodeJsonElement;
            JsonElement jsonElement = (JsonElement) jsonObject.get((Object) strClassDiscriminator);
            try {
                DeserializationStrategy deserializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer((AbstractPolymorphicSerializer) deserializer, jsonDecoder, (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null) ? null : JsonElementKt.getContentOrNull(jsonPrimitive));
                r.c(deserializationStrategyFindPolymorphicSerializer, "null cannot be cast to non-null type kotlinx.serialization.DeserializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.decodeSerializableValuePolymorphic>");
                return (T) TreeJsonDecoderKt.readPolymorphicJson(jsonDecoder.getJson(), strClassDiscriminator, jsonObject, deserializationStrategyFindPolymorphicSerializer);
            } catch (SerializationException e10) {
                String message = e10.getMessage();
                r.b(message);
                throw JsonExceptionsKt.JsonDecodingException(-1, message, jsonObject.toString());
            }
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + d0.b(JsonObject.class).c() + ", but had " + d0.b(jsonElementDecodeJsonElement.getClass()).c() + " as the serialized body of " + serialName + " at element: " + ((String) path.mo8invoke()), jsonElementDecodeJsonElement.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> void encodePolymorphically(kotlinx.serialization.json.JsonEncoder r3, kotlinx.serialization.SerializationStrategy<? super T> r4, T r5, w8.p r6) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.PolymorphicKt.encodePolymorphically(kotlinx.serialization.json.JsonEncoder, kotlinx.serialization.SerializationStrategy, java.lang.Object, w8.p):void");
    }

    public static final Void throwJsonElementPolymorphicException(String str, JsonElement element) {
        r.e(element, "element");
        throw new JsonEncodingException("Class with serial name " + str + " cannot be serialized polymorphically because it is represented as " + d0.b(element.getClass()).c() + ". Make sure that its JsonTransformingSerializer returns JsonObject, so class discriminator can be added to it.");
    }

    public static final void validateIfSealed(SerializationStrategy<?> serializationStrategy, SerializationStrategy<?> serializationStrategy2, String str) {
        if ((serializationStrategy instanceof SealedClassSerializer) && JsonInternalDependenciesKt.jsonCachedSerialNames(serializationStrategy2.getDescriptor()).contains(str)) {
            String serialName = ((SealedClassSerializer) serializationStrategy).getDescriptor().getSerialName();
            throw new IllegalStateException(("Sealed class '" + serializationStrategy2.getDescriptor().getSerialName() + "' cannot be serialized as base class '" + serialName + "' because it has property name that conflicts with JSON class discriminator '" + str + "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
        }
    }
}
