package d7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f11639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f11641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11642e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11638a = 0;

    public j(String str, float f10) {
        this.f11639b = str;
        this.f11640c = f10;
    }

    public abstract float a(Object obj);

    public abstract void b(Object obj, float f10);

    public j c(float f10) {
        this.f11641d = f10;
        this.f11642e = true;
        return this;
    }

    public void d(Object obj, float f10) {
        b(obj, f10 * this.f11640c);
    }

    public abstract void e(Object obj);

    public void f(Object obj) {
        if (this.f11642e) {
            return;
        }
        this.f11641d = a(obj);
    }
}
