package a7;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f110b;

    public e() {
        this(0.0f, 0.0f);
    }

    public final e a(e eVar) {
        this.f109a += eVar.f109a;
        this.f110b += eVar.f110b;
        return this;
    }

    public final e b(float f10) {
        this.f109a *= f10;
        this.f110b *= f10;
        return this;
    }

    public final e c() {
        this.f109a = -this.f109a;
        this.f110b = -this.f110b;
        return this;
    }

    public final e d(float f10, float f11) {
        this.f109a = f10;
        this.f110b = f11;
        return this;
    }

    public final e e(e eVar) {
        this.f109a = eVar.f109a;
        this.f110b = eVar.f110b;
        return this;
    }

    public final void f() {
        this.f109a = 0.0f;
        this.f110b = 0.0f;
    }

    public final e g(e eVar) {
        this.f109a -= eVar.f109a;
        this.f110b -= eVar.f110b;
        return this;
    }

    public final String toString() {
        return "(" + this.f109a + "," + this.f110b + ")";
    }

    public e(float f10, float f11) {
        this.f109a = f10;
        this.f110b = f11;
    }
}
