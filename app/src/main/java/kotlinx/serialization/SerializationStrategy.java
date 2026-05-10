package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
public interface SerializationStrategy<T> {
    SerialDescriptor getDescriptor();

    void serialize(Encoder encoder, T t10);
}
