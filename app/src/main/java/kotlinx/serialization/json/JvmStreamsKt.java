package kotlinx.serialization.json;

import c9.j;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.internal.JavaStreamSerialReader;
import kotlinx.serialization.json.internal.JsonStreamsKt;
import kotlinx.serialization.json.internal.JsonToJavaStreamWriter;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class JvmStreamsKt {
    @ExperimentalSerializationApi
    public static final <T> T decodeFromStream(Json json, DeserializationStrategy<? extends T> deserializer, InputStream stream) {
        r.e(json, "<this>");
        r.e(deserializer, "deserializer");
        r.e(stream, "stream");
        JavaStreamSerialReader javaStreamSerialReader = new JavaStreamSerialReader(stream);
        try {
            return (T) JsonStreamsKt.decodeByReader(json, deserializer, javaStreamSerialReader);
        } finally {
            javaStreamSerialReader.release();
        }
    }

    @ExperimentalSerializationApi
    public static final <T> kotlin.sequences.f decodeToSequence(Json json, InputStream stream, DeserializationStrategy<? extends T> deserializer, DecodeSequenceMode format) {
        r.e(json, "<this>");
        r.e(stream, "stream");
        r.e(deserializer, "deserializer");
        r.e(format, "format");
        return JsonStreamsKt.decodeToSequenceByReader(json, new JavaStreamSerialReader(stream), deserializer, format);
    }

    public static /* synthetic */ kotlin.sequences.f decodeToSequence$default(Json json, InputStream inputStream, DeserializationStrategy deserializationStrategy, DecodeSequenceMode decodeSequenceMode, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            decodeSequenceMode = DecodeSequenceMode.AUTO_DETECT;
        }
        return decodeToSequence(json, inputStream, deserializationStrategy, decodeSequenceMode);
    }

    @ExperimentalSerializationApi
    public static final <T> void encodeToStream(Json json, SerializationStrategy<? super T> serializer, T t10, OutputStream stream) throws IOException {
        r.e(json, "<this>");
        r.e(serializer, "serializer");
        r.e(stream, "stream");
        JsonToJavaStreamWriter jsonToJavaStreamWriter = new JsonToJavaStreamWriter(stream);
        try {
            JsonStreamsKt.encodeByWriter(json, jsonToJavaStreamWriter, serializer, t10);
        } finally {
            jsonToJavaStreamWriter.release();
        }
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> kotlin.sequences.f decodeToSequence(Json json, InputStream stream, DecodeSequenceMode format) {
        r.e(json, "<this>");
        r.e(stream, "stream");
        r.e(format, "format");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return decodeToSequence(json, stream, SerializersKt.serializer(serializersModule, (j) null), format);
    }

    public static /* synthetic */ kotlin.sequences.f decodeToSequence$default(Json json, InputStream stream, DecodeSequenceMode format, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            format = DecodeSequenceMode.AUTO_DETECT;
        }
        r.e(json, "<this>");
        r.e(stream, "stream");
        r.e(format, "format");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return decodeToSequence(json, stream, SerializersKt.serializer(serializersModule, (j) null), format);
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> T decodeFromStream(Json json, InputStream stream) {
        r.e(json, "<this>");
        r.e(stream, "stream");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (T) decodeFromStream(json, SerializersKt.serializer(serializersModule, (j) null), stream);
    }

    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> void encodeToStream(Json json, T t10, OutputStream stream) throws IOException {
        r.e(json, "<this>");
        r.e(stream, "stream");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        encodeToStream(json, SerializersKt.serializer(serializersModule, (j) null), t10, stream);
    }
}
