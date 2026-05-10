package com.coloros.translate.observer;

import androidx.lifecycle.b0;
import com.coloros.translate.observer.c;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import com.coloros.translate.utils.z0;
import com.oplus.aiunit.core.AIUnit;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class c extends f {

    /* JADX INFO: renamed from: o */
    public static final a f5327o = new a(null);

    /* JADX INFO: renamed from: p */
    private static final c f5328p = new c();

    /* JADX INFO: renamed from: n */
    private final j f5329n = k.b(new b());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void d(b0 observer) {
            r.e(observer, "$observer");
            c0.f7098a.q("AiUnitConnectionState", "observeConnForever, observer = " + observer.hashCode() + ", hasObserver = " + c.f5328p.f() + ", data = " + c.f5328p.e());
            c.f5328p.h(observer);
        }

        public static final void f(b0 observer) {
            r.e(observer, "$observer");
            c0.f7098a.q("AiUnitConnectionState", "removeConnObserver, observer = " + observer.hashCode() + ", hasObserver = " + c.f5328p.f() + ", data = " + c.f5328p.e());
            c.f5328p.l(observer);
        }

        public final void c(final b0 observer) {
            r.e(observer, "observer");
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.observer.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.d(observer);
                }
            }, 1, null);
        }

        public final void e(final b0 observer) {
            r.e(observer, "observer");
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.observer.a
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.f(observer);
                }
            }, 1, null);
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {

        public static final class a implements ConnectionCallback {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ c f5330a;

            a(c cVar) {
                this.f5330a = cVar;
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnect() {
                c0.f7098a.q("AiUnitConnectionState", "onServiceConnect");
                this.f5330a.k(Boolean.TRUE);
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnectFailed(int i10) {
                c0.f7098a.q("AiUnitConnectionState", "onServiceConnectFailed, state = " + i10);
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceDisconnect() {
                c0.f7098a.q("AiUnitConnectionState", "onServiceDisconnect");
                this.f5330a.k(Boolean.FALSE);
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
        return (b.a) this.f5329n.getValue();
    }

    private final void t() {
        AIUnit.Companion.init$default(AIUnit.Companion, m.INSTANCE.a(), s(), false, 4, null);
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
        f5328p.k(null);
    }
}
