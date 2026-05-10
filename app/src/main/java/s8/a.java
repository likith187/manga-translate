package s8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.collections.i;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: s8.a$a */
    private static final class C0216a {
        public static final C0216a INSTANCE = new C0216a();

        /* JADX INFO: renamed from: a */
        public static final Method f15577a;

        /* JADX INFO: renamed from: b */
        public static final Method f15578b;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            r.b(methods);
            int length = methods.length;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                method = null;
                if (i11 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i11];
                if (r.a(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    r.d(parameterTypes, "getParameterTypes(...)");
                    if (r.a(i.S(parameterTypes), Throwable.class)) {
                        break;
                    }
                }
                i11++;
            }
            f15577a = method2;
            int length2 = methods.length;
            while (true) {
                if (i10 >= length2) {
                    break;
                }
                Method method3 = methods[i10];
                if (r.a(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i10++;
            }
            f15578b = method;
        }

        private C0216a() {
        }
    }

    public void a(Throwable cause, Throwable exception) throws IllegalAccessException, InvocationTargetException {
        r.e(cause, "cause");
        r.e(exception, "exception");
        Method method = C0216a.f15577a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public z8.c b() {
        return new z8.b();
    }
}
