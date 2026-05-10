package kotlinx.serialization.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import n8.a0;
import n8.b0;
import n8.c0;
import n8.e0;
import n8.x;
import n8.y;
import n8.z;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformKt {
    private static final Object companionOrNull(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final <T> KSerializer<T> compiledSerializerImpl(c9.c cVar) {
        r.e(cVar, "<this>");
        return constructSerializerForGivenTypeArgs(cVar, (KSerializer<Object>[]) new KSerializer[0]);
    }

    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(c9.c cVar, KSerializer<Object>... args) {
        r.e(cVar, "<this>");
        r.e(args, "args");
        return constructSerializerForGivenTypeArgs(v8.a.a(cVar), (KSerializer<Object>[]) Arrays.copyOf(args, args.length));
    }

    private static final <T> KSerializer<T> createEnumSerializer(Class<T> cls) {
        T[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        r.d(canonicalName, "getCanonicalName(...)");
        r.c(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0034, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final <T> kotlinx.serialization.KSerializer<T> findInNamedCompanion(java.lang.Class<T> r7, kotlinx.serialization.KSerializer<java.lang.Object>... r8) {
        /*
            java.lang.Object r0 = findNamedCompanionByAnnotation(r7)
            if (r0 == 0) goto L14
            int r1 = r8.length
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r1)
            kotlinx.serialization.KSerializer[] r8 = (kotlinx.serialization.KSerializer[]) r8
            kotlinx.serialization.KSerializer r8 = invokeSerializerOnCompanion(r0, r8)
            if (r8 == 0) goto L14
            return r8
        L14:
            r8 = 0
            java.lang.Class[] r7 = r7.getDeclaredClasses()     // Catch: java.lang.NoSuchFieldException -> L55
            java.lang.String r0 = "getDeclaredClasses(...)"
            kotlin.jvm.internal.r.d(r7, r0)     // Catch: java.lang.NoSuchFieldException -> L55
            int r0 = r7.length     // Catch: java.lang.NoSuchFieldException -> L55
            r1 = 0
            r3 = r8
            r2 = r1
        L22:
            if (r1 >= r0) goto L3b
            r4 = r7[r1]     // Catch: java.lang.NoSuchFieldException -> L55
            java.lang.String r5 = r4.getSimpleName()     // Catch: java.lang.NoSuchFieldException -> L55
            java.lang.String r6 = "$serializer"
            boolean r5 = kotlin.jvm.internal.r.a(r5, r6)     // Catch: java.lang.NoSuchFieldException -> L55
            if (r5 == 0) goto L38
            if (r2 == 0) goto L36
        L34:
            r3 = r8
            goto L3e
        L36:
            r2 = 1
            r3 = r4
        L38:
            int r1 = r1 + 1
            goto L22
        L3b:
            if (r2 != 0) goto L3e
            goto L34
        L3e:
            if (r3 == 0) goto L4d
            java.lang.String r7 = "INSTANCE"
            java.lang.reflect.Field r7 = r3.getField(r7)     // Catch: java.lang.NoSuchFieldException -> L55
            if (r7 == 0) goto L4d
            java.lang.Object r7 = r7.get(r8)     // Catch: java.lang.NoSuchFieldException -> L55
            goto L4e
        L4d:
            r7 = r8
        L4e:
            boolean r0 = r7 instanceof kotlinx.serialization.KSerializer     // Catch: java.lang.NoSuchFieldException -> L55
            if (r0 == 0) goto L55
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7     // Catch: java.lang.NoSuchFieldException -> L55
            r8 = r7
        L55:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.PlatformKt.findInNamedCompanion(java.lang.Class, kotlinx.serialization.KSerializer[]):kotlinx.serialization.KSerializer");
    }

    private static final <T> Object findNamedCompanionByAnnotation(Class<T> cls) {
        Class<?> cls2;
        Class<?>[] declaredClasses = cls.getDeclaredClasses();
        r.d(declaredClasses, "getDeclaredClasses(...)");
        int length = declaredClasses.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                cls2 = null;
                break;
            }
            cls2 = declaredClasses[i10];
            if (cls2.getAnnotation(NamedCompanion.class) != null) {
                break;
            }
            i10++;
        }
        if (cls2 == null) {
            return null;
        }
        String simpleName = cls2.getSimpleName();
        r.d(simpleName, "getSimpleName(...)");
        return companionOrNull(cls, simpleName);
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0096, code lost:
    
        r5 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final <T> kotlinx.serialization.KSerializer<T> findObjectSerializer(java.lang.Class<T> r11) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            java.lang.String r0 = r11.getCanonicalName()
            r1 = 0
            if (r0 == 0) goto Lae
            java.lang.String r2 = "java."
            r3 = 0
            r4 = 2
            boolean r2 = kotlin.text.r.F(r0, r2, r3, r4, r1)
            if (r2 != 0) goto Lae
            java.lang.String r2 = "kotlin."
            boolean r0 = kotlin.text.r.F(r0, r2, r3, r4, r1)
            if (r0 == 0) goto L1b
            goto Lae
        L1b:
            java.lang.reflect.Field[] r0 = r11.getDeclaredFields()
            java.lang.String r2 = "getDeclaredFields(...)"
            kotlin.jvm.internal.r.d(r0, r2)
            int r2 = r0.length
            r6 = r1
            r4 = r3
            r5 = r4
        L28:
            r7 = 1
            if (r4 >= r2) goto L56
            r8 = r0[r4]
            java.lang.String r9 = r8.getName()
            java.lang.String r10 = "INSTANCE"
            boolean r9 = kotlin.jvm.internal.r.a(r9, r10)
            if (r9 == 0) goto L53
            java.lang.Class r9 = r8.getType()
            boolean r9 = kotlin.jvm.internal.r.a(r9, r11)
            if (r9 == 0) goto L53
            int r9 = r8.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isStatic(r9)
            if (r9 == 0) goto L53
            if (r5 == 0) goto L51
        L4f:
            r6 = r1
            goto L59
        L51:
            r5 = r7
            r6 = r8
        L53:
            int r4 = r4 + 1
            goto L28
        L56:
            if (r5 != 0) goto L59
            goto L4f
        L59:
            if (r6 != 0) goto L5c
            return r1
        L5c:
            java.lang.Object r0 = r6.get(r1)
            java.lang.reflect.Method[] r11 = r11.getMethods()
            java.lang.String r2 = "getMethods(...)"
            kotlin.jvm.internal.r.d(r11, r2)
            int r2 = r11.length
            r5 = r1
            r4 = r3
        L6c:
            if (r3 >= r2) goto L9d
            r6 = r11[r3]
            java.lang.String r8 = r6.getName()
            java.lang.String r9 = "serializer"
            boolean r8 = kotlin.jvm.internal.r.a(r8, r9)
            if (r8 == 0) goto L9a
            java.lang.Class[] r8 = r6.getParameterTypes()
            java.lang.String r9 = "getParameterTypes(...)"
            kotlin.jvm.internal.r.d(r8, r9)
            int r8 = r8.length
            if (r8 != 0) goto L9a
            java.lang.Class r8 = r6.getReturnType()
            java.lang.Class<kotlinx.serialization.KSerializer> r9 = kotlinx.serialization.KSerializer.class
            boolean r8 = kotlin.jvm.internal.r.a(r8, r9)
            if (r8 == 0) goto L9a
            if (r4 == 0) goto L98
        L96:
            r5 = r1
            goto La0
        L98:
            r5 = r6
            r4 = r7
        L9a:
            int r3 = r3 + 1
            goto L6c
        L9d:
            if (r4 != 0) goto La0
            goto L96
        La0:
            if (r5 != 0) goto La3
            return r1
        La3:
            java.lang.Object r11 = r5.invoke(r0, r1)
            boolean r0 = r11 instanceof kotlinx.serialization.KSerializer
            if (r0 == 0) goto Lae
            r1 = r11
            kotlinx.serialization.KSerializer r1 = (kotlinx.serialization.KSerializer) r1
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.PlatformKt.findObjectSerializer(java.lang.Class):kotlinx.serialization.KSerializer");
    }

    public static final <T> T getChecked(T[] tArr, int i10) {
        r.e(tArr, "<this>");
        return tArr[i10];
    }

    public static final Map<c9.c, KSerializer<?>> initBuiltins() {
        Map mapC = j0.c();
        mapC.put(d0.b(String.class), BuiltinSerializersKt.serializer(h0.INSTANCE));
        mapC.put(d0.b(Character.TYPE), BuiltinSerializersKt.serializer(kotlin.jvm.internal.f.INSTANCE));
        mapC.put(d0.b(char[].class), BuiltinSerializersKt.CharArraySerializer());
        mapC.put(d0.b(Double.TYPE), BuiltinSerializersKt.serializer(kotlin.jvm.internal.j.INSTANCE));
        mapC.put(d0.b(double[].class), BuiltinSerializersKt.DoubleArraySerializer());
        mapC.put(d0.b(Float.TYPE), BuiltinSerializersKt.serializer(kotlin.jvm.internal.k.INSTANCE));
        mapC.put(d0.b(float[].class), BuiltinSerializersKt.FloatArraySerializer());
        mapC.put(d0.b(Long.TYPE), BuiltinSerializersKt.serializer(t.INSTANCE));
        mapC.put(d0.b(long[].class), BuiltinSerializersKt.LongArraySerializer());
        mapC.put(d0.b(b0.class), BuiltinSerializersKt.serializer(b0.f14087b));
        mapC.put(d0.b(Integer.TYPE), BuiltinSerializersKt.serializer(q.INSTANCE));
        mapC.put(d0.b(int[].class), BuiltinSerializersKt.IntArraySerializer());
        mapC.put(d0.b(z.class), BuiltinSerializersKt.serializer(z.f14107b));
        mapC.put(d0.b(Short.TYPE), BuiltinSerializersKt.serializer(f0.INSTANCE));
        mapC.put(d0.b(short[].class), BuiltinSerializersKt.ShortArraySerializer());
        mapC.put(d0.b(e0.class), BuiltinSerializersKt.serializer(e0.f14096b));
        mapC.put(d0.b(Byte.TYPE), BuiltinSerializersKt.serializer(kotlin.jvm.internal.d.INSTANCE));
        mapC.put(d0.b(byte[].class), BuiltinSerializersKt.ByteArraySerializer());
        mapC.put(d0.b(x.class), BuiltinSerializersKt.serializer(x.f14102b));
        mapC.put(d0.b(Boolean.TYPE), BuiltinSerializersKt.serializer(kotlin.jvm.internal.c.INSTANCE));
        mapC.put(d0.b(boolean[].class), BuiltinSerializersKt.BooleanArraySerializer());
        mapC.put(d0.b(n8.h0.class), BuiltinSerializersKt.serializer(n8.h0.INSTANCE));
        mapC.put(d0.b(Void.class), BuiltinSerializersKt.NothingSerializer());
        try {
            mapC.put(d0.b(d9.a.class), BuiltinSerializersKt.serializer(d9.a.f11667b));
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            mapC.put(d0.b(c0.class), BuiltinSerializersKt.ULongArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            mapC.put(d0.b(a0.class), BuiltinSerializersKt.UIntArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            mapC.put(d0.b(n8.f0.class), BuiltinSerializersKt.UShortArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            mapC.put(d0.b(y.class), BuiltinSerializersKt.UByteArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            mapC.put(d0.b(e9.b.class), BuiltinSerializersKt.serializer(e9.b.Companion));
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        return j0.b(mapC);
    }

    private static final <T> KSerializer<T> invokeSerializerOnCompanion(Object obj, KSerializer<Object>... kSerializerArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i10 = 0; i10 < length; i10++) {
                    clsArr2[i10] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (objInvoke instanceof KSerializer) {
                return (KSerializer) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            if (cause == null) {
                throw e10;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e10.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    private static final <T> KSerializer<T> invokeSerializerOnDefaultCompanion(Class<?> cls, KSerializer<Object>... kSerializerArr) {
        Object objCompanionOrNull = companionOrNull(cls, "Companion");
        if (objCompanionOrNull == null) {
            return null;
        }
        return invokeSerializerOnCompanion(objCompanionOrNull, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    public static final <T> boolean isInterface(c9.c cVar) {
        r.e(cVar, "<this>");
        return v8.a.a(cVar).isInterface();
    }

    private static final <T> boolean isNotAnnotated(Class<T> cls) {
        return cls.getAnnotation(Serializable.class) == null && cls.getAnnotation(Polymorphic.class) == null;
    }

    private static final <T> boolean isPolymorphicSerializer(Class<T> cls) {
        if (cls.getAnnotation(Polymorphic.class) != null) {
            return true;
        }
        Serializable serializable = (Serializable) cls.getAnnotation(Serializable.class);
        return serializable != null && r.a(d0.b(serializable.with()), d0.b(PolymorphicSerializer.class));
    }

    public static final boolean isReferenceArray(c9.c rootClass) {
        r.e(rootClass, "rootClass");
        return v8.a.a(rootClass).isArray();
    }

    private static final void loadSafe(w8.a aVar) {
        try {
            aVar.mo8invoke();
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
    }

    public static final Void platformSpecificSerializerNotRegistered(c9.c cVar) {
        r.e(cVar, "<this>");
        Platform_commonKt.serializerNotRegistered(cVar);
        throw new n8.i();
    }

    public static final Void serializerNotRegistered(Class<?> cls) {
        r.e(cls, "<this>");
        throw new SerializationException(Platform_commonKt.notRegisteredMessage(v8.a.c(cls)));
    }

    public static final <T, E extends T> E[] toNativeArrayImpl(ArrayList<E> arrayList, c9.c eClass) {
        r.e(arrayList, "<this>");
        r.e(eClass, "eClass");
        Object objNewInstance = Array.newInstance((Class<?>) v8.a.a(eClass), arrayList.size());
        r.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) objNewInstance);
        r.d(eArr, "toArray(...)");
        return eArr;
    }

    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(Class<T> cls, KSerializer<Object>... args) throws IllegalAccessException, InvocationTargetException {
        r.e(cls, "<this>");
        r.e(args, "args");
        if (cls.isEnum() && isNotAnnotated(cls)) {
            return createEnumSerializer(cls);
        }
        KSerializer<T> kSerializerInvokeSerializerOnDefaultCompanion = invokeSerializerOnDefaultCompanion(cls, (KSerializer[]) Arrays.copyOf(args, args.length));
        if (kSerializerInvokeSerializerOnDefaultCompanion != null) {
            return kSerializerInvokeSerializerOnDefaultCompanion;
        }
        KSerializer<T> kSerializerFindObjectSerializer = findObjectSerializer(cls);
        if (kSerializerFindObjectSerializer != null) {
            return kSerializerFindObjectSerializer;
        }
        KSerializer<T> kSerializerFindInNamedCompanion = findInNamedCompanion(cls, (KSerializer[]) Arrays.copyOf(args, args.length));
        if (kSerializerFindInNamedCompanion != null) {
            return kSerializerFindInNamedCompanion;
        }
        if (isPolymorphicSerializer(cls)) {
            return new PolymorphicSerializer(v8.a.c(cls));
        }
        return null;
    }

    public static final boolean getChecked(boolean[] zArr, int i10) {
        r.e(zArr, "<this>");
        return zArr[i10];
    }
}
