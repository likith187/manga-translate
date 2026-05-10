package x9;

import androidx.appcompat.app.t;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
class p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f16478d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a[] f16479e = new a[4];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f16480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f16481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f16482c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List f16483a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map f16484b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Map f16485c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f16486d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Class f16487e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Class f16488f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f16489g;

        a() {
        }

        private boolean b(Method method, Class cls) {
            this.f16486d.setLength(0);
            this.f16486d.append(method.getName());
            StringBuilder sb = this.f16486d;
            sb.append('>');
            sb.append(cls.getName());
            String string = this.f16486d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class cls2 = (Class) this.f16485c.put(string, declaringClass);
            if (cls2 == null || cls2.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f16485c.put(string, cls2);
            return false;
        }

        boolean a(Method method, Class cls) {
            Object objPut = this.f16484b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.f16484b.put(cls, this);
            }
            return b(method, cls);
        }

        void c(Class cls) {
            this.f16488f = cls;
            this.f16487e = cls;
            this.f16489g = false;
        }

        void d() {
            if (this.f16489g) {
                this.f16488f = null;
                return;
            }
            Class superclass = this.f16488f.getSuperclass();
            this.f16488f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f16488f = null;
            }
        }

        void e() {
            this.f16483a.clear();
            this.f16484b.clear();
            this.f16485c.clear();
            this.f16486d.setLength(0);
            this.f16487e = null;
            this.f16488f = null;
            this.f16489g = false;
        }
    }

    p(List list, boolean z10, boolean z11) {
        this.f16480a = list;
        this.f16481b = z10;
        this.f16482c = z11;
    }

    private List b(Class cls) {
        a aVarG = g();
        aVarG.c(cls);
        while (aVarG.f16488f != null) {
            f(aVarG);
            d(aVarG);
            aVarG.d();
        }
        return e(aVarG);
    }

    private List c(Class cls) {
        a aVarG = g();
        aVarG.c(cls);
        while (aVarG.f16488f != null) {
            d(aVarG);
            aVarG.d();
        }
        return e(aVarG);
    }

    private void d(a aVar) {
        Method[] methods;
        try {
            try {
                methods = aVar.f16488f.getDeclaredMethods();
            } catch (LinkageError e10) {
                String str = "Could not inspect methods of " + aVar.f16488f.getName();
                throw new e(this.f16482c ? str + ". Please consider using EventBus annotation processor to avoid reflection." : str + ". Please make this class visible to EventBus annotation processor to avoid reflection.", e10);
            }
        } catch (Throwable unused) {
            methods = aVar.f16488f.getMethods();
            aVar.f16489g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    m mVar = (m) method.getAnnotation(m.class);
                    if (mVar != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.f16483a.add(new o(method, cls, mVar.threadMode(), mVar.priority(), mVar.sticky()));
                        }
                    }
                } else if (this.f16481b && method.isAnnotationPresent(m.class)) {
                    throw new e("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f16481b && method.isAnnotationPresent(m.class)) {
                throw new e((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    private List e(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f16483a);
        aVar.e();
        synchronized (f16479e) {
            int i10 = 0;
            while (true) {
                if (i10 >= 4) {
                    break;
                }
                try {
                    a[] aVarArr = f16479e;
                    if (aVarArr[i10] == null) {
                        aVarArr[i10] = aVar;
                        break;
                    }
                    i10++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return arrayList;
    }

    private z9.a f(a aVar) {
        aVar.getClass();
        List list = this.f16480a;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                t.a(it.next());
                throw null;
            }
        }
        return null;
    }

    private a g() {
        synchronized (f16479e) {
            for (int i10 = 0; i10 < 4; i10++) {
                try {
                    a[] aVarArr = f16479e;
                    a aVar = aVarArr[i10];
                    if (aVar != null) {
                        aVarArr[i10] = null;
                        return aVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new a();
        }
    }

    List a(Class cls) {
        Map map = f16478d;
        List list = (List) map.get(cls);
        if (list != null) {
            return list;
        }
        List listC = this.f16482c ? c(cls) : b(cls);
        if (!listC.isEmpty()) {
            map.put(cls, listC);
            return listC;
        }
        throw new e("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}
