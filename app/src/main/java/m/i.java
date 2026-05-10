package m;

/* JADX INFO: loaded from: classes.dex */
public class i extends c {

    /* JADX INFO: renamed from: d */
    double f13755d;

    /* JADX INFO: renamed from: e */
    double f13756e;

    i(String str) {
        this.f13700a = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.f13755d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i10 = iIndexOf2 + 1;
        this.f13756e = Double.parseDouble(str.substring(i10, str.indexOf(44, i10)).trim());
    }

    private double d(double d10) {
        double d11 = this.f13756e;
        if (d10 < d11) {
            double d12 = this.f13755d;
            return ((d12 * d11) * d11) / ((((d11 - d10) * d12) + d10) * ((d12 * (d11 - d10)) + d10));
        }
        double d13 = this.f13755d;
        return (((d11 - 1.0d) * d13) * (d11 - 1.0d)) / (((((-d13) * (d11 - d10)) - d10) + 1.0d) * ((((-d13) * (d11 - d10)) - d10) + 1.0d));
    }

    private double e(double d10) {
        double d11 = this.f13756e;
        return d10 < d11 ? (d11 * d10) / (d10 + (this.f13755d * (d11 - d10))) : ((1.0d - d11) * (d10 - 1.0d)) / ((1.0d - d10) - (this.f13755d * (d11 - d10)));
    }

    @Override // m.c
    public double a(double d10) {
        return e(d10);
    }

    @Override // m.c
    public double b(double d10) {
        return d(d10);
    }
}
