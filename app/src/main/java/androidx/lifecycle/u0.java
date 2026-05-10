package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import l0.a;

/* JADX INFO: loaded from: classes.dex */
public class u0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f2835b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.c f2836c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0.c f2837a;

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ u0 b(b bVar, x0 x0Var, c cVar, l0.a aVar, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                cVar = m0.h.INSTANCE.b(x0Var);
            }
            if ((i10 & 4) != 0) {
                aVar = m0.h.INSTANCE.a(x0Var);
            }
            return bVar.a(x0Var, cVar, aVar);
        }

        public final u0 a(x0 owner, c factory, l0.a extras) {
            kotlin.jvm.internal.r.e(owner, "owner");
            kotlin.jvm.internal.r.e(factory, "factory");
            kotlin.jvm.internal.r.e(extras, "extras");
            return new u0(owner.getViewModelStore(), factory, extras);
        }

        private b() {
        }
    }

    public interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f2842a = a.f2843a;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            static final /* synthetic */ a f2843a = new a();

            private a() {
            }
        }

        default s0 a(Class modelClass) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            return m0.h.INSTANCE.d();
        }

        default s0 b(c9.c modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            return c(v8.a.a(modelClass), extras);
        }

        default s0 c(Class modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            return a(modelClass);
        }
    }

    public static class d implements c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static d f2845c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f2844b = new a(null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a.c f2846d = u0.f2836c;

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final d a() {
                if (d.f2845c == null) {
                    d.f2845c = new d();
                }
                d dVar = d.f2845c;
                kotlin.jvm.internal.r.b(dVar);
                return dVar;
            }

            private a() {
            }
        }

        @Override // androidx.lifecycle.u0.c
        public s0 a(Class modelClass) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            return m0.e.INSTANCE.a(modelClass);
        }

        @Override // androidx.lifecycle.u0.c
        public s0 b(c9.c modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            return c(v8.a.a(modelClass), extras);
        }

        @Override // androidx.lifecycle.u0.c
        public s0 c(Class modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            return a(modelClass);
        }
    }

    public static class e {
        public abstract void d(s0 s0Var);
    }

    public static final class f implements a.c {
    }

    static {
        a.C0177a c0177a = l0.a.f13531b;
        f2836c = new f();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u0(w0 store, c factory) {
        this(store, factory, null, 4, null);
        kotlin.jvm.internal.r.e(store, "store");
        kotlin.jvm.internal.r.e(factory, "factory");
    }

    public final s0 a(c9.c modelClass) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        return l0.c.e(this.f2837a, modelClass, null, 2, null);
    }

    public s0 b(Class modelClass) {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        return a(v8.a.c(modelClass));
    }

    public final s0 c(String key, c9.c modelClass) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        return this.f2837a.d(modelClass, key);
    }

    public static class a extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final C0035a f2838f = new C0035a(null);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static a f2839g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a.c f2840h;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Application f2841e;

        /* JADX INFO: renamed from: androidx.lifecycle.u0$a$a, reason: collision with other inner class name */
        public static final class C0035a {
            public /* synthetic */ C0035a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Application application) {
                kotlin.jvm.internal.r.e(application, "application");
                if (a.f2839g == null) {
                    a.f2839g = new a(application);
                }
                a aVar = a.f2839g;
                kotlin.jvm.internal.r.b(aVar);
                return aVar;
            }

            private C0035a() {
            }
        }

        public static final class b implements a.c {
        }

        static {
            a.C0177a c0177a = l0.a.f13531b;
            f2840h = new b();
        }

        private a(Application application, int i10) {
            this.f2841e = application;
        }

        private final s0 h(Class cls, Application application) {
            if (!androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                return super.a(cls);
            }
            try {
                s0 s0Var = (s0) cls.getConstructor(Application.class).newInstance(application);
                kotlin.jvm.internal.r.b(s0Var);
                return s0Var;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            } catch (NoSuchMethodException e12) {
                throw new RuntimeException("Cannot create an instance of " + cls, e12);
            } catch (InvocationTargetException e13) {
                throw new RuntimeException("Cannot create an instance of " + cls, e13);
            }
        }

        @Override // androidx.lifecycle.u0.d, androidx.lifecycle.u0.c
        public s0 a(Class modelClass) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            Application application = this.f2841e;
            if (application != null) {
                return h(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        @Override // androidx.lifecycle.u0.d, androidx.lifecycle.u0.c
        public s0 c(Class modelClass, l0.a extras) {
            kotlin.jvm.internal.r.e(modelClass, "modelClass");
            kotlin.jvm.internal.r.e(extras, "extras");
            if (this.f2841e != null) {
                return a(modelClass);
            }
            Application application = (Application) extras.a(f2840h);
            if (application != null) {
                return h(modelClass, application);
            }
            if (androidx.lifecycle.a.class.isAssignableFrom(modelClass)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return super.a(modelClass);
        }

        public a() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            this(application, 0);
            kotlin.jvm.internal.r.e(application, "application");
        }
    }

    private u0(l0.c cVar) {
        this.f2837a = cVar;
    }

    public /* synthetic */ u0(w0 w0Var, c cVar, l0.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(w0Var, cVar, (i10 & 4) != 0 ? a.b.INSTANCE : aVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u0(w0 store, c factory, l0.a defaultCreationExtras) {
        this(new l0.c(store, factory, defaultCreationExtras));
        kotlin.jvm.internal.r.e(store, "store");
        kotlin.jvm.internal.r.e(factory, "factory");
        kotlin.jvm.internal.r.e(defaultCreationExtras, "defaultCreationExtras");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public u0(x0 owner) {
        kotlin.jvm.internal.r.e(owner, "owner");
        w0 viewModelStore = owner.getViewModelStore();
        m0.h hVar = m0.h.INSTANCE;
        this(viewModelStore, hVar.b(owner), hVar.a(owner));
    }
}
