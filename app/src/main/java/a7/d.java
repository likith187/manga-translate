package a7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static float a(float f10) {
        return f10 > 0.0f ? f10 : -f10;
    }

    public static boolean b(float f10, float f11) {
        return ((double) Math.abs(f10 - f11)) < 1.0E-7d;
    }

    public static float c(float f10, float f11) {
        return f10 < f11 ? f10 : f11;
    }

    public static float d(float f10) {
        return (float) StrictMath.sqrt(f10);
    }
}
