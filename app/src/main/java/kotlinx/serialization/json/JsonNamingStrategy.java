package kotlinx.serialization.json;

import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonNamingStrategy;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public interface JsonNamingStrategy {
    public static final Builtins Builtins = Builtins.$$INSTANCE;

    @ExperimentalSerializationApi
    public static final class Builtins {
        static final /* synthetic */ Builtins $$INSTANCE = new Builtins();
        private static final JsonNamingStrategy SnakeCase = new JsonNamingStrategy() { // from class: kotlinx.serialization.json.JsonNamingStrategy$Builtins$SnakeCase$1
            @Override // kotlinx.serialization.json.JsonNamingStrategy
            public String serialNameForJson(SerialDescriptor descriptor, int i10, String serialName) {
                r.e(descriptor, "descriptor");
                r.e(serialName, "serialName");
                return JsonNamingStrategy.Builtins.$$INSTANCE.convertCamelCase(serialName, '_');
            }

            public String toString() {
                return "kotlinx.serialization.json.JsonNamingStrategy.SnakeCase";
            }
        };
        private static final JsonNamingStrategy KebabCase = new JsonNamingStrategy() { // from class: kotlinx.serialization.json.JsonNamingStrategy$Builtins$KebabCase$1
            @Override // kotlinx.serialization.json.JsonNamingStrategy
            public String serialNameForJson(SerialDescriptor descriptor, int i10, String serialName) {
                r.e(descriptor, "descriptor");
                r.e(serialName, "serialName");
                return JsonNamingStrategy.Builtins.$$INSTANCE.convertCamelCase(serialName, '-');
            }

            public String toString() {
                return "kotlinx.serialization.json.JsonNamingStrategy.KebabCase";
            }
        };

        private Builtins() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String convertCamelCase(String str, char c10) {
            StringBuilder sb = new StringBuilder(str.length() * 2);
            Character chValueOf = null;
            int i10 = 0;
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (Character.isUpperCase(cCharAt)) {
                    if (i10 == 0 && sb.length() > 0 && kotlin.text.r.T0(sb) != c10) {
                        sb.append(c10);
                    }
                    if (chValueOf != null) {
                        sb.append(chValueOf.charValue());
                    }
                    i10++;
                    chValueOf = Character.valueOf(Character.toLowerCase(cCharAt));
                } else {
                    if (chValueOf != null) {
                        if (i10 > 1 && Character.isLetter(cCharAt)) {
                            sb.append(c10);
                        }
                        sb.append(chValueOf.charValue());
                        chValueOf = null;
                        i10 = 0;
                    }
                    sb.append(cCharAt);
                }
            }
            if (chValueOf != null) {
                sb.append(chValueOf.charValue());
            }
            String string = sb.toString();
            r.d(string, "toString(...)");
            return string;
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getKebabCase$annotations() {
        }

        @ExperimentalSerializationApi
        public static /* synthetic */ void getSnakeCase$annotations() {
        }

        public final JsonNamingStrategy getKebabCase() {
            return KebabCase;
        }

        public final JsonNamingStrategy getSnakeCase() {
            return SnakeCase;
        }
    }

    String serialNameForJson(SerialDescriptor serialDescriptor, int i10, String str);
}
