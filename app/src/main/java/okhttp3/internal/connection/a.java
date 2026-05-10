package okhttp3.internal.connection;

import kotlin.jvm.internal.r;
import okhttp3.b0;
import okhttp3.v;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements v {
    public static final a INSTANCE = new a();

    private a() {
    }

    @Override // okhttp3.v
    public b0 a(v.a chain) {
        r.e(chain, "chain");
        m9.g gVar = (m9.g) chain;
        return m9.g.d(gVar, 0, gVar.e().o(gVar), null, 0, 0, 0, 61, null).b(gVar.i());
    }
}
