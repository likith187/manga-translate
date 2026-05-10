package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13300a = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public s(boolean z10) {
        this._cur$volatile = new t(8, z10);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13300a;
        while (true) {
            t tVar = (t) atomicReferenceFieldUpdater.get(this);
            int iA = tVar.a(obj);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.b.a(f13300a, this, tVar, tVar.l());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13300a;
        while (true) {
            t tVar = (t) atomicReferenceFieldUpdater.get(this);
            if (tVar.d()) {
                return;
            } else {
                androidx.concurrent.futures.b.a(f13300a, this, tVar, tVar.l());
            }
        }
    }

    public final int c() {
        return ((t) f13300a.get(this)).g();
    }

    public final Object e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13300a;
        while (true) {
            t tVar = (t) atomicReferenceFieldUpdater.get(this);
            Object objM = tVar.m();
            if (objM != t.f13304h) {
                return objM;
            }
            androidx.concurrent.futures.b.a(f13300a, this, tVar, tVar.l());
        }
    }
}
