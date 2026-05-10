package f5;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f11932b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f11933c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f11934a;

    private f(Looper looper) {
        this.f11934a = new com.google.android.gms.internal.mlkit_common.a(looper);
    }

    public static f a() {
        f fVar;
        synchronized (f11932b) {
            try {
                if (f11933c == null) {
                    HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                    handlerThread.start();
                    f11933c = new f(handlerThread.getLooper());
                }
                fVar = f11933c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    public static Executor d() {
        return q.zza;
    }

    public w3.i b(final Callable callable) {
        final w3.j jVar = new w3.j();
        c(new Runnable() { // from class: f5.p
            @Override // java.lang.Runnable
            public final void run() {
                Callable callable2 = callable;
                w3.j jVar2 = jVar;
                try {
                    jVar2.c(callable2.call());
                } catch (b5.a e10) {
                    jVar2.b(e10);
                } catch (Exception e11) {
                    jVar2.b(new b5.a("Internal error has occurred when executing ML Kit tasks", 13, e11));
                }
            }
        });
        return jVar.a();
    }

    public void c(Runnable runnable) {
        d().execute(runnable);
    }
}
