package a7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static float f102a = 0.008333334f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static float f103b = 0.1f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f104c = 160.0f;

    public static float a(float f10) {
        return (d.d(f10) * 2.8600001f) + 2.2141f;
    }

    public static boolean b(float f10) {
        return f10 < f103b;
    }

    public static float c(float f10) {
        return f10 * f104c;
    }

    public static float d(float f10) {
        return f10 / f104c;
    }

    public static void e(float f10) {
        f104c = (f10 * 55.0f) + 0.5f;
        f103b = d(0.1f);
    }

    public static void f(float f10) {
        f102a = f10;
    }
}
