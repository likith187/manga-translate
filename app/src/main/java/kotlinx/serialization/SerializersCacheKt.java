package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializersCacheKt {
    private static final SerializerCache<? extends Object> SERIALIZERS_CACHE = CachingKt.createCache(new w8.l() { // from class: kotlinx.serialization.g
        @Override // w8.l
        public final Object invoke(Object obj) {
            return SerializersCacheKt.SERIALIZERS_CACHE$lambda$0((c9.c) obj);
        }
    });
    private static final SerializerCache<Object> SERIALIZERS_CACHE_NULLABLE = CachingKt.createCache(new w8.l() { // from class: kotlinx.serialization.h
        @Override // w8.l
        public final Object invoke(Object obj) {
            return SerializersCacheKt.SERIALIZERS_CACHE_NULLABLE$lambda$1((c9.c) obj);
        }
    });
    private static final ParametrizedSerializerCache<? extends Object> PARAMETRIZED_SERIALIZERS_CACHE = CachingKt.createParametrizedCache(new p() { // from class: kotlinx.serialization.i
        @Override // w8.p
        public final Object invoke(Object obj, Object obj2) {
            return SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE$lambda$3((c9.c) obj, (List) obj2);
        }
    });
    private static final ParametrizedSerializerCache<Object> PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = CachingKt.createParametrizedCache(new p() { // from class: kotlinx.serialization.j
        @Override // w8.p
        public final Object invoke(Object obj, Object obj2) {
            return SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5((c9.c) obj, (List) obj2);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer PARAMETRIZED_SERIALIZERS_CACHE$lambda$3(c9.c clazz, final List types) {
        r.e(clazz, "clazz");
        r.e(types, "types");
        List<KSerializer<Object>> listSerializersForParameters = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types, true);
        r.b(listSerializersForParameters);
        return SerializersKt.parametrizedSerializerOrNull(clazz, listSerializersForParameters, new w8.a() { // from class: kotlinx.serialization.k
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(types);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c9.e PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(List list) {
        return ((c9.j) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5(c9.c clazz, final List types) {
        KSerializer nullable;
        r.e(clazz, "clazz");
        r.e(types, "types");
        List<KSerializer<Object>> listSerializersForParameters = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types, true);
        r.b(listSerializersForParameters);
        KSerializer<? extends Object> kSerializerParametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(clazz, listSerializersForParameters, new w8.a() { // from class: kotlinx.serialization.l
            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Object mo8invoke() {
                return SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(types);
            }
        });
        if (kSerializerParametrizedSerializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(kSerializerParametrizedSerializerOrNull)) == null) {
            return null;
        }
        return nullable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c9.e PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(List list) {
        return ((c9.j) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer SERIALIZERS_CACHE$lambda$0(c9.c it) {
        r.e(it, "it");
        KSerializer kSerializerSerializerOrNull = SerializersKt.serializerOrNull(it);
        if (kSerializerSerializerOrNull != null) {
            return kSerializerSerializerOrNull;
        }
        if (PlatformKt.isInterface(it)) {
            return new PolymorphicSerializer(it);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer SERIALIZERS_CACHE_NULLABLE$lambda$1(c9.c it) {
        KSerializer nullable;
        r.e(it, "it");
        KSerializer kSerializerSerializerOrNull = SerializersKt.serializerOrNull(it);
        if (kSerializerSerializerOrNull == null) {
            kSerializerSerializerOrNull = PlatformKt.isInterface(it) ? new PolymorphicSerializer(it) : null;
        }
        if (kSerializerSerializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(kSerializerSerializerOrNull)) == null) {
            return null;
        }
        return nullable;
    }

    public static final KSerializer<Object> findCachedSerializer(c9.c clazz, boolean z10) {
        r.e(clazz, "clazz");
        if (z10) {
            return SERIALIZERS_CACHE_NULLABLE.get(clazz);
        }
        KSerializer<? extends Object> kSerializer = SERIALIZERS_CACHE.get(clazz);
        if (kSerializer != null) {
            return kSerializer;
        }
        return null;
    }

    public static final Object findParametrizedCachedSerializer(c9.c clazz, List<? extends c9.j> types, boolean z10) {
        r.e(clazz, "clazz");
        r.e(types, "types");
        return !z10 ? PARAMETRIZED_SERIALIZERS_CACHE.mo15getgIAlus(clazz, types) : PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE.mo15getgIAlus(clazz, types);
    }

    private static /* synthetic */ void getPARAMETRIZED_SERIALIZERS_CACHE$annotations() {
    }

    private static /* synthetic */ void getPARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$annotations() {
    }

    public static final SerializerCache<? extends Object> getSERIALIZERS_CACHE() {
        return SERIALIZERS_CACHE;
    }

    public static /* synthetic */ void getSERIALIZERS_CACHE$annotations() {
    }

    private static /* synthetic */ void getSERIALIZERS_CACHE_NULLABLE$annotations() {
    }

    public static final PolymorphicSerializer<? extends Object> polymorphicIfInterface(c9.c cVar) {
        r.e(cVar, "<this>");
        if (PlatformKt.isInterface(cVar)) {
            return new PolymorphicSerializer<>(cVar);
        }
        return null;
    }
}
