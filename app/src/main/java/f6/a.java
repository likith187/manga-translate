package f6;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f11971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f11972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PointF f11973c;

    public a() {
        this.f11971a = new PointF();
        this.f11972b = new PointF();
        this.f11973c = new PointF();
    }

    public PointF a() {
        return this.f11971a;
    }

    public PointF b() {
        return this.f11972b;
    }

    public PointF c() {
        return this.f11973c;
    }

    public void d(float f10, float f11) {
        this.f11971a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f11972b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f11973c.set(f10, f11);
    }

    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f11973c.x), Float.valueOf(this.f11973c.y), Float.valueOf(this.f11971a.x), Float.valueOf(this.f11971a.y), Float.valueOf(this.f11972b.x), Float.valueOf(this.f11972b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f11971a = pointF;
        this.f11972b = pointF2;
        this.f11973c = pointF3;
    }
}
