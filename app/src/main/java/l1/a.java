package l1;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f13537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f13538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PointF f13539c;

    public a() {
        this.f13537a = new PointF();
        this.f13538b = new PointF();
        this.f13539c = new PointF();
    }

    public PointF a() {
        return this.f13537a;
    }

    public PointF b() {
        return this.f13538b;
    }

    public PointF c() {
        return this.f13539c;
    }

    public void d(float f10, float f11) {
        this.f13537a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f13538b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f13539c.set(f10, f11);
    }

    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f13539c.x), Float.valueOf(this.f13539c.y), Float.valueOf(this.f13537a.x), Float.valueOf(this.f13537a.y), Float.valueOf(this.f13538b.x), Float.valueOf(this.f13538b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f13537a = pointF;
        this.f13538b = pointF2;
        this.f13539c = pointF3;
    }
}
