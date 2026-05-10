package q9;

import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15372d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f15373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f15374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f15375c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new h(method3, method2, method);
        }

        private a() {
        }
    }

    public h(Method method, Method method2, Method method3) {
        this.f15373a = method;
        this.f15374b = method2;
        this.f15375c = method3;
    }

    public final Object a(String closer) {
        r.e(closer, "closer");
        Method method = this.f15373a;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(null, null);
                Method method2 = this.f15374b;
                r.b(method2);
                method2.invoke(objInvoke, closer);
                return objInvoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final boolean b(Object obj) {
        if (obj != null) {
            try {
                Method method = this.f15375c;
                r.b(method);
                method.invoke(obj, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
