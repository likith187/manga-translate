package l8;

import android.util.Size;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    public static class a extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f13648a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f13649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Size f13650c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Size f13651d;

        public a(Size size, double d10) {
            this.f13650c = f.a(size);
            this.f13651d = new Size((int) (((double) size.getWidth()) * d10), (int) (((double) size.getHeight()) * d10));
            this.f13648a = d10;
            this.f13649b = d10;
        }

        @Override // l8.f
        public double[] b(double d10, double d11) {
            return new double[]{d10 * this.f13648a, d11 * this.f13649b};
        }

        public Size c() {
            return this.f13651d;
        }
    }

    public static Size a(Size size) {
        return new Size(size.getWidth(), size.getHeight());
    }

    public abstract double[] b(double d10, double d11);
}
