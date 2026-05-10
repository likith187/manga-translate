package androidx.activity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.a f218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f223g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f224h;

    public s(Executor executor, w8.a reportFullyDrawn) {
        kotlin.jvm.internal.r.e(executor, "executor");
        kotlin.jvm.internal.r.e(reportFullyDrawn, "reportFullyDrawn");
        this.f217a = executor;
        this.f218b = reportFullyDrawn;
        this.f219c = new Object();
        this.f223g = new ArrayList();
        this.f224h = new Runnable() { // from class: androidx.activity.r
            @Override // java.lang.Runnable
            public final void run() {
                s.d(this.f182a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(s this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        synchronized (this$0.f219c) {
            try {
                this$0.f221e = false;
                if (this$0.f220d == 0 && !this$0.f222f) {
                    this$0.f218b.mo8invoke();
                    this$0.b();
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.f219c) {
            try {
                this.f222f = true;
                Iterator it = this.f223g.iterator();
                while (it.hasNext()) {
                    ((w8.a) it.next()).mo8invoke();
                }
                this.f223g.clear();
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f219c) {
            z10 = this.f222f;
        }
        return z10;
    }
}
