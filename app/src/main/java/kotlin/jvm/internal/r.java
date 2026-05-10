package kotlin.jvm.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {
    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void b(Object obj) {
        if (obj == null) {
            l();
        }
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            m(str);
        }
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) j(new NullPointerException(str + " must not be null")));
    }

    public static void e(Object obj, String str) {
        if (obj == null) {
            n(str);
        }
    }

    public static int f(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 == i11 ? 0 : 1;
    }

    public static int g(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }

    private static String h(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = r.class.getName();
        int i10 = 0;
        while (!stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        while (stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        StackTraceElement stackTraceElement = stackTrace[i10];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void i(int i10, String str) {
        o();
    }

    private static Throwable j(Throwable th) {
        return k(th, r.class.getName());
    }

    static Throwable k(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(stackTrace[i11].getClassName())) {
                i10 = i11;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10 + 1, length));
        return th;
    }

    public static void l() {
        throw ((NullPointerException) j(new NullPointerException()));
    }

    public static void m(String str) {
        throw ((NullPointerException) j(new NullPointerException(str)));
    }

    private static void n(String str) {
        throw ((NullPointerException) j(new NullPointerException(h(str))));
    }

    public static void o() {
        p("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void p(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void q(String str) {
        throw ((n8.g0) j(new n8.g0(str)));
    }

    public static void r(String str) {
        q("lateinit property " + str + " has not been initialized");
    }
}
