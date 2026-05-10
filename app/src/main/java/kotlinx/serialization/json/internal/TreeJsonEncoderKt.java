package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class TreeJsonEncoderKt {
    public static final String PRIMITIVE_TAG = "primitive";

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T extends JsonElement> T cast(JsonElement value, String serialName, w8.a path) {
        r.e(value, "value");
        r.e(serialName, "serialName");
        r.e(path, "path");
        r.i(3, "T");
        if (value != 0) {
            return value;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Expected ");
        r.i(4, "T");
        sb.append(d0.b(JsonElement.class).c());
        sb.append(", but had ");
        sb.append(d0.b(value.getClass()).c());
        sb.append(" as the serialized body of ");
        sb.append(serialName);
        sb.append(" at element: ");
        sb.append((String) path.mo8invoke());
        throw JsonExceptionsKt.JsonDecodingException(-1, sb.toString(), value.toString());
    }

    public static final boolean getRequiresTopLevelTag(SerialDescriptor serialDescriptor) {
        return (serialDescriptor.getKind() instanceof PrimitiveKind) || serialDescriptor.getKind() == SerialKind.ENUM.INSTANCE;
    }

    @JsonFriendModuleApi
    public static final <T> JsonElement writeJson(Json json, T t10, SerializationStrategy<? super T> serializer) {
        r.e(json, "json");
        r.e(serializer, "serializer");
        final c0 c0Var = new c0();
        new JsonTreeEncoder(json, new l() { // from class: kotlinx.serialization.json.internal.d
            @Override // w8.l
            public final Object invoke(Object obj) {
                return TreeJsonEncoderKt.writeJson$lambda$0(c0Var, (JsonElement) obj);
            }
        }).encodeSerializableValue(serializer, t10);
        Object obj = c0Var.element;
        if (obj != null) {
            return (JsonElement) obj;
        }
        r.r("result");
        return null;
    }

    public static final h0 writeJson$lambda$0(c0 c0Var, JsonElement it) {
        r.e(it, "it");
        c0Var.element = it;
        return h0.INSTANCE;
    }
}
