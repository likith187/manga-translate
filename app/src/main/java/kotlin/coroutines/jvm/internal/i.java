package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class i {
    public static final i INSTANCE = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f13039a = new a(null, null, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f13040b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f13041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f13042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f13043c;

        public a(Method method, Method method2, Method method3) {
            this.f13041a = method;
            this.f13042b = method2;
            this.f13043c = method3;
        }
    }

    private i() {
    }

    private final a a(kotlin.coroutines.jvm.internal.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", null), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
            f13040b = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = f13039a;
            f13040b = aVar3;
            return aVar3;
        }
    }

    public final String b(kotlin.coroutines.jvm.internal.a continuation) {
        r.e(continuation, "continuation");
        a aVarA = f13040b;
        if (aVarA == null) {
            aVarA = a(continuation);
        }
        if (aVarA == f13039a) {
            return null;
        }
        Method method = aVarA.f13041a;
        Object objInvoke = method != null ? method.invoke(continuation.getClass(), null) : null;
        if (objInvoke == null) {
            return null;
        }
        Method method2 = aVarA.f13042b;
        Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
        if (objInvoke2 == null) {
            return null;
        }
        Method method3 = aVarA.f13043c;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }
}
