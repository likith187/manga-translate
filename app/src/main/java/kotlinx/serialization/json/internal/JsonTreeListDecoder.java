package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes2.dex */
final class JsonTreeListDecoder extends AbstractJsonTreeDecoder {
    private int currentIndex;
    private final int size;
    private final JsonArray value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeListDecoder(Json json, JsonArray value) {
        super(json, value, null, 4, null);
        r.e(json, "json");
        r.e(value, "value");
        this.value = value;
        this.size = getValue().size();
        this.currentIndex = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement currentElement(String tag) {
        r.e(tag, "tag");
        return getValue().get(Integer.parseInt(tag));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        int i10 = this.currentIndex;
        if (i10 >= this.size - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.currentIndex = i11;
        return i11;
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    protected String elementName(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonArray getValue() {
        return this.value;
    }
}
