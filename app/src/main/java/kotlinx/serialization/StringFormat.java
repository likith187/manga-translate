package kotlinx.serialization;

/* JADX INFO: loaded from: classes2.dex */
public interface StringFormat extends SerialFormat {
    <T> T decodeFromString(DeserializationStrategy<? extends T> deserializationStrategy, String str);

    <T> String encodeToString(SerializationStrategy<? super T> serializationStrategy, T t10);
}
