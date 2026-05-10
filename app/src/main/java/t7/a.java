package t7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static String a() {
        if (b8.b.a()) {
            return "com.oplus.appplatform";
        }
        String str = (String) b();
        return str == null ? "" : str;
    }

    private static Object b() {
        return b.a();
    }

    public static String c() {
        return b8.b.a() ? "com.oplus.epona.binder" : (String) d();
    }

    private static Object d() {
        return b.b();
    }

    public static String e() {
        return b8.b.a() ? "com.oplus.epona.ext_binder" : (String) f();
    }

    private static Object f() {
        return b.c();
    }
}
