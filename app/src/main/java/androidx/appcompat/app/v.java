package androidx.appcompat.app;

/* JADX INFO: loaded from: classes.dex */
class v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static v f433d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f436c;

    v() {
    }

    static v b() {
        if (f433d == null) {
            f433d = new v();
        }
        return f433d;
    }

    public void a(long j10, double d10, double d11) {
        double d12 = (0.01720197f * ((j10 - 946728000000L) / 8.64E7f)) + 6.24006f;
        double dSin = (Math.sin(d12) * 0.03341960161924362d) + d12 + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double dRound = ((double) (Math.round(((double) (r3 - 9.0E-4f)) - r7) + 9.0E-4f)) + ((-d11) / 360.0d) + (Math.sin(d12) * 0.0053d) + (Math.sin(2.0d * dSin) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin) * Math.sin(0.4092797040939331d));
        double d13 = 0.01745329238474369d * d10;
        double dSin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d13) * Math.sin(dAsin))) / (Math.cos(d13) * Math.cos(dAsin));
        if (dSin2 >= 1.0d) {
            this.f436c = 1;
            this.f434a = -1L;
            this.f435b = -1L;
        } else {
            if (dSin2 <= -1.0d) {
                this.f436c = 0;
                this.f434a = -1L;
                this.f435b = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin2) / 6.283185307179586d);
            this.f434a = Math.round((dRound + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dRound - dAcos) * 8.64E7d) + 946728000000L;
            this.f435b = jRound;
            if (jRound >= j10 || this.f434a <= j10) {
                this.f436c = 1;
            } else {
                this.f436c = 0;
            }
        }
    }
}
