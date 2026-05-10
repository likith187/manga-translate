package y2;

import android.content.Context;
import f3.c0;
import f3.i0;
import y2.s;

/* JADX INFO: loaded from: classes.dex */
final class d extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m8.a f16521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m8.a f16522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m8.a f16523c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private m8.a f16524f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m8.a f16525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private m8.a f16526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private m8.a f16527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private m8.a f16528k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private m8.a f16529l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private m8.a f16530m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private m8.a f16531n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private m8.a f16532o;

    private static final class b implements s.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f16533a;

        private b() {
        }

        @Override // y2.s.a
        public s a() {
            a3.d.a(this.f16533a, Context.class);
            return new d(this.f16533a);
        }

        @Override // y2.s.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public b b(Context context) {
            this.f16533a = (Context) a3.d.b(context);
            return this;
        }
    }

    public static s.a k() {
        return new b();
    }

    private void v(Context context) {
        this.f16521a = a3.a.a(j.a());
        a3.b bVarA = a3.c.a(context);
        this.f16522b = bVarA;
        z2.j jVarA = z2.j.a(bVarA, h3.c.a(), h3.d.a());
        this.f16523c = jVarA;
        this.f16524f = a3.a.a(z2.l.a(this.f16522b, jVarA));
        this.f16525h = i0.a(this.f16522b, f3.f.a(), f3.g.a());
        this.f16526i = a3.a.a(c0.a(h3.c.a(), h3.d.a(), f3.h.a(), this.f16525h));
        d3.g gVarB = d3.g.b(h3.c.a());
        this.f16527j = gVarB;
        d3.i iVarA = d3.i.a(this.f16522b, this.f16526i, gVarB, h3.d.a());
        this.f16528k = iVarA;
        m8.a aVar = this.f16521a;
        m8.a aVar2 = this.f16524f;
        m8.a aVar3 = this.f16526i;
        this.f16529l = d3.d.a(aVar, aVar2, iVarA, aVar3, aVar3);
        m8.a aVar4 = this.f16522b;
        m8.a aVar5 = this.f16524f;
        m8.a aVar6 = this.f16526i;
        this.f16530m = e3.k.a(aVar4, aVar5, aVar6, this.f16528k, this.f16521a, aVar6, h3.c.a());
        m8.a aVar7 = this.f16521a;
        m8.a aVar8 = this.f16526i;
        this.f16531n = e3.o.a(aVar7, aVar8, this.f16528k, aVar8);
        this.f16532o = a3.a.a(t.a(h3.c.a(), h3.d.a(), this.f16529l, this.f16530m, this.f16531n));
    }

    @Override // y2.s
    f3.c c() {
        return (f3.c) this.f16526i.get();
    }

    @Override // y2.s
    r i() {
        return (r) this.f16532o.get();
    }

    private d(Context context) {
        v(context);
    }
}
