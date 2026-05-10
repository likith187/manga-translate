package androidx.window.core;

import android.annotation.SuppressLint;
import android.util.Pair;
import c9.c;
import c9.d;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.jvm.internal.r;
import w8.l;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanUncheckedReflection"})
public final class PredicateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClassLoader f4020a;

    private static abstract class BaseHandler<T> implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f4021a;

        public abstract boolean a(Object obj, Object obj2);

        protected final boolean b(Method method, Object[] objArr) {
            r.e(method, "<this>");
            return r.a(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        protected final boolean c(Method method, Object[] objArr) {
            r.e(method, "<this>");
            return r.a(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        protected final boolean d(Method method, Object[] objArr) {
            r.e(method, "<this>");
            return r.a(method.getName(), "test") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        protected final boolean e(Method method, Object[] objArr) {
            r.e(method, "<this>");
            return r.a(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            r.e(obj, "obj");
            r.e(method, "method");
            if (d(method, objArr)) {
                return Boolean.valueOf(a(obj, d.a(this.f4021a, objArr != null ? objArr[0] : null)));
            }
            if (b(method, objArr)) {
                Object obj2 = objArr != null ? objArr[0] : null;
                r.b(obj2);
                return Boolean.valueOf(obj == obj2);
            }
            if (c(method, objArr)) {
                return Integer.valueOf(hashCode());
            }
            if (e(method, objArr)) {
                return toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }
    }

    private static final class PairPredicateStubHandler<T, U> extends BaseHandler<Pair<?, ?>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c f4022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f4023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final p f4024d;

        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean a(Object obj, Pair parameter) {
            r.e(obj, "obj");
            r.e(parameter, "parameter");
            return ((Boolean) this.f4024d.invoke(d.a(this.f4022b, parameter.first), d.a(this.f4023c, parameter.second))).booleanValue();
        }

        public int hashCode() {
            return this.f4024d.hashCode();
        }

        public String toString() {
            return this.f4024d.toString();
        }
    }

    private static final class PredicateStubHandler<T> extends BaseHandler<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l f4025b;

        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        public boolean a(Object obj, Object parameter) {
            r.e(obj, "obj");
            r.e(parameter, "parameter");
            return ((Boolean) this.f4025b.invoke(parameter)).booleanValue();
        }

        public int hashCode() {
            return this.f4025b.hashCode();
        }

        public String toString() {
            return this.f4025b.toString();
        }
    }

    public PredicateAdapter(ClassLoader loader) {
        r.e(loader, "loader");
        this.f4020a = loader;
    }
}
