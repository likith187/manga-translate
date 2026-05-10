package kotlinx.coroutines.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {
    public static final void a(kotlin.coroutines.g gVar, Throwable th) {
        Iterator it = g.a().iterator();
        while (it.hasNext()) {
            try {
                ((kotlinx.coroutines.z) it.next()).b0(gVar, th);
            } catch (l unused) {
                return;
            } catch (Throwable th2) {
                g.b(kotlinx.coroutines.a0.b(th, th2));
            }
        }
        try {
            n8.e.a(th, new i(gVar));
        } catch (Throwable unused2) {
        }
        g.b(th);
    }
}
