package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import n8.h0;
import n8.o;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonElementSerializer implements KSerializer<JsonElement> {
    public static final JsonElementSerializer INSTANCE = new JsonElementSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.json.JsonElement", PolymorphicKind.SEALED.INSTANCE, new SerialDescriptor[0], new l() { // from class: kotlinx.serialization.json.a
        @Override // w8.l
        public final Object invoke(Object obj) {
            return JsonElementSerializer.descriptor$lambda$5((ClassSerialDescriptorBuilder) obj);
        }
    });

    private JsonElementSerializer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 descriptor$lambda$5(ClassSerialDescriptorBuilder buildSerialDescriptor) {
        r.e(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "JsonPrimitive", JsonElementSerializersKt.defer(new w8.a() { // from class: kotlinx.serialization.json.b
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonElementSerializer.descriptor$lambda$5$lambda$0();
            }
        }), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "JsonNull", JsonElementSerializersKt.defer(new w8.a() { // from class: kotlinx.serialization.json.c
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonElementSerializer.descriptor$lambda$5$lambda$1();
            }
        }), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "JsonLiteral", JsonElementSerializersKt.defer(new w8.a() { // from class: kotlinx.serialization.json.d
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonElementSerializer.descriptor$lambda$5$lambda$2();
            }
        }), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "JsonObject", JsonElementSerializersKt.defer(new w8.a() { // from class: kotlinx.serialization.json.e
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonElementSerializer.descriptor$lambda$5$lambda$3();
            }
        }), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "JsonArray", JsonElementSerializersKt.defer(new w8.a() { // from class: kotlinx.serialization.json.f
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return JsonElementSerializer.descriptor$lambda$5$lambda$4();
            }
        }), null, false, 12, null);
        return h0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor$lambda$5$lambda$0() {
        return JsonPrimitiveSerializer.INSTANCE.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor$lambda$5$lambda$1() {
        return JsonNullSerializer.INSTANCE.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor$lambda$5$lambda$2() {
        return JsonLiteralSerializer.INSTANCE.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor$lambda$5$lambda$3() {
        return JsonObjectSerializer.INSTANCE.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor descriptor$lambda$5$lambda$4() {
        return JsonArraySerializer.INSTANCE.getDescriptor();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public JsonElement deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        return JsonElementSerializersKt.asJsonDecoder(decoder).decodeJsonElement();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, JsonElement value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        JsonElementSerializersKt.verify(encoder);
        if (value instanceof JsonPrimitive) {
            encoder.encodeSerializableValue(JsonPrimitiveSerializer.INSTANCE, value);
        } else if (value instanceof JsonObject) {
            encoder.encodeSerializableValue(JsonObjectSerializer.INSTANCE, value);
        } else {
            if (!(value instanceof JsonArray)) {
                throw new o();
            }
            encoder.encodeSerializableValue(JsonArraySerializer.INSTANCE, value);
        }
    }
}
