package h5;

import androidx.lifecycle.c0;
import androidx.lifecycle.l;
import androidx.lifecycle.r;
import java.io.Closeable;
import w3.i;

/* JADX INFO: loaded from: classes.dex */
public interface c extends Closeable, r {
    i V(String str);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @c0(l.a.ON_DESTROY)
    void close();
}
