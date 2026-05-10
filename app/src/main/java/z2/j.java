package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class j implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f16624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f16625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f16626c;

    public j(m8.a aVar, m8.a aVar2, m8.a aVar3) {
        this.f16624a = aVar;
        this.f16625b = aVar2;
        this.f16626c = aVar3;
    }

    public static j a(m8.a aVar, m8.a aVar2, m8.a aVar3) {
        return new j(aVar, aVar2, aVar3);
    }

    public static i c(Context context, h3.a aVar, h3.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public i get() {
        return c((Context) this.f16624a.get(), (h3.a) this.f16625b.get(), (h3.a) this.f16626c.get());
    }
}
