package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class h extends e {

    /* JADX INFO: renamed from: a */
    private final e f15907a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(e expression) {
        super(null);
        r.e(expression, "expression");
        this.f15907a = expression;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.a(this);
    }

    public final e b() {
        return this.f15907a;
    }
}
