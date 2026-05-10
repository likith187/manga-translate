package androidx.lifecycle;

import androidx.lifecycle.l;
import i.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class u extends l {

    /* JADX INFO: renamed from: k */
    public static final a f2823k = new a(null);

    /* JADX INFO: renamed from: b */
    private final boolean f2824b;

    /* JADX INFO: renamed from: c */
    private i.a f2825c;

    /* JADX INFO: renamed from: d */
    private l.b f2826d;

    /* JADX INFO: renamed from: e */
    private final WeakReference f2827e;

    /* JADX INFO: renamed from: f */
    private int f2828f;

    /* JADX INFO: renamed from: g */
    private boolean f2829g;

    /* JADX INFO: renamed from: h */
    private boolean f2830h;

    /* JADX INFO: renamed from: i */
    private ArrayList f2831i;

    /* JADX INFO: renamed from: j */
    private final kotlinx.coroutines.flow.f f2832j;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l.b a(l.b state1, l.b bVar) {
            kotlin.jvm.internal.r.e(state1, "state1");
            return (bVar == null || bVar.compareTo(state1) >= 0) ? state1 : bVar;
        }

        private a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a */
        private l.b f2833a;

        /* JADX INFO: renamed from: b */
        private p f2834b;

        public b(r rVar, l.b initialState) {
            kotlin.jvm.internal.r.e(initialState, "initialState");
            kotlin.jvm.internal.r.b(rVar);
            this.f2834b = x.f(rVar);
            this.f2833a = initialState;
        }

        public final void a(s sVar, l.a event) {
            kotlin.jvm.internal.r.e(event, "event");
            l.b targetState = event.getTargetState();
            this.f2833a = u.f2823k.a(this.f2833a, targetState);
            p pVar = this.f2834b;
            kotlin.jvm.internal.r.b(sVar);
            pVar.onStateChanged(sVar, event);
            this.f2833a = targetState;
        }

        public final l.b b() {
            return this.f2833a;
        }
    }

    private u(s sVar, boolean z10) {
        this.f2824b = z10;
        this.f2825c = new i.a();
        l.b bVar = l.b.INITIALIZED;
        this.f2826d = bVar;
        this.f2831i = new ArrayList();
        this.f2827e = new WeakReference(sVar);
        this.f2832j = kotlinx.coroutines.flow.i.a(bVar);
    }

    private final void e(s sVar) {
        Iterator itA = this.f2825c.a();
        kotlin.jvm.internal.r.d(itA, "descendingIterator(...)");
        while (itA.hasNext() && !this.f2830h) {
            Map.Entry entry = (Map.Entry) itA.next();
            kotlin.jvm.internal.r.b(entry);
            r rVar = (r) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f2826d) > 0 && !this.f2830h && this.f2825c.contains(rVar)) {
                l.a aVarA = l.a.Companion.a(bVar.b());
                if (aVarA == null) {
                    throw new IllegalStateException("no event down from " + bVar.b());
                }
                m(aVarA.getTargetState());
                bVar.a(sVar, aVarA);
                l();
            }
        }
    }

    private final l.b f(r rVar) {
        b bVar;
        Map.Entry entryI = this.f2825c.i(rVar);
        l.b bVar2 = null;
        l.b bVarB = (entryI == null || (bVar = (b) entryI.getValue()) == null) ? null : bVar.b();
        if (!this.f2831i.isEmpty()) {
            bVar2 = (l.b) this.f2831i.get(r0.size() - 1);
        }
        a aVar = f2823k;
        return aVar.a(aVar.a(this.f2826d, bVarB), bVar2);
    }

    private final void g(String str) {
        if (!this.f2824b || w.a()) {
            return;
        }
        throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
    }

    private final void h(s sVar) {
        b.d dVarD = this.f2825c.d();
        kotlin.jvm.internal.r.d(dVarD, "iteratorWithAdditions(...)");
        while (dVarD.hasNext() && !this.f2830h) {
            Map.Entry entry = (Map.Entry) dVarD.next();
            r rVar = (r) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f2826d) < 0 && !this.f2830h && this.f2825c.contains(rVar)) {
                m(bVar.b());
                l.a aVarC = l.a.Companion.c(bVar.b());
                if (aVarC == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(sVar, aVarC);
                l();
            }
        }
    }

    private final boolean j() {
        if (this.f2825c.size() == 0) {
            return true;
        }
        Map.Entry entryB = this.f2825c.b();
        kotlin.jvm.internal.r.b(entryB);
        l.b bVarB = ((b) entryB.getValue()).b();
        Map.Entry entryE = this.f2825c.e();
        kotlin.jvm.internal.r.b(entryE);
        l.b bVarB2 = ((b) entryE.getValue()).b();
        return bVarB == bVarB2 && this.f2826d == bVarB2;
    }

    private final void k(l.b bVar) {
        if (this.f2826d == bVar) {
            return;
        }
        v.a((s) this.f2827e.get(), this.f2826d, bVar);
        this.f2826d = bVar;
        if (this.f2829g || this.f2828f != 0) {
            this.f2830h = true;
            return;
        }
        this.f2829g = true;
        o();
        this.f2829g = false;
        if (this.f2826d == l.b.DESTROYED) {
            this.f2825c = new i.a();
        }
    }

    private final void l() {
        this.f2831i.remove(r1.size() - 1);
    }

    private final void m(l.b bVar) {
        this.f2831i.add(bVar);
    }

    private final void o() {
        s sVar = (s) this.f2827e.get();
        if (sVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (!j()) {
            this.f2830h = false;
            l.b bVar = this.f2826d;
            Map.Entry entryB = this.f2825c.b();
            kotlin.jvm.internal.r.b(entryB);
            if (bVar.compareTo(((b) entryB.getValue()).b()) < 0) {
                e(sVar);
            }
            Map.Entry entryE = this.f2825c.e();
            if (!this.f2830h && entryE != null && this.f2826d.compareTo(((b) entryE.getValue()).b()) > 0) {
                h(sVar);
            }
        }
        this.f2830h = false;
        this.f2832j.setValue(b());
    }

    @Override // androidx.lifecycle.l
    public void a(r observer) {
        s sVar;
        kotlin.jvm.internal.r.e(observer, "observer");
        g("addObserver");
        l.b bVar = this.f2826d;
        l.b bVar2 = l.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = l.b.INITIALIZED;
        }
        b bVar3 = new b(observer, bVar2);
        if (((b) this.f2825c.g(observer, bVar3)) == null && (sVar = (s) this.f2827e.get()) != null) {
            boolean z10 = this.f2828f != 0 || this.f2829g;
            l.b bVarF = f(observer);
            this.f2828f++;
            while (bVar3.b().compareTo(bVarF) < 0 && this.f2825c.contains(observer)) {
                m(bVar3.b());
                l.a aVarC = l.a.Companion.c(bVar3.b());
                if (aVarC == null) {
                    throw new IllegalStateException("no event up from " + bVar3.b());
                }
                bVar3.a(sVar, aVarC);
                l();
                bVarF = f(observer);
            }
            if (!z10) {
                o();
            }
            this.f2828f--;
        }
    }

    @Override // androidx.lifecycle.l
    public l.b b() {
        return this.f2826d;
    }

    @Override // androidx.lifecycle.l
    public void d(r observer) {
        kotlin.jvm.internal.r.e(observer, "observer");
        g("removeObserver");
        this.f2825c.h(observer);
    }

    public void i(l.a event) {
        kotlin.jvm.internal.r.e(event, "event");
        g("handleLifecycleEvent");
        k(event.getTargetState());
    }

    public void n(l.b state) {
        kotlin.jvm.internal.r.e(state, "state");
        g("setCurrentState");
        k(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(s provider) {
        this(provider, true);
        kotlin.jvm.internal.r.e(provider, "provider");
    }
}
