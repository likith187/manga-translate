package d3;

import android.content.Context;
import e3.p;

/* JADX INFO: loaded from: classes.dex */
public final class i implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m8.a f11527d;

    public i(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        this.f11524a = aVar;
        this.f11525b = aVar2;
        this.f11526c = aVar3;
        this.f11527d = aVar4;
    }

    public static i a(m8.a aVar, m8.a aVar2, m8.a aVar3, m8.a aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static p c(Context context, f3.c cVar, e3.d dVar, h3.a aVar) {
        return (p) a3.d.c(h.a(context, cVar, dVar, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public p get() {
        return c((Context) this.f11524a.get(), (f3.c) this.f11525b.get(), (e3.d) this.f11526c.get(), (h3.a) this.f11527d.get());
    }
}
