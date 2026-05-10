package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f2813a = kotlin.collections.o.k(Application.class, h0.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f2814b = kotlin.collections.o.b(h0.class);

    public static final Constructor c(Class modelClass, List signature) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        kotlin.jvm.internal.r.e(signature, "signature");
        Iterator itA = kotlin.jvm.internal.b.a(modelClass.getConstructors());
        while (itA.hasNext()) {
            Constructor constructor = (Constructor) itA.next();
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            kotlin.jvm.internal.r.d(parameterTypes, "getParameterTypes(...)");
            List listW = kotlin.collections.i.W(parameterTypes);
            if (kotlin.jvm.internal.r.a(signature, listW)) {
                kotlin.jvm.internal.r.c(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactory_androidKt.findMatchingConstructor>");
                return constructor;
            }
            if (signature.size() == listW.size() && listW.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final s0 d(Class modelClass, Constructor constructor, Object... params) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(params, "params");
        try {
            return (s0) constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e12.getCause());
        }
    }
}
