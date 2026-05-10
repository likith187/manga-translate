package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
final class CacheEntry<T> {
    public final KSerializer<T> serializer;

    public CacheEntry(KSerializer<T> kSerializer) {
        this.serializer = kSerializer;
    }
}
