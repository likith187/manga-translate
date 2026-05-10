package u8;

import z8.c;

/* JADX INFO: loaded from: classes2.dex */
public class a extends t8.a {

    /* JADX INFO: renamed from: u8.a$a, reason: collision with other inner class name */
    private static final class C0232a {
        public static final C0232a INSTANCE = new C0232a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Integer f15893a;

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
            f15893a = num;
        }

        private C0232a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0232a.f15893a;
        return num == null || num.intValue() >= i10;
    }

    @Override // s8.a
    public c b() {
        return c(34) ? new a9.a() : super.b();
    }
}
