package kotlinx.serialization.json;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;

/* JADX INFO: loaded from: classes2.dex */
@JsonDslMarker
public final class JsonArrayBuilder {
    private final List<JsonElement> content = new ArrayList();

    public final boolean add(JsonElement element) {
        r.e(element, "element");
        this.content.add(element);
        return true;
    }

    @ExperimentalSerializationApi
    public final boolean addAll(Collection<? extends JsonElement> elements) {
        r.e(elements, "elements");
        return this.content.addAll(elements);
    }

    public final JsonArray build() {
        return new JsonArray(this.content);
    }
}
