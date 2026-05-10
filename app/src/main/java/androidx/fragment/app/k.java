package androidx.fragment.app;

import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.collection.i f2679a = new androidx.collection.i();

    static boolean b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static Class c(ClassLoader classLoader, String str) throws ClassNotFoundException {
        androidx.collection.i iVar = f2679a;
        androidx.collection.i iVar2 = (androidx.collection.i) iVar.get(classLoader);
        if (iVar2 == null) {
            iVar2 = new androidx.collection.i();
            iVar.put(classLoader, iVar2);
        }
        Class cls = (Class) iVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        iVar2.put(str, cls2);
        return cls2;
    }

    public static Class d(ClassLoader classLoader, String str) {
        try {
            return c(classLoader, str);
        } catch (ClassCastException e10) {
            throw new Fragment.m("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e10);
        } catch (ClassNotFoundException e11) {
            throw new Fragment.m("Unable to instantiate fragment " + str + ": make sure class name exists", e11);
        }
    }

    public abstract Fragment a(ClassLoader classLoader, String str);
}
