package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l1 extends kotlinx.coroutines.internal.r implements c1, p0, a1 {

    /* JADX INFO: renamed from: f */
    public m1 f13318f;

    @Override // kotlinx.coroutines.p0
    public void a() {
        v().j0(this);
    }

    @Override // kotlinx.coroutines.a1
    public q1 c() {
        return null;
    }

    @Override // kotlinx.coroutines.a1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.r
    public String toString() {
        return g0.a(this) + '@' + g0.b(this) + "[job@" + g0.b(v()) + AbstractJsonLexerKt.END_LIST;
    }

    public final m1 v() {
        m1 m1Var = this.f13318f;
        if (m1Var != null) {
            return m1Var;
        }
        kotlin.jvm.internal.r.r("job");
        return null;
    }

    public final void w(m1 m1Var) {
        this.f13318f = m1Var;
    }
}
