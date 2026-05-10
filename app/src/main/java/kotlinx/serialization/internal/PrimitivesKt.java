package kotlinx.serialization.internal;

import java.util.Map;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public final class PrimitivesKt {
    private static final Map<c9.c, KSerializer<?>> BUILTIN_SERIALIZERS = PlatformKt.initBuiltins();

    public static final SerialDescriptor PrimitiveDescriptorSafe(String serialName, PrimitiveKind kind) {
        r.e(serialName, "serialName");
        r.e(kind, "kind");
        checkName(serialName);
        return new PrimitiveSerialDescriptor(serialName, kind);
    }

    public static final <T> KSerializer<T> builtinSerializerOrNull(c9.c cVar) {
        r.e(cVar, "<this>");
        return (KSerializer) BUILTIN_SERIALIZERS.get(cVar);
    }

    private static final String capitalize(String str) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? kotlin.text.a.e(cCharAt) : String.valueOf(cCharAt)));
        String strSubstring = str.substring(1);
        r.d(strSubstring, "substring(...)");
        sb.append(strSubstring);
        return sb.toString();
    }

    private static final void checkName(String str) {
        for (KSerializer<?> kSerializer : BUILTIN_SERIALIZERS.values()) {
            if (r.a(str, kSerializer.getDescriptor().getSerialName())) {
                throw new IllegalArgumentException(kotlin.text.r.f("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exists " + d0.b(kSerializer.getClass()).c() + ".\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }
}
