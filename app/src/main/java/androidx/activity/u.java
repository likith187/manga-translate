package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f226b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private w8.a f227c;

    public u(boolean z10) {
        this.f225a = z10;
    }

    public final void a(c cancellable) {
        kotlin.jvm.internal.r.e(cancellable, "cancellable");
        this.f226b.add(cancellable);
    }

    public final w8.a b() {
        return this.f227c;
    }

    public void c() {
    }

    public abstract void d();

    public void e(b backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
    }

    public void f(b backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
    }

    public final boolean g() {
        return this.f225a;
    }

    public final void h() {
        Iterator it = this.f226b.iterator();
        while (it.hasNext()) {
            ((c) it.next()).cancel();
        }
    }

    public final void i(c cancellable) {
        kotlin.jvm.internal.r.e(cancellable, "cancellable");
        this.f226b.remove(cancellable);
    }

    public final void j(boolean z10) {
        this.f225a = z10;
        w8.a aVar = this.f227c;
        if (aVar != null) {
            aVar.mo8invoke();
        }
    }

    public final void k(w8.a aVar) {
        this.f227c = aVar;
    }
}
