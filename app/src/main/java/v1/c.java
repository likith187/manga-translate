package v1;

import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {

    /* JADX INFO: renamed from: a */
    private final String f15901a;

    /* JADX INFO: renamed from: b */
    private final List f15902b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String name, List arguments) {
        super(null);
        r.e(name, "name");
        r.e(arguments, "arguments");
        this.f15901a = name;
        this.f15902b = arguments;
    }

    @Override // v1.e
    public Object a(f visitor) {
        r.e(visitor, "visitor");
        return visitor.e(this);
    }

    public final List b() {
        return this.f15902b;
    }

    public final String c() {
        return this.f15901a;
    }
}
