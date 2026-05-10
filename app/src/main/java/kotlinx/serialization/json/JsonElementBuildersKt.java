package kotlinx.serialization.json;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonElementBuildersKt {
    public static final boolean add(JsonArrayBuilder jsonArrayBuilder, Boolean bool) {
        r.e(jsonArrayBuilder, "<this>");
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(bool));
    }

    @ExperimentalSerializationApi
    public static final boolean addAllBooleans(JsonArrayBuilder jsonArrayBuilder, Collection<Boolean> values) {
        r.e(jsonArrayBuilder, "<this>");
        r.e(values, "values");
        ArrayList arrayList = new ArrayList(o.r(values, 10));
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            arrayList.add(JsonElementKt.JsonPrimitive((Boolean) it.next()));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    @ExperimentalSerializationApi
    public static final boolean addAllNumbers(JsonArrayBuilder jsonArrayBuilder, Collection<? extends Number> values) {
        r.e(jsonArrayBuilder, "<this>");
        r.e(values, "values");
        ArrayList arrayList = new ArrayList(o.r(values, 10));
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            arrayList.add(JsonElementKt.JsonPrimitive((Number) it.next()));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    @ExperimentalSerializationApi
    public static final boolean addAllStrings(JsonArrayBuilder jsonArrayBuilder, Collection<String> values) {
        r.e(jsonArrayBuilder, "<this>");
        r.e(values, "values");
        ArrayList arrayList = new ArrayList(o.r(values, 10));
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            arrayList.add(JsonElementKt.JsonPrimitive((String) it.next()));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    public static final boolean addJsonArray(JsonArrayBuilder jsonArrayBuilder, l builderAction) {
        r.e(jsonArrayBuilder, "<this>");
        r.e(builderAction, "builderAction");
        JsonArrayBuilder jsonArrayBuilder2 = new JsonArrayBuilder();
        builderAction.invoke(jsonArrayBuilder2);
        return jsonArrayBuilder.add(jsonArrayBuilder2.build());
    }

    public static final boolean addJsonObject(JsonArrayBuilder jsonArrayBuilder, l builderAction) {
        r.e(jsonArrayBuilder, "<this>");
        r.e(builderAction, "builderAction");
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        builderAction.invoke(jsonObjectBuilder);
        return jsonArrayBuilder.add(jsonObjectBuilder.build());
    }

    public static final JsonArray buildJsonArray(l builderAction) {
        r.e(builderAction, "builderAction");
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        builderAction.invoke(jsonArrayBuilder);
        return jsonArrayBuilder.build();
    }

    public static final JsonObject buildJsonObject(l builderAction) {
        r.e(builderAction, "builderAction");
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        builderAction.invoke(jsonObjectBuilder);
        return jsonObjectBuilder.build();
    }

    public static final JsonElement put(JsonObjectBuilder jsonObjectBuilder, String key, Boolean bool) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        return jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive(bool));
    }

    public static final JsonElement putJsonArray(JsonObjectBuilder jsonObjectBuilder, String key, l builderAction) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        r.e(builderAction, "builderAction");
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        builderAction.invoke(jsonArrayBuilder);
        return jsonObjectBuilder.put(key, jsonArrayBuilder.build());
    }

    public static final JsonElement putJsonObject(JsonObjectBuilder jsonObjectBuilder, String key, l builderAction) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        r.e(builderAction, "builderAction");
        JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
        builderAction.invoke(jsonObjectBuilder2);
        return jsonObjectBuilder.put(key, jsonObjectBuilder2.build());
    }

    public static final boolean add(JsonArrayBuilder jsonArrayBuilder, Number number) {
        r.e(jsonArrayBuilder, "<this>");
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(number));
    }

    public static final JsonElement put(JsonObjectBuilder jsonObjectBuilder, String key, Number number) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        return jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive(number));
    }

    public static final boolean add(JsonArrayBuilder jsonArrayBuilder, String str) {
        r.e(jsonArrayBuilder, "<this>");
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(str));
    }

    public static final JsonElement put(JsonObjectBuilder jsonObjectBuilder, String key, String str) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        return jsonObjectBuilder.put(key, JsonElementKt.JsonPrimitive(str));
    }

    @ExperimentalSerializationApi
    public static final boolean add(JsonArrayBuilder jsonArrayBuilder, Void r12) {
        r.e(jsonArrayBuilder, "<this>");
        return jsonArrayBuilder.add(JsonNull.INSTANCE);
    }

    @ExperimentalSerializationApi
    public static final JsonElement put(JsonObjectBuilder jsonObjectBuilder, String key, Void r22) {
        r.e(jsonObjectBuilder, "<this>");
        r.e(key, "key");
        return jsonObjectBuilder.put(key, JsonNull.INSTANCE);
    }
}
