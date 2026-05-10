package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class o extends g {

    class a extends s1.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ s1.b f12727d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ s1.c f12728e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ l1.b f12729f;

        a(s1.b bVar, s1.c cVar, l1.b bVar2) {
            this.f12727d = bVar;
            this.f12728e = cVar;
            this.f12729f = bVar2;
        }

        @Override // s1.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public l1.b a(s1.b bVar) {
            this.f12727d.h(bVar.f(), bVar.a(), ((l1.b) bVar.g()).f13540a, ((l1.b) bVar.b()).f13540a, bVar.d(), bVar.c(), bVar.e());
            String str = (String) this.f12728e.a(this.f12727d);
            l1.b bVar2 = (l1.b) (bVar.c() == 1.0f ? bVar.b() : bVar.g());
            this.f12729f.a(str, bVar2.f13541b, bVar2.f13542c, bVar2.f13543d, bVar2.f13544e, bVar2.f13545f, bVar2.f13546g, bVar2.f13547h, bVar2.f13548i, bVar2.f13549j, bVar2.f13550k, bVar2.f13551l, bVar2.f13552m);
            return this.f12729f;
        }
    }

    public o(List list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public l1.b i(s1.a aVar, float f10) {
        Object obj;
        s1.c cVar = this.f12685e;
        if (cVar == null) {
            return (f10 != 1.0f || (obj = aVar.f15505c) == null) ? (l1.b) aVar.f15504b : (l1.b) obj;
        }
        float f11 = aVar.f15509g;
        Float f12 = aVar.f15510h;
        float fFloatValue = f12 == null ? Float.MAX_VALUE : f12.floatValue();
        Object obj2 = aVar.f15504b;
        l1.b bVar = (l1.b) obj2;
        Object obj3 = aVar.f15505c;
        return (l1.b) cVar.b(f11, fFloatValue, bVar, obj3 == null ? (l1.b) obj2 : (l1.b) obj3, f10, d(), f());
    }

    public void r(s1.c cVar) {
        super.o(new a(new s1.b(), cVar, new l1.b()));
    }
}
