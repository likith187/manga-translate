package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Serializable(with = JsonElementSerializer.class)
public abstract class JsonElement {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public final KSerializer<JsonElement> serializer() {
            return JsonElementSerializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ JsonElement(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private JsonElement() {
    }
}
