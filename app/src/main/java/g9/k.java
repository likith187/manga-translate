package g9;

import kotlinx.coroutines.g0;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f12151c;

    public k(Runnable runnable, long j10, i iVar) {
        super(j10, iVar);
        this.f12151c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f12151c.run();
        } finally {
            this.f12149b.a();
        }
    }

    public String toString() {
        return "Task[" + g0.a(this.f12151c) + '@' + g0.b(this.f12151c) + ", " + this.f12148a + ", " + this.f12149b + AbstractJsonLexerKt.END_LIST;
    }
}
