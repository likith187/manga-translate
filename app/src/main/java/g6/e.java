package g6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f12093a;

    public e(List list) {
        this.f12093a = list;
    }

    @Override // g6.m
    public d6.a a() {
        return ((m6.c) this.f12093a.get(0)).i() ? new d6.k(this.f12093a) : new d6.j(this.f12093a);
    }

    @Override // g6.m
    public List b() {
        return this.f12093a;
    }

    @Override // g6.m
    public boolean c() {
        return this.f12093a.size() == 1 && ((m6.c) this.f12093a.get(0)).i();
    }
}
