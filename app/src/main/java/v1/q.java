package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class q extends e {

    /* JADX INFO: renamed from: a */
    private final n f15924a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(n name) {
        super(null);
        r.e(name, "name");
        this.f15924a = name;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.f(this);
    }

    public final n b() {
        return this.f15924a;
    }
}
