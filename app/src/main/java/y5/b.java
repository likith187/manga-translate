package y5;

import androidx.appcompat.app.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends x5.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f16568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Object f16569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile Exception f16570d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile String f16572f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f16567a = new ReentrantLock();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile int f16571e = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f16573g = new ArrayList();

    @Override // x5.a
    public void a(int i10, String str) {
        this.f16567a.lock();
        try {
            this.f16568b = true;
            this.f16571e = i10;
            this.f16572f = str;
            c();
        } finally {
            this.f16567a.unlock();
        }
    }

    @Override // x5.a
    public void b(Object obj) {
        this.f16567a.lock();
        try {
            this.f16568b = true;
            this.f16569c = obj;
            c();
        } finally {
            this.f16567a.unlock();
        }
    }

    public final void c() {
        this.f16567a.lock();
        try {
            Iterator it = this.f16573g.iterator();
            if (it.hasNext()) {
                t.a(it.next());
                throw null;
            }
        } finally {
            this.f16567a.unlock();
        }
    }

    public void d(Exception exception) {
        r.e(exception, "exception");
        this.f16567a.lock();
        try {
            this.f16568b = true;
            this.f16570d = exception;
            c();
        } finally {
            this.f16567a.unlock();
        }
    }
}
