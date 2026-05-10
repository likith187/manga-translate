package androidx.emoji2.text;

import android.content.Context;
import androidx.emoji2.text.e;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.s;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements u0.a {

    class a implements androidx.lifecycle.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.lifecycle.l f2330a;

        a(androidx.lifecycle.l lVar) {
            this.f2330a = lVar;
        }

        @Override // androidx.lifecycle.f
        public void onResume(s sVar) {
            EmojiCompatInitializer.this.e();
            this.f2330a.d(this);
        }
    }

    static class b extends e.c {
        protected b(Context context) {
            super(new c(context));
            b(1);
        }
    }

    static class c implements e.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2332a;

        class a extends e.i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ e.i f2333a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ThreadPoolExecutor f2334b;

            a(e.i iVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f2333a = iVar;
                this.f2334b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.e.i
            public void a(Throwable th) {
                try {
                    this.f2333a.a(th);
                } finally {
                    this.f2334b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.e.i
            public void b(m mVar) {
                try {
                    this.f2333a.b(mVar);
                } finally {
                    this.f2334b.shutdown();
                }
            }
        }

        c(Context context) {
            this.f2332a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.e.h
        public void a(final e.i iVar) {
            final ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.b.b("EmojiCompatInitializer");
            threadPoolExecutorB.execute(new Runnable() { // from class: androidx.emoji2.text.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2374a.d(iVar, threadPoolExecutorB);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void d(e.i iVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                j jVarA = androidx.emoji2.text.c.a(this.f2332a);
                if (jVarA == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                jVarA.c(threadPoolExecutor);
                jVarA.a().a(new a(iVar, threadPoolExecutor));
            } catch (Throwable th) {
                iVar.a(th);
                threadPoolExecutor.shutdown();
            }
        }
    }

    static class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                z.i.a("EmojiCompat.EmojiCompatInitializer.run");
                if (e.i()) {
                    e.c().l();
                }
            } finally {
                z.i.b();
            }
        }
    }

    @Override // u0.a
    public List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // u0.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean b(Context context) {
        e.h(new b(context));
        d(context);
        return Boolean.TRUE;
    }

    void d(Context context) {
        androidx.lifecycle.l lifecycle = ((s) androidx.startup.a.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new a(lifecycle));
    }

    void e() {
        androidx.emoji2.text.b.d().postDelayed(new d(), 500L);
    }
}
