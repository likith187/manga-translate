package kotlinx.serialization;

import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.u;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializersKt {
    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule serializersModule, c9.c cVar) {
        return SerializersKt__SerializersKt.moduleThenPolymorphic(serializersModule, cVar);
    }

    public static final KSerializer<?> noCompiledSerializer(String str) {
        return SerializersKt__SerializersKt.noCompiledSerializer(str);
    }

    public static final KSerializer<? extends Object> parametrizedSerializerOrNull(c9.c cVar, List<? extends KSerializer<Object>> list, w8.a aVar) {
        return SerializersKt__SerializersKt.parametrizedSerializerOrNull(cVar, list, aVar);
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer() {
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.simple");
        return (KSerializer<T>) serializer((c9.j) null);
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializerOrNull(c9.c cVar) {
        return SerializersKt__SerializersKt.serializerOrNull(cVar);
    }

    public static final List<KSerializer<Object>> serializersForParameters(SerializersModule serializersModule, List<? extends c9.j> list, boolean z10) {
        return SerializersKt__SerializersKt.serializersForParameters(serializersModule, list, z10);
    }

    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule serializersModule, c9.c cVar, KSerializer<?>[] kSerializerArr) {
        return SerializersKt__SerializersKt.moduleThenPolymorphic(serializersModule, cVar, kSerializerArr);
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule serializersModule, c9.c cVar) {
        return SerializersKt__SerializersKt.noCompiledSerializer(serializersModule, cVar);
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializer(c9.c cVar) {
        return SerializersKt__SerializersKt.serializer(cVar);
    }

    public static final KSerializer<Object> serializerOrNull(c9.j jVar) {
        return SerializersKt__SerializersKt.serializerOrNull(jVar);
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule serializersModule, c9.c cVar, KSerializer<?>[] kSerializerArr) {
        return SerializersKt__SerializersKt.noCompiledSerializer(serializersModule, cVar, kSerializerArr);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(c9.c cVar, List<? extends KSerializer<?>> list, boolean z10) {
        return SerializersKt__SerializersKt.serializer(cVar, list, z10);
    }

    public static final KSerializer<Object> serializerOrNull(Type type) {
        return SerializersKt__SerializersJvmKt.serializerOrNull(type);
    }

    public static final KSerializer<Object> serializer(c9.j jVar) {
        return SerializersKt__SerializersKt.serializer(jVar);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, c9.j jVar) {
        return SerializersKt__SerializersKt.serializerOrNull(serializersModule, jVar);
    }

    public static final KSerializer<Object> serializer(Type type) {
        return SerializersKt__SerializersJvmKt.serializer(type);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializerOrNull(serializersModule, type);
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer(SerializersModule serializersModule) {
        r.i(6, "T");
        u.a("kotlinx.serialization.serializer.withModule");
        return (KSerializer<T>) serializer(serializersModule, (c9.j) null);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(SerializersModule serializersModule, c9.c cVar, List<? extends KSerializer<?>> list, boolean z10) {
        return SerializersKt__SerializersKt.serializer(serializersModule, cVar, list, z10);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, c9.j jVar) {
        return SerializersKt__SerializersKt.serializer(serializersModule, jVar);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializer(serializersModule, type);
    }
}
