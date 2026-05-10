package t9;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: loaded from: classes2.dex */
public interface y extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    b0 f();

    void flush();

    void p(d dVar, long j10);
}
