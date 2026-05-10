package x5;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.x1;
import n8.j;
import n8.k;
import n8.n;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f16393g = new b(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile c f16394h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f16395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f16396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f16397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f16398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final j f16399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c0 f16400f;

    public static final class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f16401a = k.a(n.SYNCHRONIZED, C0238a.INSTANCE);

        /* JADX INFO: renamed from: x5.c$a$a, reason: collision with other inner class name */
        public static final class C0238a extends s implements w8.a {
            public static final C0238a INSTANCE = new C0238a();

            public C0238a() {
                super(0);
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final ThreadPoolExecutor mo8invoke() {
                return new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.DiscardPolicy());
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (runnable != null) {
                ((ThreadPoolExecutor) this.f16401a.getValue()).execute(runnable);
            }
        }
    }

    public static final class b {
        public b() {
        }

        public final c a() {
            c cVar = c.f16394h;
            if (cVar == null) {
                synchronized (this) {
                    cVar = c.f16394h;
                    if (cVar == null) {
                        cVar = new c(null);
                        c.f16394h = cVar;
                    }
                }
            }
            return cVar;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: x5.c$c, reason: collision with other inner class name */
    public static final class ExecutorC0239c implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static final class d implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f16402a = k.a(n.SYNCHRONIZED, a.INSTANCE);

        public static final class a extends s implements w8.a {
            public static final a INSTANCE = new a();

            public a() {
                super(0);
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public final Handler mo8invoke() {
                return new Handler(Looper.getMainLooper());
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (runnable != null) {
                ((Handler) this.f16402a.getValue()).post(runnable);
            }
        }
    }

    public static final class e extends s implements w8.a {
        public static final e INSTANCE = new e();

        public e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a();
        }
    }

    public static final class f extends s implements w8.a {
        public static final f INSTANCE = new f();

        public f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final c0 mo8invoke() {
            return d0.a(new b0("TaskExecutors").plus(o0.a()).plus(x1.b(null, 1, null)));
        }
    }

    public static final class g extends s implements w8.a {
        public static final g INSTANCE = new g();

        public g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ExecutorC0239c mo8invoke() {
            return new ExecutorC0239c();
        }
    }

    public static final class h extends s implements w8.a {
        public static final h INSTANCE = new h();

        public h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Handler mo8invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    public static final class i extends s implements w8.a {
        public static final i INSTANCE = new i();

        public i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final d mo8invoke() {
            return new d();
        }
    }

    public c() {
        n nVar = n.SYNCHRONIZED;
        this.f16395a = k.a(nVar, i.INSTANCE);
        this.f16396b = k.a(nVar, e.INSTANCE);
        this.f16397c = k.a(nVar, g.INSTANCE);
        this.f16398d = k.a(nVar, f.INSTANCE);
        this.f16399e = k.a(nVar, h.INSTANCE);
    }

    public final c0 c() {
        c0 c0Var = this.f16400f;
        return c0Var == null ? d() : c0Var;
    }

    public final c0 d() {
        return (c0) this.f16398d.getValue();
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
