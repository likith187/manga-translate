package q9;

import java.util.logging.Handler;
import java.util.logging.LogRecord;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends Handler {
    public static final d INSTANCE = new d();

    private d() {
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord record) {
        r.e(record, "record");
        c cVar = c.INSTANCE;
        String loggerName = record.getLoggerName();
        r.d(loggerName, "record.loggerName");
        int iB = e.b(record);
        String message = record.getMessage();
        r.d(message, "record.message");
        cVar.a(loggerName, iB, message, record.getThrown());
    }
}
