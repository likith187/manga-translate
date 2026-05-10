package f5;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
final class c0 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f11929a;

    /* synthetic */ c0(k kVar, b0 b0Var) {
        this.f11929a = kVar;
        com.google.android.gms.common.internal.k.j(((Thread) kVar.f11948d.getAndSet(Thread.currentThread())) == null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11929a.f11948d.set(null);
        this.f11929a.e();
    }
}
