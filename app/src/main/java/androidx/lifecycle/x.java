package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    public static final x INSTANCE = new x();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f2848a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f2849b = new HashMap();

    private x() {
    }

    private final i a(Constructor constructor, Object obj) {
        try {
            Object objNewInstance = constructor.newInstance(obj);
            kotlin.jvm.internal.r.b(objNewInstance);
            androidx.appcompat.app.t.a(objNewInstance);
            return null;
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    private final Constructor b(Class cls) {
        try {
            Package r32 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r32 != null ? r32.getName() : "";
            kotlin.jvm.internal.r.b(name);
            if (name.length() != 0) {
                kotlin.jvm.internal.r.b(canonicalName);
                canonicalName = canonicalName.substring(name.length() + 1);
                kotlin.jvm.internal.r.d(canonicalName, "substring(...)");
            }
            kotlin.jvm.internal.r.b(canonicalName);
            String strC = c(canonicalName);
            if (name.length() != 0) {
                strC = name + '.' + strC;
            }
            Class<?> cls2 = Class.forName(strC);
            kotlin.jvm.internal.r.c(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(cls);
            if (declaredConstructor.isAccessible()) {
                return declaredConstructor;
            }
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static final String c(String className) {
        kotlin.jvm.internal.r.e(className, "className");
        return kotlin.text.r.B(className, ".", "_", false, 4, null) + "_LifecycleAdapter";
    }

    private final int d(Class cls) {
        Map map = f2848a;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int iG = g(cls);
        map.put(cls, Integer.valueOf(iG));
        return iG;
    }

    private final boolean e(Class cls) {
        return cls != null && r.class.isAssignableFrom(cls);
    }

    public static final p f(Object object) {
        kotlin.jvm.internal.r.e(object, "object");
        boolean z10 = object instanceof p;
        boolean z11 = object instanceof f;
        if (z10 && z11) {
            return new g((f) object, (p) object);
        }
        if (z11) {
            return new g((f) object, null);
        }
        if (z10) {
            return (p) object;
        }
        Class<?> cls = object.getClass();
        x xVar = INSTANCE;
        if (xVar.d(cls) != 2) {
            return new f0(object);
        }
        Object obj = f2849b.get(cls);
        kotlin.jvm.internal.r.b(obj);
        List list = (List) obj;
        if (list.size() == 1) {
            xVar.a((Constructor) list.get(0), object);
            return new r0(null);
        }
        int size = list.size();
        i[] iVarArr = new i[size];
        for (int i10 = 0; i10 < size; i10++) {
            INSTANCE.a((Constructor) list.get(i10), object);
            iVarArr[i10] = null;
        }
        return new e(iVarArr);
    }

    private final int g(Class cls) {
        ArrayList arrayList;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor constructorB = b(cls);
        if (constructorB != null) {
            f2849b.put(cls, kotlin.collections.o.b(constructorB));
            return 2;
        }
        if (d.f2752c.d(cls)) {
            return 1;
        }
        Class superclass = cls.getSuperclass();
        if (e(superclass)) {
            kotlin.jvm.internal.r.b(superclass);
            if (d(superclass) == 1) {
                return 1;
            }
            Object obj = f2849b.get(superclass);
            kotlin.jvm.internal.r.b(obj);
            arrayList = new ArrayList((Collection) obj);
        } else {
            arrayList = null;
        }
        Iterator itA = kotlin.jvm.internal.b.a(cls.getInterfaces());
        while (itA.hasNext()) {
            Class cls2 = (Class) itA.next();
            if (e(cls2)) {
                kotlin.jvm.internal.r.b(cls2);
                if (d(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                Object obj2 = f2849b.get(cls2);
                kotlin.jvm.internal.r.b(obj2);
                arrayList.addAll((Collection) obj2);
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f2849b.put(cls, arrayList);
        return 2;
    }
}
