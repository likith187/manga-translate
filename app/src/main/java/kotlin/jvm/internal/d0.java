package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 {

    /* JADX INFO: renamed from: a */
    private static final e0 f13069a;

    /* JADX INFO: renamed from: b */
    private static final c9.c[] f13070b;

    static {
        e0 e0Var = null;
        try {
            e0Var = (e0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (e0Var == null) {
            e0Var = new e0();
        }
        f13069a = e0Var;
        f13070b = new c9.c[0];
    }

    public static c9.g a(n nVar) {
        return f13069a.a(nVar);
    }

    public static c9.c b(Class cls) {
        return f13069a.b(cls);
    }

    public static c9.f c(Class cls) {
        return f13069a.c(cls, "");
    }

    public static c9.i d(w wVar) {
        return f13069a.d(wVar);
    }

    public static String e(m mVar) {
        return f13069a.e(mVar);
    }

    public static String f(s sVar) {
        return f13069a.f(sVar);
    }
}
