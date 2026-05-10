package d6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o extends g {

    class a extends m6.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ m6.a f11580d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ m6.b f11581e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ f6.b f11582f;

        a(m6.a aVar, m6.b bVar, f6.b bVar2) {
            this.f11580d = aVar;
            this.f11581e = bVar;
            this.f11582f = bVar2;
        }

        @Override // m6.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public f6.b a(m6.a aVar) {
            this.f11580d.h(aVar.f(), aVar.a(), ((f6.b) aVar.g()).f11974a, ((f6.b) aVar.b()).f11974a, aVar.d(), aVar.c(), aVar.e());
            String str = (String) this.f11581e.a(this.f11580d);
            f6.b bVar = (f6.b) (aVar.c() == 1.0f ? aVar.b() : aVar.g());
            this.f11582f.a(str, bVar.f11975b, bVar.f11976c, bVar.f11977d, bVar.f11978e, bVar.f11979f, bVar.f11980g, bVar.f11981h, bVar.f11982i, bVar.f11983j, bVar.f11984k, bVar.f11985l, bVar.f11986m);
            return this.f11582f;
        }
    }

    public o(List list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public f6.b i(m6.c cVar, float f10) {
        Object obj;
        m6.b bVar = this.f11540e;
        if (bVar == null) {
            return (f10 != 1.0f || (obj = cVar.f13848c) == null) ? (f6.b) cVar.f13847b : (f6.b) obj;
        }
        float f11 = cVar.f13852g;
        Float f12 = cVar.f13853h;
        float fFloatValue = f12 == null ? Float.MAX_VALUE : f12.floatValue();
        Object obj2 = cVar.f13847b;
        f6.b bVar2 = (f6.b) obj2;
        Object obj3 = cVar.f13848c;
        return (f6.b) bVar.b(f11, fFloatValue, bVar2, obj3 == null ? (f6.b) obj2 : (f6.b) obj3, f10, d(), f());
    }

    public void q(m6.b bVar) {
        super.n(new a(new m6.a(), bVar, new f6.b()));
    }
}
