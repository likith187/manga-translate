package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class j extends e {

    /* JADX INFO: renamed from: a */
    private final e f15909a;

    /* JADX INFO: renamed from: b */
    private final n f15910b;

    /* JADX INFO: renamed from: c */
    private final e f15911c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(e left, n operator, e right) {
        super(null);
        r.e(left, "left");
        r.e(operator, "operator");
        r.e(right, "right");
        this.f15909a = left;
        this.f15910b = operator;
        this.f15911c = right;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.d(this);
    }

    public final e b() {
        return this.f15909a;
    }

    public final n c() {
        return this.f15910b;
    }

    public final e d() {
        return this.f15911c;
    }
}
