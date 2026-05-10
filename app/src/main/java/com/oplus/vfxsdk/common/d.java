package com.oplus.vfxsdk.common;

import android.view.Choreographer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f11263c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11261a = "AnimatorHandler";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList f11264d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f11265e = new a();

    public static final class a implements Choreographer.FrameCallback {
        a() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            d.this.c(System.currentTimeMillis() - d.this.f11263c);
            if (d.this.f11262b) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    public final void c(long j10) {
        Iterator it = this.f11264d.iterator();
        while (it.hasNext()) {
            ((p) it.next()).doFrame(j10);
        }
    }

    public final void d() {
        this.f11262b = true;
        this.f11263c = System.currentTimeMillis();
        Choreographer.getInstance().postFrameCallback(this.f11265e);
    }

    public final void e(p listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.f11264d.add(listener);
    }

    public final void f() {
        g();
    }

    public final void g() {
        this.f11262b = false;
        this.f11264d.clear();
        Choreographer.getInstance().removeFrameCallback(this.f11265e);
    }
}
