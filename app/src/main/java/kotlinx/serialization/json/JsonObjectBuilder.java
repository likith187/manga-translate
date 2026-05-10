package kotlinx.serialization.json;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@JsonDslMarker
public final class JsonObjectBuilder {
    private final Map<String, JsonElement> content = new LinkedHashMap();

    public final JsonObject build() {
        return new JsonObject(this.content);
    }

    public final JsonElement put(String key, JsonElement element) {
        r.e(key, "key");
        r.e(element, "element");
        return this.content.put(key, element);
    }
}
