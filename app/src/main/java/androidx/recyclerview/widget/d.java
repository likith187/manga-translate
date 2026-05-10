package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Executor f3272h = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.recyclerview.widget.c f3274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Executor f3275c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f3277e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3279g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f3276d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f3278f = Collections.emptyList();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f3280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f3281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f3282c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Runnable f3283f;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.d$a$a, reason: collision with other inner class name */
        class C0039a extends k.b {
            C0039a() {
            }

            @Override // androidx.recyclerview.widget.k.b
            public boolean a(int i10, int i11) {
                Object obj = a.this.f3280a.get(i10);
                Object obj2 = a.this.f3281b.get(i11);
                if (obj != null && obj2 != null) {
                    return d.this.f3274b.b().areContentsTheSame(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            }

            @Override // androidx.recyclerview.widget.k.b
            public boolean b(int i10, int i11) {
                Object obj = a.this.f3280a.get(i10);
                Object obj2 = a.this.f3281b.get(i11);
                return (obj == null || obj2 == null) ? obj == null && obj2 == null : d.this.f3274b.b().areItemsTheSame(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.k.b
            public Object c(int i10, int i11) {
                Object obj = a.this.f3280a.get(i10);
                Object obj2 = a.this.f3281b.get(i11);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                return d.this.f3274b.b().getChangePayload(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.k.b
            public int d() {
                return a.this.f3281b.size();
            }

            @Override // androidx.recyclerview.widget.k.b
            public int e() {
                return a.this.f3280a.size();
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ k.e f3286a;

            b(k.e eVar) {
                this.f3286a = eVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                d dVar = d.this;
                if (dVar.f3279g == aVar.f3282c) {
                    dVar.c(aVar.f3281b, this.f3286a, aVar.f3283f);
                }
            }
        }

        a(List list, List list2, int i10, Runnable runnable) {
            this.f3280a = list;
            this.f3281b = list2;
            this.f3282c = i10;
            this.f3283f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f3275c.execute(new b(k.b(new C0039a())));
        }
    }

    public interface b {
        void a(List list, List list2);
    }

    private static class c implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Handler f3288a = new Handler(Looper.getMainLooper());

        c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f3288a.post(runnable);
        }
    }

    public d(r rVar, androidx.recyclerview.widget.c cVar) {
        this.f3273a = rVar;
        this.f3274b = cVar;
        if (cVar.c() != null) {
            this.f3275c = cVar.c();
        } else {
            this.f3275c = f3272h;
        }
    }

    private void d(List list, Runnable runnable) {
        Iterator it = this.f3276d.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(list, this.f3278f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(b bVar) {
        this.f3276d.add(bVar);
    }

    public List b() {
        return this.f3278f;
    }

    void c(List list, k.e eVar, Runnable runnable) {
        List list2 = this.f3278f;
        this.f3277e = list;
        this.f3278f = Collections.unmodifiableList(list);
        eVar.b(this.f3273a);
        d(list2, runnable);
    }

    public void e(List list) {
        f(list, null);
    }

    public void f(List list, Runnable runnable) {
        int i10 = this.f3279g + 1;
        this.f3279g = i10;
        List list2 = this.f3277e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.f3278f;
        if (list == null) {
            int size = list2.size();
            this.f3277e = null;
            this.f3278f = Collections.emptyList();
            this.f3273a.a(0, size);
            d(list3, runnable);
            return;
        }
        if (list2 != null) {
            this.f3274b.a().execute(new a(list2, list, i10, runnable));
            return;
        }
        this.f3277e = list;
        this.f3278f = Collections.unmodifiableList(list);
        this.f3273a.c(0, list.size());
        d(list3, runnable);
    }
}
