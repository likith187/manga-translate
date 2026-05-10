package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
class JsonTreeEncoder extends AbstractJsonTreeEncoder {
    private final Map<String, JsonElement> content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeEncoder(Json json, l nodeConsumer) {
        super(json, nodeConsumer, null);
        r.e(json, "json");
        r.e(nodeConsumer, "nodeConsumer");
        this.content = new LinkedHashMap();
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int i10, SerializationStrategy<? super T> serializer, T t10) {
        r.e(descriptor, "descriptor");
        r.e(serializer, "serializer");
        if (t10 != null || this.configuration.getExplicitNulls()) {
            super.encodeNullableSerializableElement(descriptor, i10, serializer, t10);
        }
    }

    protected final Map<String, JsonElement> getContent() {
        return this.content;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public JsonElement getCurrent() {
        return new JsonObject(this.content);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void putElement(String key, JsonElement element) {
        r.e(key, "key");
        r.e(element, "element");
        this.content.put(key, element);
    }
}
