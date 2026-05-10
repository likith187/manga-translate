package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
final class JsonTreeMapDecoder extends JsonTreeDecoder {
    private final List<String> keys;
    private int position;
    private final int size;
    private final JsonObject value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeMapDecoder(Json json, JsonObject value) {
        super(json, value, null, null, 12, null);
        r.e(json, "json");
        r.e(value, "value");
        this.value = value;
        List<String> listR0 = o.r0(getValue().keySet());
        this.keys = listR0;
        this.size = listR0.size() * 2;
        this.position = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement currentElement(String tag) {
        r.e(tag, "tag");
        return this.position % 2 == 0 ? JsonElementKt.JsonPrimitive(tag) : (JsonElement) j0.i(getValue(), tag);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        int i10 = this.position;
        if (i10 >= this.size - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.position = i11;
        return i11;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.internal.NamedValueDecoder
    protected String elementName(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return this.keys.get(i10 / 2);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonObject getValue() {
        return this.value;
    }
}
