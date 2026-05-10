package y2;

import android.util.Base64;
import y2.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    public static abstract class a {
        public abstract m a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(w2.d dVar);
    }

    public static a a() {
        return new c.b().d(w2.d.DEFAULT);
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract w2.d d();

    public m e(w2.d dVar) {
        return a().b(b()).d(dVar).c(c()).a();
    }

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", b(), d(), c() == null ? "" : Base64.encodeToString(c(), 2));
    }
}
