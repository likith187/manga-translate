package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: loaded from: classes2.dex */
public interface DeserializationStrategy<T> {
    T deserialize(Decoder decoder);

    SerialDescriptor getDescriptor();
}
