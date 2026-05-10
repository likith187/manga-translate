package v1;

import java.math.BigDecimal;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class i extends e {

    /* JADX INFO: renamed from: a */
    private final BigDecimal f15908a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(BigDecimal value) {
        super(null);
        r.e(value, "value");
        this.f15908a = value;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.b(this);
    }

    public final BigDecimal b() {
        return this.f15908a;
    }
}
