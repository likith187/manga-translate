package kotlinx.serialization;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.o;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import n8.q;
import n8.v;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SerializersKt__SerializersJvmKt {
    private static final KSerializer<Object> genericArraySerializer$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, GenericArrayType genericArrayType, boolean z10) {
        KSerializer<Object> kSerializerSerializerOrNull;
        c9.c cVarC;
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (genericComponentType instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) genericComponentType).getUpperBounds();
            r.d(upperBounds, "getUpperBounds(...)");
            genericComponentType = (Type) kotlin.collections.i.D(upperBounds);
        }
        r.b(genericComponentType);
        if (z10) {
            kSerializerSerializerOrNull = SerializersKt.serializer(serializersModule, genericComponentType);
        } else {
            kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, genericComponentType);
            if (kSerializerSerializerOrNull == null) {
                return null;
            }
        }
        if (genericComponentType instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) genericComponentType).getRawType();
            r.c(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            cVarC = v8.a.c((Class) rawType);
        } else {
            if (!(genericComponentType instanceof c9.c)) {
                throw new IllegalStateException("unsupported type in GenericArray: " + d0.b(genericComponentType.getClass()));
            }
            cVarC = (c9.c) genericComponentType;
        }
        r.c(cVarC, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
        KSerializer<Object> kSerializerArraySerializer = BuiltinSerializersKt.ArraySerializer(cVarC, kSerializerSerializerOrNull);
        r.c(kSerializerArraySerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
        return kSerializerArraySerializer;
    }

    private static final Class<?> prettyClass$SerializersKt__SerializersJvmKt(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            r.d(rawType, "getRawType(...)");
            return prettyClass$SerializersKt__SerializersJvmKt(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            r.d(upperBounds, "getUpperBounds(...)");
            Object objD = kotlin.collections.i.D(upperBounds);
            r.d(objD, "first(...)");
            return prettyClass$SerializersKt__SerializersJvmKt((Type) objD);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            r.d(genericComponentType, "getGenericComponentType(...)");
            return prettyClass$SerializersKt__SerializersJvmKt(genericComponentType);
        }
        throw new IllegalArgumentException("type should be an instance of Class<?>, GenericArrayType, ParametrizedType or WildcardType, but actual argument " + type + " has type " + d0.b(type.getClass()));
    }

    private static final <T> KSerializer<T> reflectiveOrContextual$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, Class<T> cls, List<? extends KSerializer<Object>> list) throws IllegalAccessException, InvocationTargetException {
        KSerializer[] kSerializerArr = (KSerializer[]) list.toArray(new KSerializer[0]);
        KSerializer<T> kSerializerConstructSerializerForGivenTypeArgs = PlatformKt.constructSerializerForGivenTypeArgs(cls, (KSerializer<Object>[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        if (kSerializerConstructSerializerForGivenTypeArgs != null) {
            return kSerializerConstructSerializerForGivenTypeArgs;
        }
        c9.c cVarC = v8.a.c(cls);
        KSerializer<T> kSerializerBuiltinSerializerOrNull = PrimitivesKt.builtinSerializerOrNull(cVarC);
        if (kSerializerBuiltinSerializerOrNull != null) {
            return kSerializerBuiltinSerializerOrNull;
        }
        KSerializer<T> contextual = serializersModule.getContextual(cVarC, list);
        if (contextual != null) {
            return contextual;
        }
        if (cls.isInterface()) {
            return new PolymorphicSerializer(v8.a.c(cls));
        }
        return null;
    }

    public static final KSerializer<Object> serializer(Type type) {
        r.e(type, "type");
        return SerializersKt.serializer(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    private static final KSerializer<Object> serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, Type type, boolean z10) {
        ArrayList<KSerializer> arrayList;
        if (type instanceof GenericArrayType) {
            return genericArraySerializer$SerializersKt__SerializersJvmKt(serializersModule, (GenericArrayType) type, z10);
        }
        if (type instanceof Class) {
            return typeSerializer$SerializersKt__SerializersJvmKt(serializersModule, (Class) type, z10);
        }
        if (!(type instanceof ParameterizedType)) {
            if (type instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) type).getUpperBounds();
                r.d(upperBounds, "getUpperBounds(...)");
                Object objD = kotlin.collections.i.D(upperBounds);
                r.d(objD, "first(...)");
                return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt$default(serializersModule, (Type) objD, false, 2, null);
            }
            throw new IllegalArgumentException("type should be an instance of Class<?>, GenericArrayType, ParametrizedType or WildcardType, but actual argument " + type + " has type " + d0.b(type.getClass()));
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type rawType = parameterizedType.getRawType();
        r.c(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
        Class cls = (Class) rawType;
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        r.b(actualTypeArguments);
        if (z10) {
            arrayList = new ArrayList(actualTypeArguments.length);
            for (Type type2 : actualTypeArguments) {
                r.b(type2);
                arrayList.add(SerializersKt.serializer(serializersModule, type2));
            }
        } else {
            arrayList = new ArrayList(actualTypeArguments.length);
            for (Type type3 : actualTypeArguments) {
                r.b(type3);
                KSerializer<Object> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, type3);
                if (kSerializerSerializerOrNull == null) {
                    return null;
                }
                arrayList.add(kSerializerSerializerOrNull);
            }
        }
        if (Set.class.isAssignableFrom(cls)) {
            KSerializer<Object> kSerializerSetSerializer = BuiltinSerializersKt.SetSerializer((KSerializer) arrayList.get(0));
            r.c(kSerializerSetSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerSetSerializer;
        }
        if (List.class.isAssignableFrom(cls) || Collection.class.isAssignableFrom(cls)) {
            KSerializer<Object> kSerializerListSerializer = BuiltinSerializersKt.ListSerializer((KSerializer) arrayList.get(0));
            r.c(kSerializerListSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerListSerializer;
        }
        if (Map.class.isAssignableFrom(cls)) {
            KSerializer<Object> kSerializerMapSerializer = BuiltinSerializersKt.MapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
            r.c(kSerializerMapSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerMapSerializer;
        }
        if (Map.Entry.class.isAssignableFrom(cls)) {
            KSerializer<Object> kSerializerMapEntrySerializer = BuiltinSerializersKt.MapEntrySerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
            r.c(kSerializerMapEntrySerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerMapEntrySerializer;
        }
        if (q.class.isAssignableFrom(cls)) {
            KSerializer<q> kSerializerPairSerializer = BuiltinSerializersKt.PairSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
            r.c(kSerializerPairSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerPairSerializer;
        }
        if (v.class.isAssignableFrom(cls)) {
            KSerializer<v> kSerializerTripleSerializer = BuiltinSerializersKt.TripleSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), (KSerializer) arrayList.get(2));
            r.c(kSerializerTripleSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
            return kSerializerTripleSerializer;
        }
        ArrayList arrayList2 = new ArrayList(o.r(arrayList, 10));
        for (KSerializer kSerializer : arrayList) {
            r.c(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any?>");
            arrayList2.add(kSerializer);
        }
        return reflectiveOrContextual$SerializersKt__SerializersJvmKt(serializersModule, cls, arrayList2);
    }

    static /* synthetic */ KSerializer serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt$default(SerializersModule serializersModule, Type type, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, z10);
    }

    public static final KSerializer<Object> serializerOrNull(Type type) {
        r.e(type, "type");
        return SerializersKt.serializerOrNull(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    private static final KSerializer<Object> typeSerializer$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, Class<?> cls, boolean z10) {
        KSerializer<Object> kSerializerSerializerOrNull;
        if (!cls.isArray() || cls.getComponentType().isPrimitive()) {
            r.c(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>");
            return reflectiveOrContextual$SerializersKt__SerializersJvmKt(serializersModule, cls, o.h());
        }
        Class<?> componentType = cls.getComponentType();
        r.d(componentType, "getComponentType(...)");
        if (z10) {
            kSerializerSerializerOrNull = SerializersKt.serializer(serializersModule, componentType);
        } else {
            kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, componentType);
            if (kSerializerSerializerOrNull == null) {
                return null;
            }
        }
        c9.c cVarC = v8.a.c(componentType);
        r.c(cVarC, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
        KSerializer<Object> kSerializerArraySerializer = BuiltinSerializersKt.ArraySerializer(cVarC, kSerializerSerializerOrNull);
        r.c(kSerializerArraySerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
        return kSerializerArraySerializer;
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, Type type) {
        r.e(serializersModule, "<this>");
        r.e(type, "type");
        KSerializer<Object> kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt = serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, true);
        if (kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt != null) {
            return kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt;
        }
        PlatformKt.serializerNotRegistered(prettyClass$SerializersKt__SerializersJvmKt(type));
        throw new n8.i();
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, Type type) {
        r.e(serializersModule, "<this>");
        r.e(type, "type");
        return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, false);
    }
}
