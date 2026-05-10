package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class l implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f16632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f16633b;

    public l(m8.a aVar, m8.a aVar2) {
        this.f16632a = aVar;
        this.f16633b = aVar2;
    }

    public static l a(m8.a aVar, m8.a aVar2) {
        return new l(aVar, aVar2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public k get() {
        return c((Context) this.f16632a.get(), this.f16633b.get());
    }
}
