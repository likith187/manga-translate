package kotlinx.serialization.json;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.InlineClassDescriptorKt;
import kotlinx.serialization.json.internal.JsonDecodingException;
import kotlinx.serialization.json.internal.JsonEncodingException;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.StringOpsKt;
import kotlinx.serialization.json.internal.SuppressAnimalSniffer;
import n8.b0;
import n8.i;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonElementKt {
    private static final SerialDescriptor jsonUnquotedLiteralDescriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlinx.serialization.json.JsonUnquotedLiteral", BuiltinSerializersKt.serializer(h0.INSTANCE));

    public static final JsonPrimitive JsonPrimitive(Boolean bool) {
        return bool == null ? JsonNull.INSTANCE : new JsonLiteral(bool, false, null, 4, null);
    }

    @ExperimentalSerializationApi
    /* JADX INFO: renamed from: JsonPrimitive-7apg3OU, reason: not valid java name */
    public static final JsonPrimitive m53JsonPrimitive7apg3OU(byte b10) {
        return m54JsonPrimitiveVKZWuLQ(b0.b(((long) b10) & 255));
    }

    @ExperimentalSerializationApi
    @SuppressAnimalSniffer
    /* JADX INFO: renamed from: JsonPrimitive-VKZWuLQ, reason: not valid java name */
    public static final JsonPrimitive m54JsonPrimitiveVKZWuLQ(long j10) {
        return JsonUnquotedLiteral(Long.toUnsignedString(j10));
    }

    @ExperimentalSerializationApi
    /* JADX INFO: renamed from: JsonPrimitive-WZ4Q5Ns, reason: not valid java name */
    public static final JsonPrimitive m55JsonPrimitiveWZ4Q5Ns(int i10) {
        return m54JsonPrimitiveVKZWuLQ(b0.b(((long) i10) & 4294967295L));
    }

    @ExperimentalSerializationApi
    /* JADX INFO: renamed from: JsonPrimitive-xj2QHRw, reason: not valid java name */
    public static final JsonPrimitive m56JsonPrimitivexj2QHRw(short s10) {
        return m54JsonPrimitiveVKZWuLQ(b0.b(((long) s10) & 65535));
    }

    @ExperimentalSerializationApi
    public static final JsonPrimitive JsonUnquotedLiteral(String str) {
        if (str == null) {
            return JsonNull.INSTANCE;
        }
        if (r.a(str, JsonNull.INSTANCE.getContent())) {
            throw new JsonEncodingException("Creating a literal unquoted value of 'null' is forbidden. If you want to create JSON null literal, use JsonNull object, otherwise, use JsonPrimitive");
        }
        return new JsonLiteral(str, false, jsonUnquotedLiteralDescriptor);
    }

    private static final Void error(JsonElement jsonElement, String str) {
        throw new IllegalArgumentException("Element " + d0.b(jsonElement.getClass()) + " is not a " + str);
    }

    public static final boolean getBoolean(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        Boolean booleanStrictOrNull = StringOpsKt.toBooleanStrictOrNull(jsonPrimitive.getContent());
        if (booleanStrictOrNull != null) {
            return booleanStrictOrNull.booleanValue();
        }
        throw new IllegalStateException(jsonPrimitive + " does not represent a Boolean");
    }

    public static final Boolean getBooleanOrNull(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        return StringOpsKt.toBooleanStrictOrNull(jsonPrimitive.getContent());
    }

    public static final String getContentOrNull(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        if (jsonPrimitive instanceof JsonNull) {
            return null;
        }
        return jsonPrimitive.getContent();
    }

    public static final double getDouble(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        return Double.parseDouble(jsonPrimitive.getContent());
    }

    public static final Double getDoubleOrNull(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        return kotlin.text.r.j(jsonPrimitive.getContent());
    }

    public static final float getFloat(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        return Float.parseFloat(jsonPrimitive.getContent());
    }

    public static final Float getFloatOrNull(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        return kotlin.text.r.k(jsonPrimitive.getContent());
    }

    public static final int getInt(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        try {
            long jConsumeNumericLiteral = new StringJsonLexer(jsonPrimitive.getContent()).consumeNumericLiteral();
            if (-2147483648L <= jConsumeNumericLiteral && jConsumeNumericLiteral <= 2147483647L) {
                return (int) jConsumeNumericLiteral;
            }
            throw new NumberFormatException(jsonPrimitive.getContent() + " is not an Int");
        } catch (JsonDecodingException e10) {
            throw new NumberFormatException(e10.getMessage());
        }
    }

    public static final Integer getIntOrNull(JsonPrimitive jsonPrimitive) {
        Long lValueOf;
        r.e(jsonPrimitive, "<this>");
        try {
            lValueOf = Long.valueOf(new StringJsonLexer(jsonPrimitive.getContent()).consumeNumericLiteral());
        } catch (JsonDecodingException unused) {
            lValueOf = null;
        }
        if (lValueOf != null) {
            long jLongValue = lValueOf.longValue();
            if (-2147483648L <= jLongValue && jLongValue <= 2147483647L) {
                return Integer.valueOf((int) jLongValue);
            }
        }
        return null;
    }

    public static final JsonArray getJsonArray(JsonElement jsonElement) {
        r.e(jsonElement, "<this>");
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray != null) {
            return jsonArray;
        }
        error(jsonElement, "JsonArray");
        throw new i();
    }

    public static final JsonNull getJsonNull(JsonElement jsonElement) {
        r.e(jsonElement, "<this>");
        JsonNull jsonNull = jsonElement instanceof JsonNull ? (JsonNull) jsonElement : null;
        if (jsonNull != null) {
            return jsonNull;
        }
        error(jsonElement, "JsonNull");
        throw new i();
    }

    public static final JsonObject getJsonObject(JsonElement jsonElement) {
        r.e(jsonElement, "<this>");
        JsonObject jsonObject = jsonElement instanceof JsonObject ? (JsonObject) jsonElement : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        error(jsonElement, "JsonObject");
        throw new i();
    }

    public static final JsonPrimitive getJsonPrimitive(JsonElement jsonElement) {
        r.e(jsonElement, "<this>");
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        error(jsonElement, "JsonPrimitive");
        throw new i();
    }

    public static final SerialDescriptor getJsonUnquotedLiteralDescriptor() {
        return jsonUnquotedLiteralDescriptor;
    }

    public static final long getLong(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        try {
            return new StringJsonLexer(jsonPrimitive.getContent()).consumeNumericLiteral();
        } catch (JsonDecodingException e10) {
            throw new NumberFormatException(e10.getMessage());
        }
    }

    public static final Long getLongOrNull(JsonPrimitive jsonPrimitive) {
        r.e(jsonPrimitive, "<this>");
        try {
            return Long.valueOf(new StringJsonLexer(jsonPrimitive.getContent()).consumeNumericLiteral());
        } catch (JsonDecodingException unused) {
            return null;
        }
    }

    private static final <T> T mapExceptions(w8.a aVar) {
        try {
            return (T) aVar.mo8invoke();
        } catch (JsonDecodingException e10) {
            throw new NumberFormatException(e10.getMessage());
        }
    }

    private static final <T> T mapExceptionsToNull(w8.a aVar) {
        try {
            return (T) aVar.mo8invoke();
        } catch (JsonDecodingException unused) {
            return null;
        }
    }

    public static final Void unexpectedJson(String key, String expected) {
        r.e(key, "key");
        r.e(expected, "expected");
        throw new IllegalArgumentException("Element " + key + " is not a " + expected);
    }

    public static final JsonPrimitive JsonPrimitive(Number number) {
        if (number == null) {
            return JsonNull.INSTANCE;
        }
        return new JsonLiteral(number, false, null, 4, null);
    }

    public static final JsonPrimitive JsonPrimitive(String str) {
        if (str == null) {
            return JsonNull.INSTANCE;
        }
        return new JsonLiteral(str, true, null, 4, null);
    }

    @ExperimentalSerializationApi
    public static final JsonNull JsonPrimitive(Void r02) {
        return JsonNull.INSTANCE;
    }
}
