package kotlinx.serialization.internal;

import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
@InternalSerializationApi
public interface GeneratedSerializer<T> extends KSerializer<T> {

    public static final class DefaultImpls {
        public static <T> KSerializer<?>[] typeParametersSerializers(GeneratedSerializer<T> generatedSerializer) {
            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
        }
    }

    KSerializer<?>[] childSerializers();

    KSerializer<?>[] typeParametersSerializers();
}
