package t8;

import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends s8.a {

    /* JADX INFO: renamed from: t8.a$a, reason: collision with other inner class name */
    private static final class C0226a {
        public static final C0226a INSTANCE = new C0226a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Integer f15726a;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null && num2.intValue() > 0) {
                num = num2;
            }
            f15726a = num;
        }

        private C0226a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0226a.f15726a;
        return num == null || num.intValue() >= i10;
    }

    @Override // s8.a
    public void a(Throwable cause, Throwable exception) throws IllegalAccessException, InvocationTargetException {
        r.e(cause, "cause");
        r.e(exception, "exception");
        if (c(19)) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }
}
