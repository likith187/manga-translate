package m1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f13813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f13814b;

    public i(b bVar, b bVar2) {
        this.f13813a = bVar;
        this.f13814b = bVar2;
    }

    @Override // m1.m
    public j1.a a() {
        return new j1.n(this.f13813a.a(), this.f13814b.a());
    }

    @Override // m1.m
    public List b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // m1.m
    public boolean c() {
        return this.f13813a.c() && this.f13814b.c();
    }
}
