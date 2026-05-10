package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.collections.q0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElementKt;
import n8.b0;
import n8.e0;
import n8.x;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
public final class StreamingJsonEncoderKt {
    private static final Set<SerialDescriptor> unsignedNumberDescriptors = q0.d(BuiltinSerializersKt.serializer(z.f14107b).getDescriptor(), BuiltinSerializersKt.serializer(b0.f14087b).getDescriptor(), BuiltinSerializersKt.serializer(x.f14102b).getDescriptor(), BuiltinSerializersKt.serializer(e0.f14096b).getDescriptor());

    public static final boolean isUnquotedLiteral(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return serialDescriptor.isInline() && r.a(serialDescriptor, JsonElementKt.getJsonUnquotedLiteralDescriptor());
    }

    public static final boolean isUnsignedNumber(SerialDescriptor serialDescriptor) {
        r.e(serialDescriptor, "<this>");
        return serialDescriptor.isInline() && unsignedNumberDescriptors.contains(serialDescriptor);
    }
}
