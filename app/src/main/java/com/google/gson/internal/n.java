package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    public static final n INSTANCE = c();

    class a extends n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Method f10754a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Object f10755b;

        a(Method method, Object obj) {
            this.f10754a = method;
            this.f10755b = obj;
        }

        @Override // com.google.gson.internal.n
        public Object d(Class cls) {
            n.b(cls);
            return this.f10754a.invoke(this.f10755b, cls);
        }
    }

    class b extends n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Method f10756a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f10757b;

        b(Method method, int i10) {
            this.f10756a = method;
            this.f10757b = i10;
        }

        @Override // com.google.gson.internal.n
        public Object d(Class cls) {
            n.b(cls);
            return this.f10756a.invoke(null, cls, Integer.valueOf(this.f10757b));
        }
    }

    class c extends n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Method f10758a;

        c(Method method) {
            this.f10758a = method;
        }

        @Override // com.google.gson.internal.n
        public Object d(Class cls) {
            n.b(cls);
            return this.f10758a.invoke(null, cls, Object.class);
        }
    }

    class d extends n {
        d() {
        }

        @Override // com.google.gson.internal.n
        public Object d(Class cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls + ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");
        }
    }

    public static void b(Class cls) {
        String strA = com.google.gson.internal.c.a(cls);
        if (strA == null) {
            return;
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: " + strA);
    }

    private static n c() {
        try {
            try {
                try {
                    Class<?> cls = Class.forName("sun.misc.Unsafe");
                    Field declaredField = cls.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
                } catch (Exception unused) {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, iIntValue);
                }
            } catch (Exception unused2) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        } catch (Exception unused3) {
            return new d();
        }
    }

    public abstract Object d(Class cls);
}
