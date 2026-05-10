package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonObjectSerializer implements KSerializer<JsonObject> {
    public static final JsonObjectSerializer INSTANCE = new JsonObjectSerializer();
    private static final SerialDescriptor descriptor = JsonObjectDescriptor.INSTANCE;

    private static final class JsonObjectDescriptor implements SerialDescriptor {
        public static final JsonObjectDescriptor INSTANCE = new JsonObjectDescriptor();
        private static final String serialName = "kotlinx.serialization.json.JsonObject";
        private final /* synthetic */ SerialDescriptor $$delegate_0 = BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(h0.INSTANCE), JsonElementSerializer.INSTANCE).getDescriptor();

        private JsonObjectDescriptor() {
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getSerialName$annotations() {
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getAnnotations() {
            return this.$$delegate_0.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @ExperimentalSerializationApi
        public List<Annotation> getElementAnnotations(int i10) {
            return this.$$delegate_0.getElementAnnotations(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @ExperimentalSerializationApi
        public SerialDescriptor getElementDescriptor(int i10) {
            return this.$$delegate_0.getElementDescriptor(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @ExperimentalSerializationApi
        public int getElementIndex(String name) {
            r.e(name, "name");
            return this.$$delegate_0.getElementIndex(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @ExperimentalSerializationApi
        public String getElementName(int i10) {
            return this.$$delegate_0.getElementName(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int getElementsCount() {
            return this.$$delegate_0.getElementsCount();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialKind getKind() {
            return this.$$delegate_0.getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String getSerialName() {
            return serialName;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @ExperimentalSerializationApi
        public boolean isElementOptional(int i10) {
            return this.$$delegate_0.isElementOptional(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return this.$$delegate_0.isInline();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isNullable() {
            return this.$$delegate_0.isNullable();
        }
    }

    private JsonObjectSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public JsonObject deserialize(Decoder decoder) {
        r.e(decoder, "decoder");
        JsonElementSerializersKt.verify(decoder);
        return new JsonObject((Map) BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(h0.INSTANCE), JsonElementSerializer.INSTANCE).deserialize(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, JsonObject value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        JsonElementSerializersKt.verify(encoder);
        BuiltinSerializersKt.MapSerializer(BuiltinSerializersKt.serializer(h0.INSTANCE), JsonElementSerializer.INSTANCE).serialize(encoder, value);
    }
}
