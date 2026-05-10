package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public interface h extends s1 {

    public static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w8.l f13248a;

        public a(w8.l lVar) {
            this.f13248a = lVar;
        }

        @Override // kotlinx.coroutines.h
        public void b(Throwable th) {
            this.f13248a.invoke(th);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + g0.a(this.f13248a) + '@' + g0.b(this) + AbstractJsonLexerKt.END_LIST;
        }
    }

    void b(Throwable th);
}
