package a0;

import a0.f;
import a0.g;
import android.graphics.Typeface;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a */
    private final g.c f13a;

    /* JADX INFO: renamed from: b */
    private final Executor f14b;

    /* JADX INFO: renamed from: a0.a$a */
    class RunnableC0000a implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ g.c f15a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Typeface f16b;

        RunnableC0000a(g.c cVar, Typeface typeface) {
            this.f15a = cVar;
            this.f16b = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15a.b(this.f16b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ g.c f18a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f19b;

        b(g.c cVar, int i10) {
            this.f18a = cVar;
            this.f19b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18a.a(this.f19b);
        }
    }

    a(g.c cVar, Executor executor) {
        this.f13a = cVar;
        this.f14b = executor;
    }

    private void a(int i10) {
        this.f14b.execute(new b(this.f13a, i10));
    }

    private void c(Typeface typeface) {
        this.f14b.execute(new RunnableC0000a(this.f13a, typeface));
    }

    void b(f.e eVar) {
        if (eVar.a()) {
            c(eVar.f47a);
        } else {
            a(eVar.f48b);
        }
    }
}
