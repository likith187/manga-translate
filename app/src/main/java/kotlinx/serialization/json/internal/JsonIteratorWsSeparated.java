package kotlinx.serialization.json.internal;

import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
final class JsonIteratorWsSeparated<T> implements Iterator<T>, x8.a {
    private final DeserializationStrategy<T> deserializer;
    private final Json json;
    private final ReaderJsonLexer lexer;

    /* JADX WARN: Multi-variable type inference failed */
    public JsonIteratorWsSeparated(Json json, ReaderJsonLexer lexer, DeserializationStrategy<? extends T> deserializer) {
        r.e(json, "json");
        r.e(lexer, "lexer");
        r.e(deserializer, "deserializer");
        this.json = json;
        this.lexer = lexer;
        this.deserializer = deserializer;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.lexer.isNotEof();
    }

    @Override // java.util.Iterator
    public T next() {
        return (T) new StreamingJsonDecoder(this.json, WriteMode.OBJ, this.lexer, this.deserializer.getDescriptor(), null).decodeSerializableValue(this.deserializer);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
