package d7;

/* JADX INFO: loaded from: classes2.dex */
public class k extends j {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f11643f;

    public k(float f10) {
        this("floatValue", f10);
    }

    @Override // d7.j
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public float a(n nVar) {
        return this.f11643f;
    }

    @Override // d7.j
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(n nVar, float f10) {
        this.f11643f = f10;
    }

    @Override // d7.j
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void e(n nVar) {
        d(nVar, nVar.f11666h.f11655a);
    }

    @Override // d7.j
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void f(n nVar) {
        super.f(nVar);
        nVar.f11663e.f109a = this.f11641d;
    }

    public k(String str, float f10) {
        this(str, f10, 1.0f);
    }

    public k(String str, float f10, float f11) {
        super(str, f11);
        this.f11643f = f10;
    }
}
