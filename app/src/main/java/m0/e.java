package m0;

import androidx.lifecycle.s0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e INSTANCE = new e();

    private e() {
    }

    public final s0 a(Class modelClass) throws InvocationTargetException {
        r.e(modelClass, "modelClass");
        try {
            Constructor declaredConstructor = modelClass.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new RuntimeException("Cannot create an instance of " + modelClass);
            }
            try {
                Object objNewInstance = declaredConstructor.newInstance(null);
                r.b(objNewInstance);
                return (s0) objNewInstance;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e11);
            }
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e12);
        }
    }
}
