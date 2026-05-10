package com.coloros.translate.screen.aiunit;

import androidx.lifecycle.b0;
import com.coloros.translate.screen.aiunit.c;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.core.AIUnit;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: o */
    public static final a f5505o = new a(null);

    /* JADX INFO: renamed from: p */
    private static final c f5506p = new c();

    /* JADX INFO: renamed from: n */
    private final j f5507n = k.b(new b());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void d(b0 observer) {
            r.e(observer, "$observer");
            c0.f7098a.q("AiUnitConnectionState", "observeConnForever, observer = " + observer.hashCode() + ", hasObserver = " + c.f5506p.f() + ", data = " + c.f5506p.e());
            c.f5506p.h(observer);
        }

        public static final void f(b0 observer) {
            r.e(observer, "$observer");
            c0.f7098a.q("AiUnitConnectionState", "removeConnObserver, observer = " + observer.hashCode() + ", hasObserver = " + c.f5506p.f() + ", data = " + c.f5506p.e());
            c.f5506p.l(observer);
        }

        public final void c(final b0 observer) {
            r.e(observer, "observer");
            t.g(new Runnable() { // from class: com.coloros.translate.screen.aiunit.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.d(observer);
                }
            });
        }

        public final void e(final b0 observer) {
            r.e(observer, "observer");
            t.g(new Runnable() { // from class: com.coloros.translate.screen.aiunit.a
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.f(observer);
                }
            });
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {

        public static final class a implements ConnectionCallback {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ c f5508a;

            a(c cVar) {
                this.f5508a = cVar;
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnect() {
                c0.f7098a.q("AiUnitConnectionState", "onServiceConnect");
                this.f5508a.k(Boolean.TRUE);
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnectFailed(int i10) {
                c0.f7098a.q("AiUnitConnectionState", "onServiceConnectFailed, state = " + i10);
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceDisconnect() {
                c0.f7098a.q("AiUnitConnectionState", "onServiceDisconnect");
                this.f5508a.k(Boolean.FALSE);
            }
        }

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final a mo8invoke() {
            return new a(c.this);
        }
    }

    private final void r() {
        AIUnit.Companion.remove(s());
    }

    private final b.a s() {
        return (b.a) this.f5507n.getValue();
    }

    private final void t() {
        AIUnit.Companion.init$default(AIUnit.Companion, com.coloros.translate.base.a.INSTANCE.f(), s(), false, 4, null);
    }

    @Override // androidx.lifecycle.y
    protected void i() {
        super.i();
        c0.f7098a.i("AiUnitConnectionState", "onActive");
        t();
    }

    @Override // androidx.lifecycle.y
    protected void j() {
        super.j();
        c0.f7098a.i("AiUnitConnectionState", "onInactive");
        r();
        f5506p.k(null);
    }
}
