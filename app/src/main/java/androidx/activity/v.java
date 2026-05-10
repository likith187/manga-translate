package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.v;
import androidx.lifecycle.l;
import java.util.Iterator;
import java.util.ListIterator;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a */
    private final Runnable f228a;

    /* JADX INFO: renamed from: b */
    private final c0.a f229b;

    /* JADX INFO: renamed from: c */
    private final kotlin.collections.h f230c;

    /* JADX INFO: renamed from: d */
    private u f231d;

    /* JADX INFO: renamed from: e */
    private OnBackInvokedCallback f232e;

    /* JADX INFO: renamed from: f */
    private OnBackInvokedDispatcher f233f;

    /* JADX INFO: renamed from: g */
    private boolean f234g;

    /* JADX INFO: renamed from: h */
    private boolean f235h;

    static final class a extends kotlin.jvm.internal.s implements w8.l {
        a() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((androidx.activity.b) obj);
            return h0.INSTANCE;
        }

        public final void invoke(androidx.activity.b backEvent) {
            kotlin.jvm.internal.r.e(backEvent, "backEvent");
            v.this.m(backEvent);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((androidx.activity.b) obj);
            return h0.INSTANCE;
        }

        public final void invoke(androidx.activity.b backEvent) {
            kotlin.jvm.internal.r.e(backEvent, "backEvent");
            v.this.l(backEvent);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            m1invoke();
            return h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke */
        public final void m1invoke() {
            v.this.k();
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            m2invoke();
            return h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke */
        public final void m2invoke() {
            v.this.j();
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            m3invoke();
            return h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke */
        public final void m3invoke() {
            v.this.k();
        }
    }

    public static final class f {
        public static final f INSTANCE = new f();

        private f() {
        }

        public static final void c(w8.a onBackInvoked) {
            kotlin.jvm.internal.r.e(onBackInvoked, "$onBackInvoked");
            onBackInvoked.mo8invoke();
        }

        public final OnBackInvokedCallback b(final w8.a onBackInvoked) {
            kotlin.jvm.internal.r.e(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.w
                public final void onBackInvoked() {
                    v.f.c(onBackInvoked);
                }
            };
        }

        public final void d(Object dispatcher, int i10, Object callback) {
            kotlin.jvm.internal.r.e(dispatcher, "dispatcher");
            kotlin.jvm.internal.r.e(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) callback);
        }

        public final void e(Object dispatcher, Object callback) {
            kotlin.jvm.internal.r.e(dispatcher, "dispatcher");
            kotlin.jvm.internal.r.e(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    public static final class g {
        public static final g INSTANCE = new g();

        public static final class a implements OnBackAnimationCallback {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ w8.l f236a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ w8.l f237b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ w8.a f238c;

            /* JADX INFO: renamed from: d */
            final /* synthetic */ w8.a f239d;

            a(w8.l lVar, w8.l lVar2, w8.a aVar, w8.a aVar2) {
                this.f236a = lVar;
                this.f237b = lVar2;
                this.f238c = aVar;
                this.f239d = aVar2;
            }

            public void onBackCancelled() {
                this.f239d.mo8invoke();
            }

            public void onBackInvoked() {
                this.f238c.mo8invoke();
            }

            public void onBackProgressed(BackEvent backEvent) {
                kotlin.jvm.internal.r.e(backEvent, "backEvent");
                this.f237b.invoke(new androidx.activity.b(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                kotlin.jvm.internal.r.e(backEvent, "backEvent");
                this.f236a.invoke(new androidx.activity.b(backEvent));
            }
        }

        private g() {
        }

        public final OnBackInvokedCallback a(w8.l onBackStarted, w8.l onBackProgressed, w8.a onBackInvoked, w8.a onBackCancelled) {
            kotlin.jvm.internal.r.e(onBackStarted, "onBackStarted");
            kotlin.jvm.internal.r.e(onBackProgressed, "onBackProgressed");
            kotlin.jvm.internal.r.e(onBackInvoked, "onBackInvoked");
            kotlin.jvm.internal.r.e(onBackCancelled, "onBackCancelled");
            return new a(onBackStarted, onBackProgressed, onBackInvoked, onBackCancelled);
        }
    }

    private final class h implements androidx.lifecycle.p, androidx.activity.c {

        /* JADX INFO: renamed from: a */
        private final androidx.lifecycle.l f240a;

        /* JADX INFO: renamed from: b */
        private final u f241b;

        /* JADX INFO: renamed from: c */
        private androidx.activity.c f242c;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ v f243f;

        public h(v vVar, androidx.lifecycle.l lifecycle, u onBackPressedCallback) {
            kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
            kotlin.jvm.internal.r.e(onBackPressedCallback, "onBackPressedCallback");
            this.f243f = vVar;
            this.f240a = lifecycle;
            this.f241b = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f240a.d(this);
            this.f241b.i(this);
            androidx.activity.c cVar = this.f242c;
            if (cVar != null) {
                cVar.cancel();
            }
            this.f242c = null;
        }

        @Override // androidx.lifecycle.p
        public void onStateChanged(androidx.lifecycle.s source, l.a event) {
            kotlin.jvm.internal.r.e(source, "source");
            kotlin.jvm.internal.r.e(event, "event");
            if (event == l.a.ON_START) {
                this.f242c = this.f243f.i(this.f241b);
                return;
            }
            if (event != l.a.ON_STOP) {
                if (event == l.a.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.c cVar = this.f242c;
                if (cVar != null) {
                    cVar.cancel();
                }
            }
        }
    }

    private final class i implements androidx.activity.c {

        /* JADX INFO: renamed from: a */
        private final u f244a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ v f245b;

        public i(v vVar, u onBackPressedCallback) {
            kotlin.jvm.internal.r.e(onBackPressedCallback, "onBackPressedCallback");
            this.f245b = vVar;
            this.f244a = onBackPressedCallback;
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f245b.f230c.remove(this.f244a);
            if (kotlin.jvm.internal.r.a(this.f245b.f231d, this.f244a)) {
                this.f244a.c();
                this.f245b.f231d = null;
            }
            this.f244a.i(this);
            w8.a aVarB = this.f244a.b();
            if (aVarB != null) {
                aVarB.mo8invoke();
            }
            this.f244a.k(null);
        }
    }

    /* synthetic */ class j extends kotlin.jvm.internal.o implements w8.a {
        j(Object obj) {
            super(0, obj, v.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            m4invoke();
            return h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke */
        public final void m4invoke() {
            ((v) this.receiver).p();
        }
    }

    /* synthetic */ class k extends kotlin.jvm.internal.o implements w8.a {
        k(Object obj) {
            super(0, obj, v.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            m5invoke();
            return h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke */
        public final void m5invoke() {
            ((v) this.receiver).p();
        }
    }

    public v(Runnable runnable, c0.a aVar) {
        this.f228a = runnable;
        this.f229b = aVar;
        this.f230c = new kotlin.collections.h();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            this.f232e = i10 >= 34 ? g.INSTANCE.a(new a(), new b(), new c(), new d()) : f.INSTANCE.b(new e());
        }
    }

    public final void j() {
        Object objPrevious;
        u uVar = this.f231d;
        if (uVar == null) {
            kotlin.collections.h hVar = this.f230c;
            ListIterator<E> listIterator = hVar.listIterator(hVar.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    if (((u) objPrevious).g()) {
                        break;
                    }
                }
            }
            uVar = (u) objPrevious;
        }
        this.f231d = null;
        if (uVar != null) {
            uVar.c();
        }
    }

    public final void l(androidx.activity.b bVar) {
        Object objPrevious;
        u uVar = this.f231d;
        if (uVar == null) {
            kotlin.collections.h hVar = this.f230c;
            ListIterator<E> listIterator = hVar.listIterator(hVar.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    if (((u) objPrevious).g()) {
                        break;
                    }
                }
            }
            uVar = (u) objPrevious;
        }
        if (uVar != null) {
            uVar.e(bVar);
        }
    }

    public final void m(androidx.activity.b bVar) {
        Object objPrevious;
        kotlin.collections.h hVar = this.f230c;
        ListIterator<E> listIterator = hVar.listIterator(hVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            } else {
                objPrevious = listIterator.previous();
                if (((u) objPrevious).g()) {
                    break;
                }
            }
        }
        u uVar = (u) objPrevious;
        if (this.f231d != null) {
            j();
        }
        this.f231d = uVar;
        if (uVar != null) {
            uVar.f(bVar);
        }
    }

    private final void o(boolean z10) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f233f;
        OnBackInvokedCallback onBackInvokedCallback = this.f232e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        if (z10 && !this.f234g) {
            f.INSTANCE.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f234g = true;
        } else {
            if (z10 || !this.f234g) {
                return;
            }
            f.INSTANCE.e(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f234g = false;
        }
    }

    public final void p() {
        boolean z10 = this.f235h;
        kotlin.collections.h hVar = this.f230c;
        boolean z11 = false;
        if (hVar == null || !hVar.isEmpty()) {
            Iterator<E> it = hVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((u) it.next()).g()) {
                    z11 = true;
                    break;
                }
            }
        }
        this.f235h = z11;
        if (z11 != z10) {
            c0.a aVar = this.f229b;
            if (aVar != null) {
                aVar.accept(Boolean.valueOf(z11));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                o(z11);
            }
        }
    }

    public final void h(androidx.lifecycle.s owner, u onBackPressedCallback) {
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(onBackPressedCallback, "onBackPressedCallback");
        androidx.lifecycle.l lifecycle = owner.getLifecycle();
        if (lifecycle.b() == l.b.DESTROYED) {
            return;
        }
        onBackPressedCallback.a(new h(this, lifecycle, onBackPressedCallback));
        p();
        onBackPressedCallback.k(new j(this));
    }

    public final androidx.activity.c i(u onBackPressedCallback) {
        kotlin.jvm.internal.r.e(onBackPressedCallback, "onBackPressedCallback");
        this.f230c.add(onBackPressedCallback);
        i iVar = new i(this, onBackPressedCallback);
        onBackPressedCallback.a(iVar);
        p();
        onBackPressedCallback.k(new k(this));
        return iVar;
    }

    public final void k() {
        Object objPrevious;
        u uVar = this.f231d;
        if (uVar == null) {
            kotlin.collections.h hVar = this.f230c;
            ListIterator<E> listIterator = hVar.listIterator(hVar.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    if (((u) objPrevious).g()) {
                        break;
                    }
                }
            }
            uVar = (u) objPrevious;
        }
        this.f231d = null;
        if (uVar != null) {
            uVar.d();
            return;
        }
        Runnable runnable = this.f228a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void n(OnBackInvokedDispatcher invoker) {
        kotlin.jvm.internal.r.e(invoker, "invoker");
        this.f233f = invoker;
        o(this.f235h);
    }

    public v(Runnable runnable) {
        this(runnable, null);
    }
}
