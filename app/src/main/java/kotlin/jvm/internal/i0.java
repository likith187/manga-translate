package kotlin.jvm.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 {
    public static Collection a(Object obj) {
        if ((obj instanceof x8.a) && !(obj instanceof x8.b)) {
            n(obj, "kotlin.collections.MutableCollection");
        }
        return e(obj);
    }

    public static Iterable b(Object obj) {
        if ((obj instanceof x8.a) && !(obj instanceof x8.c)) {
            n(obj, "kotlin.collections.MutableIterable");
        }
        return f(obj);
    }

    public static Map c(Object obj) {
        if ((obj instanceof x8.a) && !(obj instanceof x8.e)) {
            n(obj, "kotlin.collections.MutableMap");
        }
        return g(obj);
    }

    public static Object d(Object obj, int i10) {
        if (obj != null && !i(obj, i10)) {
            n(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static Collection e(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e10) {
            throw m(e10);
        }
    }

    public static Iterable f(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e10) {
            throw m(e10);
        }
    }

    public static Map g(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e10) {
            throw m(e10);
        }
    }

    public static int h(Object obj) {
        if (obj instanceof m) {
            return ((m) obj).getArity();
        }
        if (obj instanceof w8.a) {
            return 0;
        }
        if (obj instanceof w8.l) {
            return 1;
        }
        if (obj instanceof w8.p) {
            return 2;
        }
        return obj instanceof w8.q ? 3 : -1;
    }

    public static boolean i(Object obj, int i10) {
        return (obj instanceof n8.g) && h(obj) == i10;
    }

    public static boolean j(Object obj) {
        return (obj instanceof List) && (!(obj instanceof x8.a) || (obj instanceof x8.d));
    }

    public static boolean k(Object obj) {
        return (obj instanceof Map) && (!(obj instanceof x8.a) || (obj instanceof x8.e));
    }

    private static Throwable l(Throwable th) {
        return r.k(th, i0.class.getName());
    }

    public static ClassCastException m(ClassCastException classCastException) {
        throw ((ClassCastException) l(classCastException));
    }

    public static void n(Object obj, String str) {
        o((obj == null ? AbstractJsonLexerKt.NULL : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void o(String str) {
        throw m(new ClassCastException(str));
    }
}
