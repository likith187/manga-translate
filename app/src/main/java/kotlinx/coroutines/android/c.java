package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.g;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.i;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.o0;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends d implements j0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f13166c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f13167f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f13168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c f13169i;

    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f13170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f13171b;

        public a(i iVar, c cVar) {
            this.f13170a = iVar;
            this.f13171b = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f13170a.a(this.f13171b, h0.INSTANCE);
        }
    }

    static final class b extends s implements l {
        final /* synthetic */ Runnable $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Runnable runnable) {
            super(1);
            this.$block = runnable;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Throwable th) {
            c.this.f13166c.removeCallbacks(this.$block);
        }
    }

    private c(Handler handler, String str, boolean z10) {
        super(null);
        this.f13166c = handler;
        this.f13167f = str;
        this.f13168h = z10;
        this.f13169i = z10 ? this : new c(handler, str, true);
    }

    private final void I0(g gVar, Runnable runnable) {
        j1.c(gVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        o0.b().x0(gVar, runnable);
    }

    @Override // kotlinx.coroutines.y
    public boolean D0(g gVar) {
        return (this.f13168h && r.a(Looper.myLooper(), this.f13166c.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.p1
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public c F0() {
        return this.f13169i;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.f13166c == this.f13166c && cVar.f13168h == this.f13168h) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f13168h ? 1231 : 1237) ^ System.identityHashCode(this.f13166c);
    }

    @Override // kotlinx.coroutines.y
    public String toString() {
        String strG0 = G0();
        if (strG0 != null) {
            return strG0;
        }
        String string = this.f13167f;
        if (string == null) {
            string = this.f13166c.toString();
        }
        if (!this.f13168h) {
            return string;
        }
        return string + ".immediate";
    }

    @Override // kotlinx.coroutines.j0
    public void x(long j10, i iVar) {
        a aVar = new a(iVar, this);
        if (this.f13166c.postDelayed(aVar, b9.d.f(j10, 4611686018427387903L))) {
            iVar.f(new b(aVar));
        } else {
            I0(iVar.getContext(), aVar);
        }
    }

    @Override // kotlinx.coroutines.y
    public void x0(g gVar, Runnable runnable) {
        if (this.f13166c.post(runnable)) {
            return;
        }
        I0(gVar, runnable);
    }

    public /* synthetic */ c(Handler handler, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public c(Handler handler, String str) {
        this(handler, str, false);
    }
}
