package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
final class JsonPrimitiveEncoder extends AbstractJsonTreeEncoder {
    private JsonElement content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonPrimitiveEncoder(Json json, l nodeConsumer) {
        super(json, nodeConsumer, null);
        r.e(json, "json");
        r.e(nodeConsumer, "nodeConsumer");
        pushTag(TreeJsonEncoderKt.PRIMITIVE_TAG);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public JsonElement getCurrent() {
        JsonElement jsonElement = this.content;
        if (jsonElement != null) {
            return jsonElement;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?");
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void putElement(String key, JsonElement element) {
        r.e(key, "key");
        r.e(element, "element");
        if (key != TreeJsonEncoderKt.PRIMITIVE_TAG) {
            throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag");
        }
        if (this.content != null) {
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?");
        }
        this.content = element;
        getNodeConsumer().invoke(element);
    }
}
