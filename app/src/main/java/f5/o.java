package f5;

import f5.a;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class o extends PhantomReference implements a.InterfaceC0142a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f11951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f11952b;

    /* synthetic */ o(Object obj, ReferenceQueue referenceQueue, Set set, Runnable runnable, n nVar) {
        super(obj, referenceQueue);
        this.f11951a = set;
        this.f11952b = runnable;
    }

    @Override // f5.a.InterfaceC0142a
    public final void a() {
        if (this.f11951a.remove(this)) {
            clear();
            this.f11952b.run();
        }
    }
}
