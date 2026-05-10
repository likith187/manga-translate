package s0;

import android.database.Cursor;
import android.os.CancellationSignal;
import java.io.Closeable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface b extends Closeable {
    f J(String str);

    boolean W();

    String a();

    void g0();

    boolean isOpen();

    void l();

    int l0();

    void m();

    Cursor p0(e eVar);

    List t();

    Cursor t0(e eVar, CancellationSignal cancellationSignal);

    void y(String str);

    Cursor y0(String str);
}
