package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
final class JsonTreeListEncoder extends AbstractJsonTreeEncoder {
    private final ArrayList<JsonElement> array;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeListEncoder(Json json, l nodeConsumer) {
        super(json, nodeConsumer, null);
        r.e(json, "json");
        r.e(nodeConsumer, "nodeConsumer");
        this.array = new ArrayList<>();
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder, kotlinx.serialization.internal.NamedValueEncoder
    protected String elementName(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public JsonElement getCurrent() {
        return new JsonArray(this.array);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void putElement(String key, JsonElement element) {
        r.e(key, "key");
        r.e(element, "element");
        this.array.add(Integer.parseInt(key), element);
    }
}
