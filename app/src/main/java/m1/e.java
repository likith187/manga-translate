package m1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13812a;

    public e(List list) {
        this.f13812a = list;
    }

    @Override // m1.m
    public j1.a a() {
        return ((s1.a) this.f13812a.get(0)).i() ? new j1.k(this.f13812a) : new j1.j(this.f13812a);
    }

    @Override // m1.m
    public List b() {
        return this.f13812a;
    }

    @Override // m1.m
    public boolean c() {
        return this.f13812a.size() == 1 && ((s1.a) this.f13812a.get(0)).i();
    }
}
