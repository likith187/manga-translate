package g6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f12094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f12095b;

    public i(b bVar, b bVar2) {
        this.f12094a = bVar;
        this.f12095b = bVar2;
    }

    @Override // g6.m
    public d6.a a() {
        return new d6.n(this.f12094a.a(), this.f12095b.a());
    }

    @Override // g6.m
    public List b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // g6.m
    public boolean c() {
        return this.f12094a.c() && this.f12095b.c();
    }
}
