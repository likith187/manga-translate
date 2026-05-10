package x9;

import java.io.PrintStream;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public interface g {

    public static class a {
        public static g a() {
            return y9.a.a() ? y9.a.b().f16575a : new b();
        }
    }

    public static class b implements g {
        @Override // x9.g
        public void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // x9.g
        public void b(Level level, String str, Throwable th) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th.printStackTrace(printStream);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th);
}
