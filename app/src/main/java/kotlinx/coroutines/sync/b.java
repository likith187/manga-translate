package kotlinx.coroutines.sync;

import androidx.appcompat.app.t;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.g0;
import kotlinx.coroutines.i;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.j;
import kotlinx.coroutines.y;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import n8.h0;
import w8.l;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public class b extends d implements kotlinx.coroutines.sync.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13356i = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "owner$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final q f13357h;
    private volatile /* synthetic */ Object owner$volatile;

    private final class a implements i, e2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f13358a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f13359b;

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$a$a, reason: collision with other inner class name */
        static final class C0172a extends s implements l {
            final /* synthetic */ b this$0;
            final /* synthetic */ a this$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0172a(b bVar, a aVar) {
                super(1);
                this.this$0 = bVar;
                this.this$1 = aVar;
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return h0.INSTANCE;
            }

            public final void invoke(Throwable th) {
                this.this$0.b(this.this$1.f13359b);
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$a$b, reason: collision with other inner class name */
        static final class C0173b extends s implements l {
            final /* synthetic */ b this$0;
            final /* synthetic */ a this$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0173b(b bVar, a aVar) {
                super(1);
                this.this$0 = bVar;
                this.this$1 = aVar;
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return h0.INSTANCE;
            }

            public final void invoke(Throwable th) {
                b.r().set(this.this$0, this.this$1.f13359b);
                this.this$0.b(this.this$1.f13359b);
            }
        }

        public a(j jVar, Object obj) {
            this.f13358a = jVar;
            this.f13359b = obj;
        }

        @Override // kotlinx.coroutines.e2
        public void b(d0 d0Var, int i10) {
            this.f13358a.b(d0Var, i10);
        }

        @Override // kotlinx.coroutines.i
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void e(h0 h0Var, l lVar) {
            b.r().set(b.this, this.f13359b);
            this.f13358a.e(h0Var, new C0172a(b.this, this));
        }

        @Override // kotlinx.coroutines.i
        public void f(l lVar) {
            this.f13358a.f(lVar);
        }

        @Override // kotlinx.coroutines.i
        public void g(Object obj) {
            this.f13358a.g(obj);
        }

        @Override // kotlin.coroutines.d
        public g getContext() {
            return this.f13358a.getContext();
        }

        @Override // kotlinx.coroutines.i
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void a(y yVar, h0 h0Var) {
            this.f13358a.a(yVar, h0Var);
        }

        @Override // kotlinx.coroutines.i
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Object d(h0 h0Var, Object obj, l lVar) {
            Object objD = this.f13358a.d(h0Var, obj, new C0173b(b.this, this));
            if (objD != null) {
                b.r().set(b.this, this.f13359b);
            }
            return objD;
        }

        @Override // kotlin.coroutines.d
        public void resumeWith(Object obj) {
            this.f13358a.resumeWith(obj);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$b, reason: collision with other inner class name */
    static final class C0174b extends s implements q {

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$b$a */
        static final class a extends s implements l {
            final /* synthetic */ Object $owner;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b bVar, Object obj) {
                super(1);
                this.this$0 = bVar;
                this.$owner = obj;
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return h0.INSTANCE;
            }

            public final void invoke(Throwable th) {
                this.this$0.b(this.$owner);
            }
        }

        C0174b() {
            super(3);
        }

        @Override // w8.q
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            t.a(obj);
            return invoke((h9.a) null, obj2, obj3);
        }

        public final l invoke(h9.a aVar, Object obj, Object obj2) {
            return new a(b.this, obj);
        }
    }

    public b(boolean z10) {
        super(1, z10 ? 1 : 0);
        this.owner$volatile = z10 ? null : c.f13361a;
        this.f13357h = new C0174b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater r() {
        return f13356i;
    }

    private final int s(Object obj) {
        while (t()) {
            Object obj2 = f13356i.get(this);
            if (obj2 != c.f13361a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }

    static /* synthetic */ Object u(b bVar, Object obj, kotlin.coroutines.d dVar) {
        Object objV;
        return (!bVar.w(obj) && (objV = bVar.v(obj, dVar)) == kotlin.coroutines.intrinsics.b.f()) ? objV : h0.INSTANCE;
    }

    private final Object v(Object obj, kotlin.coroutines.d dVar) {
        j jVarB = kotlinx.coroutines.l.b(kotlin.coroutines.intrinsics.b.c(dVar));
        try {
            c(new a(jVarB, obj));
            Object objX = jVarB.x();
            if (objX == kotlin.coroutines.intrinsics.b.f()) {
                h.c(dVar);
            }
            return objX == kotlin.coroutines.intrinsics.b.f() ? objX : h0.INSTANCE;
        } catch (Throwable th) {
            jVarB.M();
            throw th;
        }
    }

    private final int x(Object obj) {
        while (!n()) {
            if (obj == null) {
                return 1;
            }
            int iS = s(obj);
            if (iS == 1) {
                return 2;
            }
            if (iS == 2) {
                return 1;
            }
        }
        f13356i.set(this, obj);
        return 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public Object a(Object obj, kotlin.coroutines.d dVar) {
        return u(this, obj, dVar);
    }

    @Override // kotlinx.coroutines.sync.a
    public void b(Object obj) {
        while (t()) {
            Object obj2 = f13356i.get(this);
            if (obj2 != c.f13361a) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.b.a(f13356i, this, obj2, c.f13361a)) {
                    m();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    public boolean t() {
        return g() == 0;
    }

    public String toString() {
        return "Mutex@" + g0.b(this) + "[isLocked=" + t() + ",owner=" + f13356i.get(this) + AbstractJsonLexerKt.END_LIST;
    }

    public boolean w(Object obj) {
        int iX = x(obj);
        if (iX == 0) {
            return true;
        }
        if (iX == 1) {
            return false;
        }
        if (iX != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }
}
