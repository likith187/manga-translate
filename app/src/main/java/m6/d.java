package m6;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f13862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f13863b;

    public d(float f10, float f11) {
        this.f13862a = f10;
        this.f13863b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f13862a == f10 && this.f13863b == f11;
    }

    public float b() {
        return this.f13862a;
    }

    public float c() {
        return this.f13863b;
    }

    public void d(float f10, float f11) {
        this.f13862a = f10;
        this.f13863b = f11;
    }

    public String toString() {
        return b() + "x" + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}
