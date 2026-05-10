package kotlinx.coroutines;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public interface c1 {

    public static final class a implements c1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w8.l f13176a;

        public a(w8.l lVar) {
            this.f13176a = lVar;
        }

        @Override // kotlinx.coroutines.c1
        public void b(Throwable th) {
            this.f13176a.invoke(th);
        }

        public String toString() {
            return "InternalCompletionHandler.UserSupplied[" + g0.a(this.f13176a) + '@' + g0.b(this) + AbstractJsonLexerKt.END_LIST;
        }
    }

    void b(Throwable th);
}
