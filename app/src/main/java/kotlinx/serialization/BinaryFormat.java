package kotlinx.serialization;

/* JADX INFO: loaded from: classes2.dex */
public interface BinaryFormat extends SerialFormat {
    <T> T decodeFromByteArray(DeserializationStrategy<? extends T> deserializationStrategy, byte[] bArr);

    <T> byte[] encodeToByteArray(SerializationStrategy<? super T> serializationStrategy, T t10);
}
