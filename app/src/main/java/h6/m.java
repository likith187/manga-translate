package h6;

/* JADX INFO: loaded from: classes2.dex */
public class m implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g6.m f12307b;

    public m(String str, g6.m mVar) {
        this.f12306a = str;
        this.f12307b = mVar;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.q(oVar, bVar, this);
    }

    public g6.m b() {
        return this.f12307b;
    }

    public String c() {
        return this.f12306a;
    }
}
