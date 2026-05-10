package d6;

import android.graphics.Color;
import android.graphics.Paint;
import d6.a;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.b f11550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d6.a f11551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d6.a f11552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d6.a f11553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d6.a f11554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d6.a f11555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11556g = true;

    class a extends m6.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ m6.b f11557d;

        a(m6.b bVar) {
            this.f11557d = bVar;
        }

        @Override // m6.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Float a(m6.a aVar) {
            Float f10 = (Float) this.f11557d.a(aVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(a.b bVar, i6.b bVar2, k6.j jVar) {
        this.f11550a = bVar;
        d6.a aVarA = jVar.a().a();
        this.f11551b = aVarA;
        aVarA.a(this);
        bVar2.j(aVarA);
        d6.a aVarA2 = jVar.d().a();
        this.f11552c = aVarA2;
        aVarA2.a(this);
        bVar2.j(aVarA2);
        d6.a aVarA3 = jVar.b().a();
        this.f11553d = aVarA3;
        aVarA3.a(this);
        bVar2.j(aVarA3);
        d6.a aVarA4 = jVar.c().a();
        this.f11554e = aVarA4;
        aVarA4.a(this);
        bVar2.j(aVarA4);
        d6.a aVarA5 = jVar.e().a();
        this.f11555f = aVarA5;
        aVarA5.a(this);
        bVar2.j(aVarA5);
    }

    public void a(Paint paint) {
        if (this.f11556g) {
            this.f11556g = false;
            double dFloatValue = ((double) ((Float) this.f11553d.h()).floatValue()) * 0.017453292519943295d;
            float fFloatValue = ((Float) this.f11554e.h()).floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = ((Integer) this.f11551b.h()).intValue();
            paint.setShadowLayer(((Float) this.f11555f.h()).floatValue(), fSin, fCos, Color.argb(Math.round(((Float) this.f11552c.h()).floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }

    public void b(m6.b bVar) {
        this.f11551b.n(bVar);
    }

    @Override // d6.a.b
    public void c() {
        this.f11556g = true;
        this.f11550a.c();
    }

    public void d(m6.b bVar) {
        this.f11553d.n(bVar);
    }

    public void e(m6.b bVar) {
        this.f11554e.n(bVar);
    }

    public void f(m6.b bVar) {
        if (bVar == null) {
            this.f11552c.n(null);
        } else {
            this.f11552c.n(new a(bVar));
        }
    }

    public void g(m6.b bVar) {
        this.f11555f.n(bVar);
    }
}
