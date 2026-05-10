package v1;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends e {

    /* JADX INFO: renamed from: a */
    private final n f15896a;

    /* JADX INFO: renamed from: b */
    private final e f15897b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(n name, e value) {
        super(null);
        r.e(name, "name");
        r.e(value, "value");
        this.f15896a = name;
        this.f15897b = value;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.h(this);
    }

    public final n b() {
        return this.f15896a;
    }

    public final e c() {
        return this.f15897b;
    }
}
