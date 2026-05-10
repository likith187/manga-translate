package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
public interface SerializerFactory {
    KSerializer<?> serializer(KSerializer<?>... kSerializerArr);
}
