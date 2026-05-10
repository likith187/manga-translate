package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends m1 implements f1, kotlin.coroutines.d, c0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlin.coroutines.g f13165c;

    public a(kotlin.coroutines.g gVar, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            O((f1) gVar.get(f1.f13228g));
        }
        this.f13165c = gVar.plus(this);
    }

    public final void A0(e0 e0Var, Object obj, w8.p pVar) {
        e0Var.invoke(pVar, obj, this);
    }

    @Override // kotlinx.coroutines.m1
    public final void M(Throwable th) {
        a0.a(this.f13165c, th);
    }

    @Override // kotlinx.coroutines.m1
    public String Y() {
        String strB = x.b(this.f13165c);
        if (strB == null) {
            return super.Y();
        }
        return AbstractJsonLexerKt.STRING + strB + "\":" + super.Y();
    }

    @Override // kotlinx.coroutines.c0
    public kotlin.coroutines.g c() {
        return this.f13165c;
    }

    @Override // kotlinx.coroutines.m1
    protected final void f0(Object obj) {
        if (!(obj instanceof t)) {
            z0(obj);
        } else {
            t tVar = (t) obj;
            y0(tVar.f13378a, tVar.a());
        }
    }

    @Override // kotlin.coroutines.d
    public final kotlin.coroutines.g getContext() {
        return this.f13165c;
    }

    @Override // kotlinx.coroutines.m1, kotlinx.coroutines.f1
    public boolean isActive() {
        return super.isActive();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.m1
    public String r() {
        return g0.a(this) + " was cancelled";
    }

    @Override // kotlin.coroutines.d
    public final void resumeWith(Object obj) {
        Object objV = V(w.d(obj, null, 1, null));
        if (objV == n1.f13335b) {
            return;
        }
        x0(objV);
    }

    protected void x0(Object obj) {
        m(obj);
    }

    protected void y0(Throwable th, boolean z10) {
    }

    protected void z0(Object obj) {
    }
}
