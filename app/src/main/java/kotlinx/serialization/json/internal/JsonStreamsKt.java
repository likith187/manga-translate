package kotlinx.serialization.json.internal;

import c9.j;
import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlin.sequences.f;
import kotlin.sequences.i;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.DecodeSequenceMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonStreamsKt {
    private static final int HIGH_SURROGATE_HEADER = 55232;
    private static final int LOW_SURROGATE_HEADER = 56320;
    private static final int SINGLE_CHAR_MAX_CODEPOINT = 65535;

    @JsonFriendModuleApi
    public static final <T> T decodeByReader(Json json, DeserializationStrategy<? extends T> deserializer, InternalJsonReader reader) {
        r.e(json, "json");
        r.e(deserializer, "deserializer");
        r.e(reader, "reader");
        ReaderJsonLexer readerJsonLexerReaderJsonLexer$default = ReaderJsonLexerKt.ReaderJsonLexer$default(json, reader, null, 4, null);
        try {
            T t10 = (T) new StreamingJsonDecoder(json, WriteMode.OBJ, readerJsonLexerReaderJsonLexer$default, deserializer.getDescriptor(), null).decodeSerializableValue(deserializer);
            readerJsonLexerReaderJsonLexer$default.expectEof();
            return t10;
        } finally {
            readerJsonLexerReaderJsonLexer$default.release();
        }
    }

    @JsonFriendModuleApi
    @ExperimentalSerializationApi
    public static final <T> f decodeToSequenceByReader(Json json, InternalJsonReader reader, DeserializationStrategy<? extends T> deserializer, DecodeSequenceMode format) {
        r.e(json, "json");
        r.e(reader, "reader");
        r.e(deserializer, "deserializer");
        r.e(format, "format");
        final Iterator itJsonIterator = JsonIteratorKt.JsonIterator(format, json, ReaderJsonLexerKt.ReaderJsonLexer(json, reader, new char[ReaderJsonLexerKt.BATCH_SIZE]), deserializer);
        return i.d(new f() { // from class: kotlinx.serialization.json.internal.JsonStreamsKt$decodeToSequenceByReader$$inlined$Sequence$1
            @Override // kotlin.sequences.f
            public Iterator<T> iterator() {
                return itJsonIterator;
            }
        });
    }

    public static /* synthetic */ f decodeToSequenceByReader$default(Json json, InternalJsonReader internalJsonReader, DeserializationStrategy deserializationStrategy, DecodeSequenceMode decodeSequenceMode, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            decodeSequenceMode = DecodeSequenceMode.AUTO_DETECT;
        }
        return decodeToSequenceByReader(json, internalJsonReader, deserializationStrategy, decodeSequenceMode);
    }

    @JsonFriendModuleApi
    public static final <T> void encodeByWriter(Json json, InternalJsonWriter writer, SerializationStrategy<? super T> serializer, T t10) {
        r.e(json, "json");
        r.e(writer, "writer");
        r.e(serializer, "serializer");
        new StreamingJsonEncoder(writer, json, WriteMode.OBJ, new JsonEncoder[WriteMode.getEntries().size()]).encodeSerializableValue(serializer, t10);
    }

    public static /* synthetic */ f decodeToSequenceByReader$default(Json json, InternalJsonReader reader, DecodeSequenceMode format, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            format = DecodeSequenceMode.AUTO_DETECT;
        }
        r.e(json, "json");
        r.e(reader, "reader");
        r.e(format, "format");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return decodeToSequenceByReader(json, reader, SerializersKt.serializer(serializersModule, (j) null), format);
    }

    @JsonFriendModuleApi
    @ExperimentalSerializationApi
    public static final /* synthetic */ <T> f decodeToSequenceByReader(Json json, InternalJsonReader reader, DecodeSequenceMode format) {
        r.e(json, "json");
        r.e(reader, "reader");
        r.e(format, "format");
        SerializersModule serializersModule = json.getSerializersModule();
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return decodeToSequenceByReader(json, reader, SerializersKt.serializer(serializersModule, (j) null), format);
    }
}
