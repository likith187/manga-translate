package androidx.window.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import c9.c;
import c9.d;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.jvm.internal.r;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanUncheckedReflection"})
public final class ConsumerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClassLoader f4007a;

    private static final class ConsumerHandler<T> implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f4008a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l f4009b;

        public ConsumerHandler(c clazz, l consumer) {
            r.e(clazz, "clazz");
            r.e(consumer, "consumer");
            this.f4008a = clazz;
            this.f4009b = consumer;
        }

        private final boolean b(Method method, Object[] objArr) {
            return r.a(method.getName(), "accept") && objArr != null && objArr.length == 1;
        }

        private final boolean c(Method method, Object[] objArr) {
            return r.a(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        private final boolean d(Method method, Object[] objArr) {
            return r.a(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        private final boolean e(Method method, Object[] objArr) {
            return r.a(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        public final void a(Object parameter) {
            r.e(parameter, "parameter");
            this.f4009b.invoke(parameter);
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            r.e(obj, "obj");
            r.e(method, "method");
            if (b(method, objArr)) {
                a(d.a(this.f4008a, objArr != null ? objArr[0] : null));
                return h0.INSTANCE;
            }
            if (c(method, objArr)) {
                return Boolean.valueOf(obj == (objArr != null ? objArr[0] : null));
            }
            if (d(method, objArr)) {
                return Integer.valueOf(this.f4009b.hashCode());
            }
            if (e(method, objArr)) {
                return this.f4009b.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }
    }

    public interface Subscription {
        void a();
    }

    public ConsumerAdapter(ClassLoader loader) {
        r.e(loader, "loader");
        this.f4007a = loader;
    }

    private final Object b(c cVar, l lVar) {
        Object objNewProxyInstance = Proxy.newProxyInstance(this.f4007a, new Class[]{e()}, new ConsumerHandler(cVar, lVar));
        r.d(objNewProxyInstance, "newProxyInstance(loader,…onsumerClass()), handler)");
        return objNewProxyInstance;
    }

    private final Class e() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.f4007a.loadClass("java.util.function.Consumer");
        r.d(clsLoadClass, "loader.loadClass(\"java.util.function.Consumer\")");
        return clsLoadClass;
    }

    public final void a(Object obj, c clazz, String methodName, l consumer) throws IllegalAccessException, InvocationTargetException {
        r.e(obj, "obj");
        r.e(clazz, "clazz");
        r.e(methodName, "methodName");
        r.e(consumer, "consumer");
        obj.getClass().getMethod(methodName, e()).invoke(obj, b(clazz, consumer));
    }

    public final Class c() {
        try {
            return e();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final Subscription d(final Object obj, c clazz, String addMethodName, String removeMethodName, Activity activity, l consumer) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        r.e(obj, "obj");
        r.e(clazz, "clazz");
        r.e(addMethodName, "addMethodName");
        r.e(removeMethodName, "removeMethodName");
        r.e(activity, "activity");
        r.e(consumer, "consumer");
        final Object objB = b(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Activity.class, e()).invoke(obj, activity, objB);
        final Method method = obj.getClass().getMethod(removeMethodName, e());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter$createSubscription$1
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void a() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objB);
            }
        };
    }
}
