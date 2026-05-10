package d7;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f11661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a7.e f11662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a7.e f11663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a7.e f11664f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a7.e f11665g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final m f11666h;

    public n() {
        this(null);
    }

    public m a() {
        return this.f11666h;
    }

    public n b(float f10, float f11) {
        this.f11659a = f10;
        this.f11660b = f11;
        return this;
    }

    public n c(float f10, float f11) {
        this.f11663e.d(f10, f11);
        return this;
    }

    public n d(float f10, float f11) {
        this.f11664f.d(f10, f11);
        return this;
    }

    public void e(float f10, float f11) {
        this.f11665g.d(f10, f11);
    }

    public void f(float f10, float f11) {
        m mVar = this.f11666h;
        mVar.f11655a = f10;
        mVar.f11656b = f11;
    }

    public String toString() {
        return "UIItem{mTarget=" + this.f11661c + ", size=( " + this.f11659a + "," + this.f11660b + "), startPos =:" + this.f11663e + ", startVel =:" + this.f11665g + "}@" + hashCode();
    }

    public n(Object obj) {
        this.f11659a = 0.0f;
        this.f11660b = 0.0f;
        this.f11662d = new a7.e();
        this.f11663e = new a7.e();
        this.f11664f = new a7.e(1.0f, 1.0f);
        this.f11665g = new a7.e();
        this.f11666h = new m();
        this.f11661c = obj;
    }
}
