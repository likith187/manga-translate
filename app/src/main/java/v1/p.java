package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class p extends e {

    /* JADX INFO: renamed from: a */
    private final n f15922a;

    /* JADX INFO: renamed from: b */
    private final e f15923b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(n operator, e right) {
        super(null);
        r.e(operator, "operator");
        r.e(right, "right");
        this.f15922a = operator;
        this.f15923b = right;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.g(this);
    }

    public final n b() {
        return this.f15922a;
    }

    public final e c() {
        return this.f15923b;
    }
}
