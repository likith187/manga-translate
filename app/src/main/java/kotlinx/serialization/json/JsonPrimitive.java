package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Serializable(with = JsonPrimitiveSerializer.class)
public abstract class JsonPrimitive extends JsonElement {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public final KSerializer<JsonPrimitive> serializer() {
            return JsonPrimitiveSerializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ JsonPrimitive(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String getContent();

    public abstract boolean isString();

    public String toString() {
        return getContent();
    }

    private JsonPrimitive() {
        super(null);
    }
}
