package kotlinx.serialization;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.o;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import n8.q;
import n8.v;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SerializersKt__SerializersKt {
    private static final KSerializer<? extends Object> builtinParametrizedSerializer$SerializersKt__SerializersKt(c9.c cVar, List<? extends KSerializer<Object>> list, w8.a aVar) {
        if (r.a(cVar, d0.b(Collection.class)) || r.a(cVar, d0.b(List.class)) || r.a(cVar, d0.b(List.class)) || r.a(cVar, d0.b(ArrayList.class))) {
            return new ArrayListSerializer(list.get(0));
        }
        if (r.a(cVar, d0.b(HashSet.class))) {
            return new HashSetSerializer(list.get(0));
        }
        if (r.a(cVar, d0.b(Set.class)) || r.a(cVar, d0.b(Set.class)) || r.a(cVar, d0.b(LinkedHashSet.class))) {
            return new LinkedHashSetSerializer(list.get(0));
        }
        if (r.a(cVar, d0.b(HashMap.class))) {
            return new HashMapSerializer(list.get(0), list.get(1));
        }
        if (r.a(cVar, d0.b(Map.class)) || r.a(cVar, d0.b(Map.class)) || r.a(cVar, d0.b(LinkedHashMap.class))) {
            return new LinkedHashMapSerializer(list.get(0), list.get(1));
        }
        if (r.a(cVar, d0.b(Map.Entry.class))) {
            return BuiltinSerializersKt.MapEntrySerializer(list.get(0), list.get(1));
        }
        if (r.a(cVar, d0.b(q.class))) {
            return BuiltinSerializersKt.PairSerializer(list.get(0), list.get(1));
        }
        if (r.a(cVar, d0.b(v.class))) {
            return BuiltinSerializersKt.TripleSerializer(list.get(0), list.get(1), list.get(2));
        }
        if (!PlatformKt.isReferenceArray(cVar)) {
            return null;
        }
        Object objMo8invoke = aVar.mo8invoke();
        r.c(objMo8invoke, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
        return BuiltinSerializersKt.ArraySerializer((c9.c) objMo8invoke, list.get(0));
    }

    private static final KSerializer<? extends Object> compiledParametrizedSerializer$SerializersKt__SerializersKt(c9.c cVar, List<? extends KSerializer<Object>> list) {
        KSerializer[] kSerializerArr = (KSerializer[]) list.toArray(new KSerializer[0]);
        return PlatformKt.constructSerializerForGivenTypeArgs(cVar, (KSerializer<Object>[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule module, c9.c kClass) {
        r.e(module, "module");
        r.e(kClass, "kClass");
        KSerializer<?> contextual$default = SerializersModule.getContextual$default(module, kClass, null, 2, null);
        return contextual$default == null ? new PolymorphicSerializer(kClass) : contextual$default;
    }

    public static final KSerializer<?> noCompiledSerializer(String forClass) {
        r.e(forClass, "forClass");
        throw new SerializationException(Platform_commonKt.notRegisteredMessage(forClass));
    }

    private static final <T> KSerializer<T> nullable$SerializersKt__SerializersKt(KSerializer<T> kSerializer, boolean z10) {
        if (z10) {
            return BuiltinSerializersKt.getNullable(kSerializer);
        }
        r.c(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
        return kSerializer;
    }

    public static final KSerializer<? extends Object> parametrizedSerializerOrNull(c9.c cVar, List<? extends KSerializer<Object>> serializers, w8.a elementClassifierIfArray) {
        r.e(cVar, "<this>");
        r.e(serializers, "serializers");
        r.e(elementClassifierIfArray, "elementClassifierIfArray");
        KSerializer<? extends Object> kSerializerBuiltinParametrizedSerializer$SerializersKt__SerializersKt = builtinParametrizedSerializer$SerializersKt__SerializersKt(cVar, serializers, elementClassifierIfArray);
        return kSerializerBuiltinParametrizedSerializer$SerializersKt__SerializersKt == null ? compiledParametrizedSerializer$SerializersKt__SerializersKt(cVar, serializers) : kSerializerBuiltinParametrizedSerializer$SerializersKt__SerializersKt;
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer() {
        r.i(6, "T");
        KSerializer<T> kSerializer = (KSerializer<T>) SerializersKt.serializer((c9.j) null);
        r.c(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return kSerializer;
    }

    private static final KSerializer<Object> serializerByKClassImpl$SerializersKt__SerializersKt(SerializersModule serializersModule, c9.c cVar, List<? extends KSerializer<Object>> list, boolean z10) {
        KSerializer<? extends Object> contextual;
        if (list.isEmpty()) {
            contextual = SerializersKt.serializerOrNull(cVar);
            if (contextual == null) {
                contextual = SerializersModule.getContextual$default(serializersModule, cVar, null, 2, null);
            }
        } else {
            try {
                KSerializer<? extends Object> kSerializerParametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(cVar, list, new w8.a() { // from class: kotlinx.serialization.m
                    @Override // w8.a
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo8invoke() {
                        return SerializersKt__SerializersKt.serializerByKClassImpl$lambda$1$SerializersKt__SerializersKt();
                    }
                });
                contextual = kSerializerParametrizedSerializerOrNull == null ? serializersModule.getContextual(cVar, list) : kSerializerParametrizedSerializerOrNull;
            } catch (IndexOutOfBoundsException e10) {
                throw new SerializationException("Unable to retrieve a serializer, the number of passed type serializers differs from the actual number of generic parameters", e10);
            }
        }
        if (contextual != null) {
            return nullable$SerializersKt__SerializersKt(contextual, z10);
        }
        return null;
    }

    public static final c9.e serializerByKClassImpl$lambda$1$SerializersKt__SerializersKt() {
        throw new SerializationException("It is not possible to retrieve an array serializer using KClass alone, use KType instead or ArraySerializer factory");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final kotlinx.serialization.KSerializer<java.lang.Object> serializerByKTypeImpl$SerializersKt__SerializersKt(kotlinx.serialization.modules.SerializersModule r6, c9.j r7, boolean r8) {
        /*
            c9.c r0 = kotlinx.serialization.internal.Platform_commonKt.kclass(r7)
            boolean r1 = r7.isMarkedNullable()
            java.util.List r7 = r7.getArguments()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.o.r(r7, r3)
            r2.<init>(r3)
            java.util.Iterator r7 = r7.iterator()
        L1b:
            boolean r3 = r7.hasNext()
            r4 = 0
            if (r3 == 0) goto L31
            java.lang.Object r3 = r7.next()
            androidx.appcompat.app.t.a(r3)
            c9.j r3 = kotlinx.serialization.internal.Platform_commonKt.typeOrThrow(r4)
            r2.add(r3)
            goto L1b
        L31:
            boolean r7 = r2.isEmpty()
            r3 = 2
            if (r7 == 0) goto L4b
            boolean r7 = kotlinx.serialization.internal.PlatformKt.isInterface(r0)
            if (r7 == 0) goto L46
            kotlinx.serialization.KSerializer r7 = kotlinx.serialization.modules.SerializersModule.getContextual$default(r6, r0, r4, r3, r4)
            if (r7 == 0) goto L46
        L44:
            r7 = r4
            goto L5f
        L46:
            kotlinx.serialization.KSerializer r7 = kotlinx.serialization.SerializersCacheKt.findCachedSerializer(r0, r1)
            goto L5f
        L4b:
            boolean r7 = r6.getHasInterfaceContextualSerializers$kotlinx_serialization_core()
            if (r7 == 0) goto L52
            goto L44
        L52:
            java.lang.Object r7 = kotlinx.serialization.SerializersCacheKt.findParametrizedCachedSerializer(r0, r2, r1)
            boolean r5 = n8.r.m65isFailureimpl(r7)
            if (r5 == 0) goto L5d
            r7 = r4
        L5d:
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7
        L5f:
            if (r7 == 0) goto L62
            return r7
        L62:
            boolean r7 = r2.isEmpty()
            if (r7 == 0) goto L83
            kotlinx.serialization.KSerializer r7 = kotlinx.serialization.SerializersKt.serializerOrNull(r0)
            if (r7 != 0) goto La8
            kotlinx.serialization.KSerializer r7 = kotlinx.serialization.modules.SerializersModule.getContextual$default(r6, r0, r4, r3, r4)
            if (r7 != 0) goto La8
            boolean r6 = kotlinx.serialization.internal.PlatformKt.isInterface(r0)
            if (r6 == 0) goto L81
            kotlinx.serialization.PolymorphicSerializer r6 = new kotlinx.serialization.PolymorphicSerializer
            r6.<init>(r0)
        L7f:
            r7 = r6
            goto La8
        L81:
            r7 = r4
            goto La8
        L83:
            java.util.List r7 = kotlinx.serialization.SerializersKt.serializersForParameters(r6, r2, r8)
            if (r7 != 0) goto L8a
            return r4
        L8a:
            kotlinx.serialization.n r8 = new kotlinx.serialization.n
            r8.<init>()
            kotlinx.serialization.KSerializer r8 = kotlinx.serialization.SerializersKt.parametrizedSerializerOrNull(r0, r7, r8)
            if (r8 != 0) goto La7
            kotlinx.serialization.KSerializer r7 = r6.getContextual(r0, r7)
            if (r7 != 0) goto La8
            boolean r6 = kotlinx.serialization.internal.PlatformKt.isInterface(r0)
            if (r6 == 0) goto L81
            kotlinx.serialization.PolymorphicSerializer r6 = new kotlinx.serialization.PolymorphicSerializer
            r6.<init>(r0)
            goto L7f
        La7:
            r7 = r8
        La8:
            if (r7 == 0) goto Lae
            kotlinx.serialization.KSerializer r4 = nullable$SerializersKt__SerializersKt(r7, r1)
        Lae:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.SerializersKt__SerializersKt.serializerByKTypeImpl$SerializersKt__SerializersKt(kotlinx.serialization.modules.SerializersModule, c9.j, boolean):kotlinx.serialization.KSerializer");
    }

    public static final c9.e serializerByKTypeImpl$lambda$0$SerializersKt__SerializersKt(List list) {
        return ((c9.j) list.get(0)).getClassifier();
    }

    public static final KSerializer<Object> serializerOrNull(c9.j type) {
        r.e(type, "type");
        return SerializersKt.serializerOrNull(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    public static final List<KSerializer<Object>> serializersForParameters(SerializersModule serializersModule, List<? extends c9.j> typeArguments, boolean z10) {
        ArrayList arrayList;
        r.e(serializersModule, "<this>");
        r.e(typeArguments, "typeArguments");
        if (z10) {
            arrayList = new ArrayList(o.r(typeArguments, 10));
            Iterator<T> it = typeArguments.iterator();
            while (it.hasNext()) {
                arrayList.add(SerializersKt.serializer(serializersModule, (c9.j) it.next()));
            }
        } else {
            arrayList = new ArrayList(o.r(typeArguments, 10));
            Iterator<T> it2 = typeArguments.iterator();
            while (it2.hasNext()) {
                KSerializer<Object> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, (c9.j) it2.next());
                if (kSerializerSerializerOrNull == null) {
                    return null;
                }
                arrayList.add(kSerializerSerializerOrNull);
            }
        }
        return arrayList;
    }

    public static final KSerializer<?> moduleThenPolymorphic(SerializersModule module, c9.c kClass, KSerializer<?>[] argSerializers) {
        r.e(module, "module");
        r.e(kClass, "kClass");
        r.e(argSerializers, "argSerializers");
        KSerializer<?> contextual = module.getContextual(kClass, kotlin.collections.i.f(argSerializers));
        return contextual == null ? new PolymorphicSerializer(kClass) : contextual;
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule module, c9.c kClass) {
        r.e(module, "module");
        r.e(kClass, "kClass");
        KSerializer<?> contextual$default = SerializersModule.getContextual$default(module, kClass, null, 2, null);
        if (contextual$default != null) {
            return contextual$default;
        }
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new n8.i();
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, c9.j type) {
        r.e(serializersModule, "<this>");
        r.e(type, "type");
        return serializerByKTypeImpl$SerializersKt__SerializersKt(serializersModule, type, false);
    }

    public static final KSerializer<?> noCompiledSerializer(SerializersModule module, c9.c kClass, KSerializer<?>[] argSerializers) {
        r.e(module, "module");
        r.e(kClass, "kClass");
        r.e(argSerializers, "argSerializers");
        KSerializer<?> contextual = module.getContextual(kClass, kotlin.collections.i.f(argSerializers));
        if (contextual != null) {
            return contextual;
        }
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new n8.i();
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer(SerializersModule serializersModule) {
        r.e(serializersModule, "<this>");
        r.i(6, "T");
        KSerializer<T> kSerializer = (KSerializer<T>) SerializersKt.serializer(serializersModule, (c9.j) null);
        r.c(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return kSerializer;
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializerOrNull(c9.c cVar) {
        r.e(cVar, "<this>");
        KSerializer<T> kSerializerCompiledSerializerImpl = PlatformKt.compiledSerializerImpl(cVar);
        return kSerializerCompiledSerializerImpl == null ? PrimitivesKt.builtinSerializerOrNull(cVar) : kSerializerCompiledSerializerImpl;
    }

    public static final KSerializer<Object> serializer(c9.j type) {
        r.e(type, "type");
        return SerializersKt.serializer(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(c9.c kClass, List<? extends KSerializer<?>> typeArgumentsSerializers, boolean z10) {
        r.e(kClass, "kClass");
        r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
        return SerializersKt.serializer(SerializersModuleBuildersKt.EmptySerializersModule(), kClass, typeArgumentsSerializers, z10);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, c9.j type) {
        r.e(serializersModule, "<this>");
        r.e(type, "type");
        KSerializer<Object> kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt = serializerByKTypeImpl$SerializersKt__SerializersKt(serializersModule, type, true);
        if (kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt != null) {
            return kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt;
        }
        PlatformKt.platformSpecificSerializerNotRegistered(Platform_commonKt.kclass(type));
        throw new n8.i();
    }

    @ExperimentalSerializationApi
    public static final KSerializer<Object> serializer(SerializersModule serializersModule, c9.c kClass, List<? extends KSerializer<?>> typeArgumentsSerializers, boolean z10) {
        r.e(serializersModule, "<this>");
        r.e(kClass, "kClass");
        r.e(typeArgumentsSerializers, "typeArgumentsSerializers");
        KSerializer<Object> kSerializerSerializerByKClassImpl$SerializersKt__SerializersKt = serializerByKClassImpl$SerializersKt__SerializersKt(serializersModule, kClass, typeArgumentsSerializers, z10);
        if (kSerializerSerializerByKClassImpl$SerializersKt__SerializersKt != null) {
            return kSerializerSerializerByKClassImpl$SerializersKt__SerializersKt;
        }
        PlatformKt.platformSpecificSerializerNotRegistered(kClass);
        throw new n8.i();
    }

    @InternalSerializationApi
    public static final <T> KSerializer<T> serializer(c9.c cVar) {
        r.e(cVar, "<this>");
        KSerializer<T> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(cVar);
        if (kSerializerSerializerOrNull != null) {
            return kSerializerSerializerOrNull;
        }
        Platform_commonKt.serializerNotRegistered(cVar);
        throw new n8.i();
    }
}
