package f3;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class i0 implements a3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m8.a f11897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m8.a f11898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m8.a f11899c;

    public i0(m8.a aVar, m8.a aVar2, m8.a aVar3) {
        this.f11897a = aVar;
        this.f11898b = aVar2;
        this.f11899c = aVar3;
    }

    public static i0 a(m8.a aVar, m8.a aVar2, m8.a aVar3) {
        return new i0(aVar, aVar2, aVar3);
    }

    public static h0 c(Context context, String str, int i10) {
        return new h0(context, str, i10);
    }

    @Override // m8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public h0 get() {
        return c((Context) this.f11897a.get(), (String) this.f11898b.get(), ((Integer) this.f11899c.get()).intValue());
    }
}
