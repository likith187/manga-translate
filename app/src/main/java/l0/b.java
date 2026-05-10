package l0;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import l0.a;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {
    public b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // l0.a
    public Object a(a.c key) {
        r.e(key, "key");
        return b().get(key);
    }

    public final void c(a.c key, Object obj) {
        r.e(key, "key");
        b().put(key, obj);
    }

    public b(Map initialExtras) {
        r.e(initialExtras, "initialExtras");
        b().putAll(initialExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(a initialExtras) {
        this(initialExtras.b());
        r.e(initialExtras, "initialExtras");
    }

    public /* synthetic */ b(a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? a.b.INSTANCE : aVar);
    }
}
