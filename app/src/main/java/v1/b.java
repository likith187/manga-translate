package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends e {

    /* JADX INFO: renamed from: a */
    private final e f15898a;

    /* JADX INFO: renamed from: b */
    private final n f15899b;

    /* JADX INFO: renamed from: c */
    private final e f15900c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(e left, n operator, e right) {
        super(null);
        r.e(left, "left");
        r.e(operator, "operator");
        r.e(right, "right");
        this.f15898a = left;
        this.f15899b = operator;
        this.f15900c = right;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.c(this);
    }

    public final e b() {
        return this.f15898a;
    }

    public final n c() {
        return this.f15899b;
    }

    public final e d() {
        return this.f15900c;
    }
}
