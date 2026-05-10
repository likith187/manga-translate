package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
final class q0 implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p0 f13346a;

    public q0(p0 p0Var) {
        this.f13346a = p0Var;
    }

    @Override // kotlinx.coroutines.h
    public void b(Throwable th) {
        this.f13346a.a();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f13346a + AbstractJsonLexerKt.END_LIST;
    }
}
