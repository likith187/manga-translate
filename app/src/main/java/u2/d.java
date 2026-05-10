package u2;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static double a(double d10) {
        if (d10 == 0.0d) {
            return 0.0d;
        }
        return 25.0d + ((d10 - 8.0d) * 3.0d);
    }

    public static double b(double d10) {
        if (d10 == 0.0d) {
            return 0.0d;
        }
        return 8.0d + ((d10 - 25.0d) / 3.0d);
    }

    public static double c(double d10) {
        if (d10 == 0.0d) {
            return 0.0d;
        }
        return 30.0d + ((d10 - 194.0d) / 3.62d);
    }

    public static double d(double d10) {
        if (d10 == 0.0d) {
            return 0.0d;
        }
        return 194.0d + ((d10 - 30.0d) * 3.62d);
    }
}
