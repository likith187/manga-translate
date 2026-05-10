package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import n8.i;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonExceptionsKt {
    public static final JsonDecodingException InvalidFloatingPointDecoded(Number value, String key, String output) {
        r.e(value, "value");
        r.e(key, "key");
        r.e(output, "output");
        return JsonDecodingException(-1, unexpectedFpErrorMessage(value, key, output));
    }

    public static final JsonEncodingException InvalidFloatingPointEncoded(Number value, String output) {
        r.e(value, "value");
        r.e(output, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) minify$default(output, 0, 1, null)));
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor keyDescriptor) {
        r.e(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.getSerialName() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.getKind() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final JsonDecodingException JsonDecodingException(int i10, String message) {
        r.e(message, "message");
        if (i10 >= 0) {
            message = "Unexpected JSON token at offset " + i10 + ": " + message;
        }
        return new JsonDecodingException(message);
    }

    public static final JsonDecodingException UnknownKeyException(String key, String input) {
        r.e(key, "key");
        r.e(input, "input");
        return JsonDecodingException(-1, "Encountered an unknown key '" + key + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + ((Object) minify$default(input, 0, 1, null)));
    }

    public static final Void invalidTrailingComma(AbstractJsonLexer abstractJsonLexer, String entity) {
        r.e(abstractJsonLexer, "<this>");
        r.e(entity, "entity");
        abstractJsonLexer.fail("Trailing comma before the end of JSON " + entity, abstractJsonLexer.currentPosition - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingCommas = true' in 'Json {}' builder to support them.");
        throw new i();
    }

    public static /* synthetic */ Void invalidTrailingComma$default(AbstractJsonLexer abstractJsonLexer, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "object";
        }
        return invalidTrailingComma(abstractJsonLexer, str);
    }

    public static final CharSequence minify(CharSequence charSequence, int i10) {
        r.e(charSequence, "<this>");
        if (charSequence.length() < 200) {
            return charSequence;
        }
        if (i10 == -1) {
            int length = charSequence.length() - 60;
            if (length <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i11 = i10 - 30;
        int i12 = i10 + 30;
        return (i11 <= 0 ? "" : ".....") + charSequence.subSequence(b9.d.c(i11, 0), b9.d.e(i12, charSequence.length())).toString() + (i12 >= charSequence.length() ? "" : ".....");
    }

    public static /* synthetic */ CharSequence minify$default(CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        return minify(charSequence, i10);
    }

    public static final Void throwInvalidFloatingPointDecoded(AbstractJsonLexer abstractJsonLexer, Number result) {
        r.e(abstractJsonLexer, "<this>");
        r.e(result, "result");
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, AbstractJsonLexerKt.specialFlowingValuesHint, 2, null);
        throw new i();
    }

    private static final String unexpectedFpErrorMessage(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) minify$default(str2, 0, 1, null));
    }

    public static final JsonDecodingException JsonDecodingException(int i10, String message, CharSequence input) {
        r.e(message, "message");
        r.e(input, "input");
        return JsonDecodingException(i10, message + "\nJSON input: " + ((Object) minify(input, i10)));
    }

    public static final JsonEncodingException InvalidFloatingPointEncoded(Number value, String key, String output) {
        r.e(value, "value");
        r.e(key, "key");
        r.e(output, "output");
        return new JsonEncodingException(unexpectedFpErrorMessage(value, key, output));
    }
}
