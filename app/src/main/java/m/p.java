package m;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f13801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f13802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f13803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f13804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f13805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f13806f;

    public void a(float f10, float f11, int i10, int i11, float[] fArr) {
        float f12 = fArr[0];
        float f13 = fArr[1];
        float f14 = (f10 - 0.5f) * 2.0f;
        float f15 = (f11 - 0.5f) * 2.0f;
        float f16 = f12 + this.f13803c;
        float f17 = f13 + this.f13804d;
        float f18 = f16 + (this.f13801a * f14);
        float f19 = f17 + (this.f13802b * f15);
        float radians = (float) Math.toRadians(this.f13806f);
        float radians2 = (float) Math.toRadians(this.f13805e);
        double d10 = radians;
        double d11 = i11 * f15;
        float fSin = f18 + (((float) ((((double) ((-i10) * f14)) * Math.sin(d10)) - (Math.cos(d10) * d11))) * radians2);
        float fCos = f19 + (radians2 * ((float) ((((double) (i10 * f14)) * Math.cos(d10)) - (d11 * Math.sin(d10)))));
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void b() {
        this.f13805e = 0.0f;
        this.f13804d = 0.0f;
        this.f13803c = 0.0f;
        this.f13802b = 0.0f;
        this.f13801a = 0.0f;
    }

    public void c(e eVar, float f10) {
        if (eVar != null) {
            this.f13805e = eVar.b(f10);
        }
    }

    public void d(j jVar, float f10) {
        if (jVar != null) {
            this.f13805e = jVar.b(f10);
            this.f13806f = jVar.a(f10);
        }
    }

    public void e(e eVar, e eVar2, float f10) {
        if (eVar != null) {
            this.f13801a = eVar.b(f10);
        }
        if (eVar2 != null) {
            this.f13802b = eVar2.b(f10);
        }
    }

    public void f(j jVar, j jVar2, float f10) {
        if (jVar != null) {
            this.f13801a = jVar.b(f10);
        }
        if (jVar2 != null) {
            this.f13802b = jVar2.b(f10);
        }
    }

    public void g(e eVar, e eVar2, float f10) {
        if (eVar != null) {
            this.f13803c = eVar.b(f10);
        }
        if (eVar2 != null) {
            this.f13804d = eVar2.b(f10);
        }
    }

    public void h(j jVar, j jVar2, float f10) {
        if (jVar != null) {
            this.f13803c = jVar.b(f10);
        }
        if (jVar2 != null) {
            this.f13804d = jVar2.b(f10);
        }
    }
}
