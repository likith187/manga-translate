package kotlinx.serialization;

import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.internal.InternalHexConverter;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class SerialFormatKt {
    public static final /* synthetic */ <T> T decodeFromByteArray(BinaryFormat binaryFormat, byte[] bytes) {
        r.e(binaryFormat, "<this>");
        r.e(bytes, "bytes");
        SerializersModule serializersModule = binaryFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (T) binaryFormat.decodeFromByteArray(SerializersKt.serializer(serializersModule, (c9.j) null), bytes);
    }

    public static final <T> T decodeFromHexString(BinaryFormat binaryFormat, DeserializationStrategy<? extends T> deserializer, String hex) {
        r.e(binaryFormat, "<this>");
        r.e(deserializer, "deserializer");
        r.e(hex, "hex");
        return (T) binaryFormat.decodeFromByteArray(deserializer, InternalHexConverter.INSTANCE.parseHexBinary(hex));
    }

    public static final /* synthetic */ <T> T decodeFromString(StringFormat stringFormat, String string) {
        r.e(stringFormat, "<this>");
        r.e(string, "string");
        SerializersModule serializersModule = stringFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (T) stringFormat.decodeFromString(SerializersKt.serializer(serializersModule, (c9.j) null), string);
    }

    public static final /* synthetic */ <T> byte[] encodeToByteArray(BinaryFormat binaryFormat, T t10) {
        r.e(binaryFormat, "<this>");
        SerializersModule serializersModule = binaryFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return binaryFormat.encodeToByteArray(SerializersKt.serializer(serializersModule, (c9.j) null), t10);
    }

    public static final <T> String encodeToHexString(BinaryFormat binaryFormat, SerializationStrategy<? super T> serializer, T t10) {
        r.e(binaryFormat, "<this>");
        r.e(serializer, "serializer");
        return InternalHexConverter.INSTANCE.printHexBinary(binaryFormat.encodeToByteArray(serializer, t10), true);
    }

    public static final /* synthetic */ <T> String encodeToString(StringFormat stringFormat, T t10) {
        r.e(stringFormat, "<this>");
        SerializersModule serializersModule = stringFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return stringFormat.encodeToString(SerializersKt.serializer(serializersModule, (c9.j) null), t10);
    }

    public static final /* synthetic */ <T> T decodeFromHexString(BinaryFormat binaryFormat, String hex) {
        r.e(binaryFormat, "<this>");
        r.e(hex, "hex");
        SerializersModule serializersModule = binaryFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (T) decodeFromHexString(binaryFormat, SerializersKt.serializer(serializersModule, (c9.j) null), hex);
    }

    public static final /* synthetic */ <T> String encodeToHexString(BinaryFormat binaryFormat, T t10) {
        r.e(binaryFormat, "<this>");
        SerializersModule serializersModule = binaryFormat.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return encodeToHexString(binaryFormat, SerializersKt.serializer(serializersModule, (c9.j) null), t10);
    }
}
