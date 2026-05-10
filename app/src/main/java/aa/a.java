package aa;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f111a = h(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f112b = h(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f113c = h(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f114d = h(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f115e = g(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f116f = g(2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f117g = g(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f118h = g(4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f119i = c(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f120j = c(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f121k = c(3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f122l = c(4);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f123m = b(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f124n = b(2);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f125o = b(3);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f126p = b(4);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f127q = e(1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f128r = e(2);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f129s = e(3);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f130t = e(4);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f131u = d(1);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f132v = d(2);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f133w = d(3);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f134x = d(4);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f135y = f(1);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f136z = f(2);
    public static final int A = f(3);
    public static final int B = f(4);
    public static final int C = a(1);
    public static final int D = a(2);
    public static final int E = a(3);
    public static final int F = a(4);

    public static final int a(int i10) {
        return k(7, i10);
    }

    public static final int b(int i10) {
        return k(3, i10);
    }

    public static final int c(int i10) {
        return k(2, i10);
    }

    public static final int d(int i10) {
        return k(5, i10);
    }

    public static final int e(int i10) {
        return k(4, i10);
    }

    public static final int f(int i10) {
        return k(6, i10);
    }

    public static final int g(int i10) {
        return k(1, i10);
    }

    public static final int h(int i10) {
        return k(0, i10);
    }

    public static final int i(int i10) {
        return (i10 >> 3) + 1;
    }

    public static final int j(int i10) {
        return i10 & 7;
    }

    public static final int k(int i10, int i11) {
        if (i11 <= 0 || i11 >= 512) {
            throw new UnsupportedOperationException("Channels count should be 1..511");
        }
        if (i10 < 0 || i10 >= 8) {
            throw new UnsupportedOperationException("Data type depth should be 0..7");
        }
        return (i10 & 7) + ((i11 - 1) << 3);
    }

    public static final String l(int i10) {
        String str;
        switch (j(i10)) {
            case 0:
                str = "CV_8U";
                break;
            case 1:
                str = "CV_8S";
                break;
            case 2:
                str = "CV_16U";
                break;
            case 3:
                str = "CV_16S";
                break;
            case 4:
                str = "CV_32S";
                break;
            case 5:
                str = "CV_32F";
                break;
            case 6:
                str = "CV_64F";
                break;
            case 7:
                str = "CV_16F";
                break;
            default:
                throw new UnsupportedOperationException("Unsupported CvType value: " + i10);
        }
        int i11 = i(i10);
        if (i11 <= 4) {
            return str + "C" + i11;
        }
        return str + "C(" + i11 + ")";
    }
}
