package com.oplus.vfxsdk.common;

import android.os.Trace;
import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a */
    private final w8.a f11295a;

    /* JADX INFO: renamed from: b */
    private final String f11296b;

    /* JADX INFO: renamed from: c */
    private final CopyOnWriteArrayList f11297c;

    /* JADX INFO: renamed from: d */
    private final CopyOnWriteArrayList f11298d;

    /* JADX INFO: renamed from: e */
    private final ConcurrentHashMap f11299e;

    public static final class a implements c {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Animator f11301b;

        a(Animator animator) {
            this.f11301b = animator;
        }

        @Override // com.oplus.vfxsdk.common.c
        public void a() {
            Log.d(t.this.f11296b, "AnimEndListener onEnd: " + this.f11301b.getData().getName() + " end");
            t.this.e().remove(this.f11301b);
            t.this.d().remove(this.f11301b.getData().getName());
            this.f11301b.removeAnimEndListener(this);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // w8.l
        public final Boolean invoke(Animator animator) {
            return Boolean.valueOf(!animator.isPlay());
        }
    }

    public t(w8.a flush) {
        kotlin.jvm.internal.r.e(flush, "flush");
        this.f11295a = flush;
        this.f11296b = "VFX:RenderUpdateListener";
        this.f11297c = new CopyOnWriteArrayList();
        this.f11298d = new CopyOnWriteArrayList();
        this.f11299e = new ConcurrentHashMap();
    }

    public static final boolean g(w8.l tmp0, Object obj) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    public final void c(Animator listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        if (this.f11297c.contains(listener)) {
            return;
        }
        String name = listener.getData().getName();
        this.f11297c.add(listener);
        this.f11298d.add(listener);
        if (this.f11299e.containsKey(name)) {
            return;
        }
        a aVar = new a(listener);
        this.f11299e.put(name, aVar);
        listener.addAnimEndListener(aVar);
    }

    public final ConcurrentHashMap d() {
        return this.f11299e;
    }

    public final CopyOnWriteArrayList e() {
        return this.f11298d;
    }

    public void f(double d10) {
        if (this.f11298d.isEmpty()) {
            return;
        }
        Trace.beginSection("Animator.onUpdate");
        for (Animator animator : this.f11297c) {
            if (animator.isPlay()) {
                animator.onUpdate(d10);
            }
        }
        Trace.endSection();
        Trace.beginSection("Animator.flush");
        this.f11295a.mo8invoke();
        CopyOnWriteArrayList copyOnWriteArrayList = this.f11297c;
        final b bVar = b.INSTANCE;
        copyOnWriteArrayList.removeIf(new Predicate() { // from class: com.oplus.vfxsdk.common.s
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return t.g(bVar, obj);
            }
        });
        Trace.endSection();
    }

    public final void h(Animator listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.f11297c.remove(listener);
        c cVar = (c) this.f11299e.get(listener.getData().getName());
        if (cVar != null) {
            listener.removeAnimEndListener(cVar);
        }
        this.f11299e.remove(listener.getData().getName());
        this.f11298d.remove(listener);
    }
}
