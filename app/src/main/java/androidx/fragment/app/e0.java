package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
final class e0 extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f2648b = new StringBuilder(128);

    e0(String str) {
        this.f2647a = str;
    }

    private void c() {
        if (this.f2648b.length() > 0) {
            Log.d(this.f2647a, this.f2648b.toString());
            StringBuilder sb = this.f2648b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        c();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c10 = cArr[i10 + i12];
            if (c10 == '\n') {
                c();
            } else {
                this.f2648b.append(c10);
            }
        }
    }
}
