package o9;

import com.oplus.backup.sdk.common.host.BREngineConfig;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;
import n8.h0;
import o9.h;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements Closeable {
    public static final b F = new b(null);
    private static final m G;
    private long A;
    private final Socket B;
    private final o9.j C;
    private final d D;
    private final Set E;

    /* JADX INFO: renamed from: a */
    private final boolean f14506a;

    /* JADX INFO: renamed from: b */
    private final c f14507b;

    /* JADX INFO: renamed from: c */
    private final Map f14508c;

    /* JADX INFO: renamed from: f */
    private final String f14509f;

    /* JADX INFO: renamed from: h */
    private int f14510h;

    /* JADX INFO: renamed from: i */
    private int f14511i;

    /* JADX INFO: renamed from: j */
    private boolean f14512j;

    /* JADX INFO: renamed from: k */
    private final l9.e f14513k;

    /* JADX INFO: renamed from: l */
    private final l9.d f14514l;

    /* JADX INFO: renamed from: m */
    private final l9.d f14515m;

    /* JADX INFO: renamed from: n */
    private final l9.d f14516n;

    /* JADX INFO: renamed from: o */
    private final o9.l f14517o;

    /* JADX INFO: renamed from: p */
    private long f14518p;

    /* JADX INFO: renamed from: q */
    private long f14519q;

    /* JADX INFO: renamed from: r */
    private long f14520r;

    /* JADX INFO: renamed from: s */
    private long f14521s;

    /* JADX INFO: renamed from: t */
    private long f14522t;

    /* JADX INFO: renamed from: u */
    private long f14523u;

    /* JADX INFO: renamed from: v */
    private final m f14524v;

    /* JADX INFO: renamed from: w */
    private m f14525w;

    /* JADX INFO: renamed from: x */
    private long f14526x;

    /* JADX INFO: renamed from: y */
    private long f14527y;

    /* JADX INFO: renamed from: z */
    private long f14528z;

    public static final class a {

        /* JADX INFO: renamed from: a */
        private boolean f14529a;

        /* JADX INFO: renamed from: b */
        private final l9.e f14530b;

        /* JADX INFO: renamed from: c */
        public Socket f14531c;

        /* JADX INFO: renamed from: d */
        public String f14532d;

        /* JADX INFO: renamed from: e */
        public t9.f f14533e;

        /* JADX INFO: renamed from: f */
        public t9.e f14534f;

        /* JADX INFO: renamed from: g */
        private c f14535g;

        /* JADX INFO: renamed from: h */
        private o9.l f14536h;

        /* JADX INFO: renamed from: i */
        private int f14537i;

        public a(boolean z10, l9.e taskRunner) {
            r.e(taskRunner, "taskRunner");
            this.f14529a = z10;
            this.f14530b = taskRunner;
            this.f14535g = c.f14539b;
            this.f14536h = o9.l.f14640b;
        }

        public final f a() {
            return new f(this);
        }

        public final boolean b() {
            return this.f14529a;
        }

        public final String c() {
            String str = this.f14532d;
            if (str != null) {
                return str;
            }
            r.r("connectionName");
            return null;
        }

        public final c d() {
            return this.f14535g;
        }

        public final int e() {
            return this.f14537i;
        }

        public final o9.l f() {
            return this.f14536h;
        }

        public final t9.e g() {
            t9.e eVar = this.f14534f;
            if (eVar != null) {
                return eVar;
            }
            r.r("sink");
            return null;
        }

        public final Socket h() {
            Socket socket = this.f14531c;
            if (socket != null) {
                return socket;
            }
            r.r("socket");
            return null;
        }

        public final t9.f i() {
            t9.f fVar = this.f14533e;
            if (fVar != null) {
                return fVar;
            }
            r.r(BREngineConfig.SOURCE);
            return null;
        }

        public final l9.e j() {
            return this.f14530b;
        }

        public final a k(c listener) {
            r.e(listener, "listener");
            this.f14535g = listener;
            return this;
        }

        public final a l(int i10) {
            this.f14537i = i10;
            return this;
        }

        public final void m(String str) {
            r.e(str, "<set-?>");
            this.f14532d = str;
        }

        public final void n(t9.e eVar) {
            r.e(eVar, "<set-?>");
            this.f14534f = eVar;
        }

        public final void o(Socket socket) {
            r.e(socket, "<set-?>");
            this.f14531c = socket;
        }

        public final void p(t9.f fVar) {
            r.e(fVar, "<set-?>");
            this.f14533e = fVar;
        }

        public final a q(Socket socket, String peerName, t9.f source, t9.e sink) {
            String str;
            r.e(socket, "socket");
            r.e(peerName, "peerName");
            r.e(source, "source");
            r.e(sink, "sink");
            o(socket);
            if (this.f14529a) {
                str = i9.d.f12675i + ' ' + peerName;
            } else {
                str = "MockWebServer " + peerName;
            }
            m(str);
            p(source);
            n(sink);
            return this;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return f.G;
        }

        private b() {
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a */
        public static final b f14538a = new b(null);

        /* JADX INFO: renamed from: b */
        public static final c f14539b = new a();

        public static final class a extends c {
            a() {
            }

            @Override // o9.f.c
            public void b(o9.i stream) {
                r.e(stream, "stream");
                stream.d(o9.b.REFUSED_STREAM, null);
            }
        }

        public static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private b() {
            }
        }

        public void a(f connection, m settings) {
            r.e(connection, "connection");
            r.e(settings, "settings");
        }

        public abstract void b(o9.i iVar);
    }

    public final class d implements h.c, w8.a {

        /* JADX INFO: renamed from: a */
        private final o9.h f14540a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ f f14541b;

        public static final class a extends l9.a {

            /* JADX INFO: renamed from: e */
            final /* synthetic */ f f14542e;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ c0 f14543f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, boolean z10, f fVar, c0 c0Var) {
                super(str, z10);
                this.f14542e = fVar;
                this.f14543f = c0Var;
            }

            @Override // l9.a
            public long f() {
                this.f14542e.K0().a(this.f14542e, (m) this.f14543f.element);
                return -1L;
            }
        }

        public static final class b extends l9.a {

            /* JADX INFO: renamed from: e */
            final /* synthetic */ f f14544e;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ o9.i f14545f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, boolean z10, f fVar, o9.i iVar) {
                super(str, z10);
                this.f14544e = fVar;
                this.f14545f = iVar;
            }

            @Override // l9.a
            public long f() {
                try {
                    this.f14544e.K0().b(this.f14545f);
                    return -1L;
                } catch (IOException e10) {
                    p9.h.f15249a.g().j("Http2Connection.Listener failure for " + this.f14544e.I0(), 4, e10);
                    try {
                        this.f14545f.d(o9.b.PROTOCOL_ERROR, e10);
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }
        }

        public static final class c extends l9.a {

            /* JADX INFO: renamed from: e */
            final /* synthetic */ f f14546e;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ int f14547f;

            /* JADX INFO: renamed from: g */
            final /* synthetic */ int f14548g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(String str, boolean z10, f fVar, int i10, int i11) {
                super(str, z10);
                this.f14546e = fVar;
                this.f14547f = i10;
                this.f14548g = i11;
            }

            @Override // l9.a
            public long f() {
                this.f14546e.k1(true, this.f14547f, this.f14548g);
                return -1L;
            }
        }

        /* JADX INFO: renamed from: o9.f$d$d */
        public static final class C0189d extends l9.a {

            /* JADX INFO: renamed from: e */
            final /* synthetic */ d f14549e;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ boolean f14550f;

            /* JADX INFO: renamed from: g */
            final /* synthetic */ m f14551g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0189d(String str, boolean z10, d dVar, boolean z11, m mVar) {
                super(str, z10);
                this.f14549e = dVar;
                this.f14550f = z11;
                this.f14551g = mVar;
            }

            @Override // l9.a
            public long f() {
                this.f14549e.k(this.f14550f, this.f14551g);
                return -1L;
            }
        }

        public d(f fVar, o9.h reader) {
            r.e(reader, "reader");
            this.f14541b = fVar;
            this.f14540a = reader;
        }

        @Override // o9.h.c
        public void a(int i10, o9.b errorCode) {
            r.e(errorCode, "errorCode");
            if (this.f14541b.Z0(i10)) {
                this.f14541b.Y0(i10, errorCode);
                return;
            }
            o9.i iVarA1 = this.f14541b.a1(i10);
            if (iVarA1 != null) {
                iVarA1.y(errorCode);
            }
        }

        @Override // o9.h.c
        public void b(boolean z10, int i10, t9.f source, int i11) {
            r.e(source, "source");
            if (this.f14541b.Z0(i10)) {
                this.f14541b.V0(i10, source, i11, z10);
                return;
            }
            o9.i iVarO0 = this.f14541b.O0(i10);
            if (iVarO0 == null) {
                this.f14541b.m1(i10, o9.b.PROTOCOL_ERROR);
                long j10 = i11;
                this.f14541b.h1(j10);
                source.A(j10);
                return;
            }
            iVarO0.w(source, i11);
            if (z10) {
                iVarO0.x(i9.d.f12668b, true);
            }
        }

        @Override // o9.h.c
        public void c() {
        }

        @Override // o9.h.c
        public void d(boolean z10, int i10, int i11) {
            if (!z10) {
                this.f14541b.f14514l.i(new c(this.f14541b.I0() + " ping", true, this.f14541b, i10, i11), 0L);
                return;
            }
            f fVar = this.f14541b;
            synchronized (fVar) {
                try {
                    if (i10 == 1) {
                        fVar.f14519q++;
                    } else if (i10 != 2) {
                        if (i10 == 3) {
                            fVar.f14522t++;
                            r.c(fVar, "null cannot be cast to non-null type java.lang.Object");
                            fVar.notifyAll();
                        }
                        h0 h0Var = h0.INSTANCE;
                    } else {
                        fVar.f14521s++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // o9.h.c
        public void e(int i10, o9.b errorCode, t9.g debugData) {
            int i11;
            Object[] array;
            r.e(errorCode, "errorCode");
            r.e(debugData, "debugData");
            debugData.size();
            f fVar = this.f14541b;
            synchronized (fVar) {
                array = fVar.P0().values().toArray(new o9.i[0]);
                fVar.f14512j = true;
                h0 h0Var = h0.INSTANCE;
            }
            for (o9.i iVar : (o9.i[]) array) {
                if (iVar.j() > i10 && iVar.t()) {
                    iVar.y(o9.b.REFUSED_STREAM);
                    this.f14541b.a1(iVar.j());
                }
            }
        }

        @Override // o9.h.c
        public void f(int i10, int i11, int i12, boolean z10) {
        }

        @Override // o9.h.c
        public void g(boolean z10, int i10, int i11, List headerBlock) {
            r.e(headerBlock, "headerBlock");
            if (this.f14541b.Z0(i10)) {
                this.f14541b.W0(i10, headerBlock, z10);
                return;
            }
            f fVar = this.f14541b;
            synchronized (fVar) {
                o9.i iVarO0 = fVar.O0(i10);
                if (iVarO0 != null) {
                    h0 h0Var = h0.INSTANCE;
                    iVarO0.x(i9.d.N(headerBlock), z10);
                    return;
                }
                if (fVar.f14512j) {
                    return;
                }
                if (i10 <= fVar.J0()) {
                    return;
                }
                if (i10 % 2 == fVar.L0() % 2) {
                    return;
                }
                o9.i iVar = new o9.i(i10, fVar, false, z10, i9.d.N(headerBlock));
                fVar.c1(i10);
                fVar.P0().put(Integer.valueOf(i10), iVar);
                fVar.f14513k.i().i(new b(fVar.I0() + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] onStream", true, fVar, iVar), 0L);
            }
        }

        @Override // o9.h.c
        public void h(int i10, long j10) {
            if (i10 == 0) {
                f fVar = this.f14541b;
                synchronized (fVar) {
                    fVar.A = fVar.Q0() + j10;
                    r.c(fVar, "null cannot be cast to non-null type java.lang.Object");
                    fVar.notifyAll();
                    h0 h0Var = h0.INSTANCE;
                }
                return;
            }
            o9.i iVarO0 = this.f14541b.O0(i10);
            if (iVarO0 != null) {
                synchronized (iVarO0) {
                    iVarO0.a(j10);
                    h0 h0Var2 = h0.INSTANCE;
                }
            }
        }

        @Override // o9.h.c
        public void i(boolean z10, m settings) {
            r.e(settings, "settings");
            this.f14541b.f14514l.i(new C0189d(this.f14541b.I0() + " applyAndAckSettings", true, this, z10, settings), 0L);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws Throwable {
            l();
            return h0.INSTANCE;
        }

        @Override // o9.h.c
        public void j(int i10, int i11, List requestHeaders) {
            r.e(requestHeaders, "requestHeaders");
            this.f14541b.X0(i11, requestHeaders);
        }

        public final void k(boolean z10, m settings) {
            long jC;
            int i10;
            o9.i[] iVarArr;
            r.e(settings, "settings");
            c0 c0Var = new c0();
            o9.j jVarR0 = this.f14541b.R0();
            f fVar = this.f14541b;
            synchronized (jVarR0) {
                synchronized (fVar) {
                    try {
                        m mVarN0 = fVar.N0();
                        if (!z10) {
                            m mVar = new m();
                            mVar.g(mVarN0);
                            mVar.g(settings);
                            settings = mVar;
                        }
                        c0Var.element = settings;
                        jC = ((long) settings.c()) - ((long) mVarN0.c());
                        iVarArr = (jC == 0 || fVar.P0().isEmpty()) ? null : (o9.i[]) fVar.P0().values().toArray(new o9.i[0]);
                        fVar.d1((m) c0Var.element);
                        fVar.f14516n.i(new a(fVar.I0() + " onSettings", true, fVar, c0Var), 0L);
                        h0 h0Var = h0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    fVar.R0().c((m) c0Var.element);
                } catch (IOException e10) {
                    fVar.G0(e10);
                }
                h0 h0Var2 = h0.INSTANCE;
            }
            if (iVarArr != null) {
                for (o9.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(jC);
                        h0 h0Var3 = h0.INSTANCE;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.io.Closeable, o9.h] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void l() throws Throwable {
            o9.b bVar;
            o9.b bVar2;
            o9.b bVar3 = o9.b.INTERNAL_ERROR;
            IOException e10 = null;
            try {
                try {
                    this.f14540a.k(this);
                    while (this.f14540a.i(false, this)) {
                    }
                    bVar2 = o9.b.NO_ERROR;
                } catch (IOException e11) {
                    e10 = e11;
                } catch (Throwable th) {
                    th = th;
                    bVar = bVar3;
                    this.f14541b.F0(bVar, bVar3, e10);
                    i9.d.l(this.f14540a);
                    throw th;
                }
                try {
                    bVar3 = o9.b.CANCEL;
                    this.f14541b.F0(bVar2, bVar3, null);
                    bVar = bVar2;
                } catch (IOException e12) {
                    e10 = e12;
                    bVar3 = o9.b.PROTOCOL_ERROR;
                    f fVar = this.f14541b;
                    fVar.F0(bVar3, bVar3, e10);
                    bVar = fVar;
                }
                this = this.f14540a;
                i9.d.l(this);
            } catch (Throwable th2) {
                th = th2;
                this.f14541b.F0(bVar, bVar3, e10);
                i9.d.l(this.f14540a);
                throw th;
            }
        }
    }

    public static final class e extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14552e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14553f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ t9.d f14554g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ int f14555h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ boolean f14556i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, boolean z10, f fVar, int i10, t9.d dVar, int i11, boolean z11) {
            super(str, z10);
            this.f14552e = fVar;
            this.f14553f = i10;
            this.f14554g = dVar;
            this.f14555h = i11;
            this.f14556i = z11;
        }

        @Override // l9.a
        public long f() {
            try {
                boolean zD = this.f14552e.f14517o.d(this.f14553f, this.f14554g, this.f14555h, this.f14556i);
                if (zD) {
                    this.f14552e.R0().X(this.f14553f, o9.b.CANCEL);
                }
                if (!zD && !this.f14556i) {
                    return -1L;
                }
                synchronized (this.f14552e) {
                    this.f14552e.E.remove(Integer.valueOf(this.f14553f));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    /* JADX INFO: renamed from: o9.f$f */
    public static final class C0190f extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14557e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14558f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ List f14559g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ boolean f14560h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0190f(String str, boolean z10, f fVar, int i10, List list, boolean z11) {
            super(str, z10);
            this.f14557e = fVar;
            this.f14558f = i10;
            this.f14559g = list;
            this.f14560h = z11;
        }

        @Override // l9.a
        public long f() {
            boolean zB = this.f14557e.f14517o.b(this.f14558f, this.f14559g, this.f14560h);
            if (zB) {
                try {
                    this.f14557e.R0().X(this.f14558f, o9.b.CANCEL);
                } catch (IOException unused) {
                    return -1L;
                }
            }
            if (!zB && !this.f14560h) {
                return -1L;
            }
            synchronized (this.f14557e) {
                this.f14557e.E.remove(Integer.valueOf(this.f14558f));
            }
            return -1L;
        }
    }

    public static final class g extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14561e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14562f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ List f14563g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, boolean z10, f fVar, int i10, List list) {
            super(str, z10);
            this.f14561e = fVar;
            this.f14562f = i10;
            this.f14563g = list;
        }

        @Override // l9.a
        public long f() {
            if (!this.f14561e.f14517o.a(this.f14562f, this.f14563g)) {
                return -1L;
            }
            try {
                this.f14561e.R0().X(this.f14562f, o9.b.CANCEL);
                synchronized (this.f14561e) {
                    this.f14561e.E.remove(Integer.valueOf(this.f14562f));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    public static final class h extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14564e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14565f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ o9.b f14566g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, boolean z10, f fVar, int i10, o9.b bVar) {
            super(str, z10);
            this.f14564e = fVar;
            this.f14565f = i10;
            this.f14566g = bVar;
        }

        @Override // l9.a
        public long f() {
            this.f14564e.f14517o.c(this.f14565f, this.f14566g);
            synchronized (this.f14564e) {
                this.f14564e.E.remove(Integer.valueOf(this.f14565f));
                h0 h0Var = h0.INSTANCE;
            }
            return -1L;
        }
    }

    public static final class i extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14567e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, boolean z10, f fVar) {
            super(str, z10);
            this.f14567e = fVar;
        }

        @Override // l9.a
        public long f() {
            this.f14567e.k1(false, 2, 0);
            return -1L;
        }
    }

    public static final class j extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14568e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ long f14569f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, f fVar, long j10) {
            super(str, false, 2, null);
            this.f14568e = fVar;
            this.f14569f = j10;
        }

        @Override // l9.a
        public long f() {
            boolean z10;
            synchronized (this.f14568e) {
                if (this.f14568e.f14519q < this.f14568e.f14518p) {
                    z10 = true;
                } else {
                    this.f14568e.f14518p++;
                    z10 = false;
                }
            }
            if (z10) {
                this.f14568e.G0(null);
                return -1L;
            }
            this.f14568e.k1(false, 1, 0);
            return this.f14569f;
        }
    }

    public static final class k extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14570e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14571f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ o9.b f14572g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, boolean z10, f fVar, int i10, o9.b bVar) {
            super(str, z10);
            this.f14570e = fVar;
            this.f14571f = i10;
            this.f14572g = bVar;
        }

        @Override // l9.a
        public long f() {
            try {
                this.f14570e.l1(this.f14571f, this.f14572g);
                return -1L;
            } catch (IOException e10) {
                this.f14570e.G0(e10);
                return -1L;
            }
        }
    }

    public static final class l extends l9.a {

        /* JADX INFO: renamed from: e */
        final /* synthetic */ f f14573e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f14574f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ long f14575g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, boolean z10, f fVar, int i10, long j10) {
            super(str, z10);
            this.f14573e = fVar;
            this.f14574f = i10;
            this.f14575g = j10;
        }

        @Override // l9.a
        public long f() {
            try {
                this.f14573e.R0().b0(this.f14574f, this.f14575g);
                return -1L;
            } catch (IOException e10) {
                this.f14573e.G0(e10);
                return -1L;
            }
        }
    }

    static {
        m mVar = new m();
        mVar.h(7, 65535);
        mVar.h(5, ReaderJsonLexerKt.BATCH_SIZE);
        G = mVar;
    }

    public f(a builder) {
        r.e(builder, "builder");
        boolean zB = builder.b();
        this.f14506a = zB;
        this.f14507b = builder.d();
        this.f14508c = new LinkedHashMap();
        String strC = builder.c();
        this.f14509f = strC;
        this.f14511i = builder.b() ? 3 : 2;
        l9.e eVarJ = builder.j();
        this.f14513k = eVarJ;
        l9.d dVarI = eVarJ.i();
        this.f14514l = dVarI;
        this.f14515m = eVarJ.i();
        this.f14516n = eVarJ.i();
        this.f14517o = builder.f();
        m mVar = new m();
        if (builder.b()) {
            mVar.h(7, 16777216);
        }
        this.f14524v = mVar;
        this.f14525w = G;
        this.A = r2.c();
        this.B = builder.h();
        this.C = new o9.j(builder.g(), zB);
        this.D = new d(this, new o9.h(builder.i(), zB));
        this.E = new LinkedHashSet();
        if (builder.e() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.e());
            dVarI.i(new j(strC + " ping", this, nanos), nanos);
        }
    }

    public final void G0(IOException iOException) {
        o9.b bVar = o9.b.PROTOCOL_ERROR;
        F0(bVar, bVar, iOException);
    }

    private final o9.i T0(int i10, List list, boolean z10) {
        int i11;
        o9.i iVar;
        boolean z11 = true;
        boolean z12 = !z10;
        synchronized (this.C) {
            try {
                synchronized (this) {
                    try {
                        if (this.f14511i > 1073741823) {
                            e1(o9.b.REFUSED_STREAM);
                        }
                        if (this.f14512j) {
                            throw new o9.a();
                        }
                        i11 = this.f14511i;
                        this.f14511i = i11 + 2;
                        iVar = new o9.i(i11, this, z12, false, null);
                        if (z10 && this.f14528z < this.A && iVar.r() < iVar.q()) {
                            z11 = false;
                        }
                        if (iVar.u()) {
                            this.f14508c.put(Integer.valueOf(i11), iVar);
                        }
                        h0 h0Var = h0.INSTANCE;
                    } finally {
                    }
                }
                if (i10 == 0) {
                    this.C.D(z12, i11, list);
                } else {
                    if (this.f14506a) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.C.N(i10, i11, list);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z11) {
            this.C.flush();
        }
        return iVar;
    }

    public static /* synthetic */ void g1(f fVar, boolean z10, l9.e eVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            eVar = l9.e.INSTANCE;
        }
        fVar.f1(z10, eVar);
    }

    public final void F0(o9.b connectionCode, o9.b streamCode, IOException iOException) {
        int i10;
        Object[] array;
        r.e(connectionCode, "connectionCode");
        r.e(streamCode, "streamCode");
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        try {
            e1(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (this.f14508c.isEmpty()) {
                    array = null;
                } else {
                    array = this.f14508c.values().toArray(new o9.i[0]);
                    this.f14508c.clear();
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        o9.i[] iVarArr = (o9.i[]) array;
        if (iVarArr != null) {
            for (o9.i iVar : iVarArr) {
                try {
                    iVar.d(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.C.close();
        } catch (IOException unused3) {
        }
        try {
            this.B.close();
        } catch (IOException unused4) {
        }
        this.f14514l.n();
        this.f14515m.n();
        this.f14516n.n();
    }

    public final boolean H0() {
        return this.f14506a;
    }

    public final String I0() {
        return this.f14509f;
    }

    public final int J0() {
        return this.f14510h;
    }

    public final c K0() {
        return this.f14507b;
    }

    public final int L0() {
        return this.f14511i;
    }

    public final m M0() {
        return this.f14524v;
    }

    public final m N0() {
        return this.f14525w;
    }

    public final synchronized o9.i O0(int i10) {
        return (o9.i) this.f14508c.get(Integer.valueOf(i10));
    }

    public final Map P0() {
        return this.f14508c;
    }

    public final long Q0() {
        return this.A;
    }

    public final o9.j R0() {
        return this.C;
    }

    public final synchronized boolean S0(long j10) {
        if (this.f14512j) {
            return false;
        }
        if (this.f14521s < this.f14520r) {
            if (j10 >= this.f14523u) {
                return false;
            }
        }
        return true;
    }

    public final o9.i U0(List requestHeaders, boolean z10) {
        r.e(requestHeaders, "requestHeaders");
        return T0(0, requestHeaders, z10);
    }

    public final void V0(int i10, t9.f source, int i11, boolean z10) {
        r.e(source, "source");
        t9.d dVar = new t9.d();
        long j10 = i11;
        source.r0(j10);
        source.i0(dVar, j10);
        this.f14515m.i(new e(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] onData", true, this, i10, dVar, i11, z10), 0L);
    }

    public final void W0(int i10, List requestHeaders, boolean z10) {
        r.e(requestHeaders, "requestHeaders");
        this.f14515m.i(new C0190f(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] onHeaders", true, this, i10, requestHeaders, z10), 0L);
    }

    public final void X0(int i10, List requestHeaders) {
        r.e(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.E.contains(Integer.valueOf(i10))) {
                m1(i10, o9.b.PROTOCOL_ERROR);
                return;
            }
            this.E.add(Integer.valueOf(i10));
            this.f14515m.i(new g(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] onRequest", true, this, i10, requestHeaders), 0L);
        }
    }

    public final void Y0(int i10, o9.b errorCode) {
        r.e(errorCode, "errorCode");
        this.f14515m.i(new h(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] onReset", true, this, i10, errorCode), 0L);
    }

    public final boolean Z0(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public final synchronized o9.i a1(int i10) {
        o9.i iVar;
        iVar = (o9.i) this.f14508c.remove(Integer.valueOf(i10));
        r.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return iVar;
    }

    public final void b1() {
        synchronized (this) {
            long j10 = this.f14521s;
            long j11 = this.f14520r;
            if (j10 < j11) {
                return;
            }
            this.f14520r = j11 + 1;
            this.f14523u = System.nanoTime() + ((long) 1000000000);
            h0 h0Var = h0.INSTANCE;
            this.f14514l.i(new i(this.f14509f + " ping", true, this), 0L);
        }
    }

    public final void c1(int i10) {
        this.f14510h = i10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        F0(o9.b.NO_ERROR, o9.b.CANCEL, null);
    }

    public final void d1(m mVar) {
        r.e(mVar, "<set-?>");
        this.f14525w = mVar;
    }

    public final void e1(o9.b statusCode) {
        r.e(statusCode, "statusCode");
        synchronized (this.C) {
            a0 a0Var = new a0();
            synchronized (this) {
                if (this.f14512j) {
                    return;
                }
                this.f14512j = true;
                int i10 = this.f14510h;
                a0Var.element = i10;
                h0 h0Var = h0.INSTANCE;
                this.C.B(i10, statusCode, i9.d.f12667a);
            }
        }
    }

    public final void f1(boolean z10, l9.e taskRunner) {
        r.e(taskRunner, "taskRunner");
        if (z10) {
            this.C.i();
            this.C.a0(this.f14524v);
            if (this.f14524v.c() != 65535) {
                this.C.b0(0, r5 - 65535);
            }
        }
        taskRunner.i().i(new l9.c(this.f14509f, true, this.D), 0L);
    }

    public final void flush() {
        this.C.flush();
    }

    public final synchronized void h1(long j10) {
        long j11 = this.f14526x + j10;
        this.f14526x = j11;
        long j12 = j11 - this.f14527y;
        if (j12 >= this.f14524v.c() / 2) {
            n1(0, j12);
            this.f14527y += j12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x003a, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.C.G());
        r6 = r2;
        r8.f14528z += r6;
        r4 = n8.h0.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i1(int r9, boolean r10, t9.d r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            o9.j r8 = r8.C
            r8.k(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L71
            monitor-enter(r8)
        L12:
            long r4 = r8.f14528z     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            long r6 = r8.A     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L39
            java.util.Map r2 = r8.f14508c     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            if (r2 == 0) goto L31
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.r.c(r8, r2)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            r8.wait()     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            goto L12
        L2f:
            r9 = move-exception
            goto L6f
        L31:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            throw r9     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
        L39:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2f
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2f
            o9.j r4 = r8.C     // Catch: java.lang.Throwable -> L2f
            int r4 = r4.G()     // Catch: java.lang.Throwable -> L2f
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2f
            long r4 = r8.f14528z     // Catch: java.lang.Throwable -> L2f
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2f
            long r4 = r4 + r6
            r8.f14528z = r4     // Catch: java.lang.Throwable -> L2f
            n8.h0 r4 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r8)
            long r12 = r12 - r6
            o9.j r4 = r8.C
            if (r10 == 0) goto L5d
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L5d
            r5 = 1
            goto L5e
        L5d:
            r5 = r3
        L5e:
            r4.k(r5, r9, r11, r2)
            goto Ld
        L62:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2f
            r9.interrupt()     // Catch: java.lang.Throwable -> L2f
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2f
            r9.<init>()     // Catch: java.lang.Throwable -> L2f
            throw r9     // Catch: java.lang.Throwable -> L2f
        L6f:
            monitor-exit(r8)
            throw r9
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o9.f.i1(int, boolean, t9.d, long):void");
    }

    public final void j1(int i10, boolean z10, List alternating) {
        r.e(alternating, "alternating");
        this.C.D(z10, i10, alternating);
    }

    public final void k1(boolean z10, int i10, int i11) {
        try {
            this.C.I(z10, i10, i11);
        } catch (IOException e10) {
            G0(e10);
        }
    }

    public final void l1(int i10, o9.b statusCode) {
        r.e(statusCode, "statusCode");
        this.C.X(i10, statusCode);
    }

    public final void m1(int i10, o9.b errorCode) {
        r.e(errorCode, "errorCode");
        this.f14514l.i(new k(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] writeSynReset", true, this, i10, errorCode), 0L);
    }

    public final void n1(int i10, long j10) {
        this.f14514l.i(new l(this.f14509f + AbstractJsonLexerKt.BEGIN_LIST + i10 + "] windowUpdate", true, this, i10, j10), 0L);
    }
}
