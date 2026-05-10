package y2;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
abstract class s implements Closeable {

    interface a {
        s a();

        a b(Context context);
    }

    s() {
    }

    abstract f3.c c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        c().close();
    }

    abstract r i();
}
