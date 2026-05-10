package j1;

import android.graphics.Color;
import android.graphics.Paint;
import j1.a;

/* JADX INFO: loaded from: classes.dex */
public class c implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.b f12695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j1.a f12696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j1.a f12697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j1.a f12698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j1.a f12699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j1.a f12700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12701g = true;

    class a extends s1.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ s1.c f12702d;

        a(s1.c cVar) {
            this.f12702d = cVar;
        }

        @Override // s1.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Float a(s1.b bVar) {
            Float f10 = (Float) this.f12702d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(a.b bVar, o1.b bVar2, q1.j jVar) {
        this.f12695a = bVar;
        j1.a aVarA = jVar.a().a();
        this.f12696b = aVarA;
        aVarA.a(this);
        bVar2.j(aVarA);
        j1.a aVarA2 = jVar.d().a();
        this.f12697c = aVarA2;
        aVarA2.a(this);
        bVar2.j(aVarA2);
        j1.a aVarA3 = jVar.b().a();
        this.f12698d = aVarA3;
        aVarA3.a(this);
        bVar2.j(aVarA3);
        j1.a aVarA4 = jVar.c().a();
        this.f12699e = aVarA4;
        aVarA4.a(this);
        bVar2.j(aVarA4);
        j1.a aVarA5 = jVar.e().a();
        this.f12700f = aVarA5;
        aVarA5.a(this);
        bVar2.j(aVarA5);
    }

    public void a(Paint paint) {
        if (this.f12701g) {
            this.f12701g = false;
            double dFloatValue = ((double) ((Float) this.f12698d.h()).floatValue()) * 0.017453292519943295d;
            float fFloatValue = ((Float) this.f12699e.h()).floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = ((Integer) this.f12696b.h()).intValue();
            paint.setShadowLayer(((Float) this.f12700f.h()).floatValue(), fSin, fCos, Color.argb(Math.round(((Float) this.f12697c.h()).floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }

    public void b(s1.c cVar) {
        this.f12696b.o(cVar);
    }

    @Override // j1.a.b
    public void c() {
        this.f12701g = true;
        this.f12695a.c();
    }

    public void d(s1.c cVar) {
        this.f12698d.o(cVar);
    }

    public void e(s1.c cVar) {
        this.f12699e.o(cVar);
    }

    public void f(s1.c cVar) {
        if (cVar == null) {
            this.f12697c.o(null);
        } else {
            this.f12697c.o(new a(cVar));
        }
    }

    public void g(s1.c cVar) {
        this.f12700f.o(cVar);
    }
}
