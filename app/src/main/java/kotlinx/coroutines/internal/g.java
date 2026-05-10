package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a */
    private static final Collection f13266a = kotlin.sequences.i.q(kotlin.sequences.i.c(ServiceLoader.load(kotlinx.coroutines.z.class, kotlinx.coroutines.z.class.getClassLoader()).iterator()));

    public static final Collection a() {
        return f13266a;
    }

    public static final void b(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
