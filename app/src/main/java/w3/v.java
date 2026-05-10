package w3;

import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f16008a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue f16009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f16010c;

    v() {
    }

    public final void a(u uVar) {
        synchronized (this.f16008a) {
            try {
                if (this.f16009b == null) {
                    this.f16009b = new ArrayDeque();
                }
                this.f16009b.add(uVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(i iVar) {
        u uVar;
        synchronized (this.f16008a) {
            if (this.f16009b != null && !this.f16010c) {
                this.f16010c = true;
                while (true) {
                    synchronized (this.f16008a) {
                        try {
                            uVar = (u) this.f16009b.poll();
                            if (uVar == null) {
                                this.f16010c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    uVar.a(iVar);
                }
            }
        }
    }
}
