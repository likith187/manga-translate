package kotlinx.serialization.json;

import c9.j;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.modules.SerializersModule;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonKt {
    private static final String defaultDiscriminator = "type";
    private static final String defaultIndent = "    ";

    public static final Json Json(Json from, l builderAction) {
        r.e(from, "from");
        r.e(builderAction, "builderAction");
        JsonBuilder jsonBuilder = new JsonBuilder(from);
        builderAction.invoke(jsonBuilder);
        return new JsonImpl(jsonBuilder.build$kotlinx_serialization_json(), jsonBuilder.getSerializersModule());
    }

    public static /* synthetic */ Json Json$default(Json json, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            json = Json.Default;
        }
        return Json(json, lVar);
    }

    public static final /* synthetic */ <T> T decodeFromJsonElement(Json json, JsonElement json2) {
        r.e(json, "<this>");
        r.e(json2, "json");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (T) json.decodeFromJsonElement(SerializersKt.serializer(serializersModule, (j) null), json2);
    }

    public static final /* synthetic */ <T> JsonElement encodeToJsonElement(Json json, T t10) {
        r.e(json, "<this>");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return json.encodeToJsonElement(SerializersKt.serializer(serializersModule, (j) null), t10);
    }
}
