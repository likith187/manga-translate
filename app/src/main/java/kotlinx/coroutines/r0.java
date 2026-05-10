package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
final class r0 implements a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f13347a;

    public r0(boolean z10) {
        this.f13347a = z10;
    }

    @Override // kotlinx.coroutines.a1
    public q1 c() {
        return null;
    }

    @Override // kotlinx.coroutines.a1
    public boolean isActive() {
        return this.f13347a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
