package s1;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f15529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f15530b;

    public d(float f10, float f11) {
        this.f15529a = f10;
        this.f15530b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f15529a == f10 && this.f15530b == f11;
    }

    public float b() {
        return this.f15529a;
    }

    public float c() {
        return this.f15530b;
    }

    public void d(float f10, float f11) {
        this.f15529a = f10;
        this.f15530b = f11;
    }

    public String toString() {
        return b() + "x" + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}
