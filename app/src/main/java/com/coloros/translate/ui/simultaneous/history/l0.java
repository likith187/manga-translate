package com.coloros.translate.ui.simultaneous.history;

import android.app.Application;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.repository.local.SimultaneousSentence;
import com.coloros.translate.ui.simultaneous.history.l0;
import com.coloros.translate.utils.z0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class l0 extends com.coloros.translate.base.q {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f6556u = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private k0 f6557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6558h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.lifecycle.y f6559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6560j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.lifecycle.y f6561k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6562l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.lifecycle.y f6563m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6564n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.lifecycle.y f6565o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6566p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.lifecycle.y f6567q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final n8.j f6568r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f6569s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f6570t;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ SimultaneousHistory $it;
        final /* synthetic */ l0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SimultaneousHistory simultaneousHistory, l0 l0Var) {
            super(0);
            this.$it = simultaneousHistory;
            this.this$0 = l0Var;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            i2.a aVar = i2.a.INSTANCE;
            aVar.f().t().g(this.$it);
            aVar.f().u().e(this.$it.getNoteId());
            if (this.$it.getAudioFile().length() > 0) {
                com.coloros.translate.ui.simultaneous.utils.b.e(this.$it.getAudioFile());
            }
            this.this$0.f6566p.k(Boolean.TRUE);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ w8.l $callBack;
        final /* synthetic */ long $noteId;
        final /* synthetic */ l0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long j10, l0 l0Var, w8.l lVar) {
            super(0);
            this.$noteId = j10;
            this.this$0 = l0Var;
            this.$callBack = lVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$5(w8.l callBack, StringBuilder shareText) {
            kotlin.jvm.internal.r.e(callBack, "$callBack");
            kotlin.jvm.internal.r.e(shareText, "$shareText");
            String string = shareText.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            callBack.invoke(string);
            shareText.setLength(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ArrayList<k0> arrayList = new ArrayList();
            List<SimultaneousSentence> listH = kotlin.collections.o.H(i2.a.INSTANCE.f().u().f(this.$noteId));
            l0 l0Var = this.this$0;
            SimultaneousSentence simultaneousSentence = null;
            for (SimultaneousSentence simultaneousSentence2 : listH) {
                long jC = l0Var.C(simultaneousSentence2);
                arrayList.add(0, new k0(simultaneousSentence2.getMsgId(), com.coloros.translate.ui.simultaneous.utils.d.a(jC / 1000), jC, simultaneousSentence != null ? l0Var.C(simultaneousSentence) : Long.MAX_VALUE, simultaneousSentence2.getFromText(), simultaneousSentence2.getToText(), false));
                simultaneousSentence = simultaneousSentence2;
            }
            final StringBuilder sb = new StringBuilder();
            SimultaneousHistory simultaneousHistory = (SimultaneousHistory) this.this$0.f6560j.e();
            if (simultaneousHistory != null) {
                l0 l0Var2 = this.this$0;
                sb.append(simultaneousHistory.getNoteTitle() + "\n");
                sb.append(l0Var2.y().format(new Date(simultaneousHistory.getTimestamp())) + "\n\n");
            }
            Object objE = this.this$0.f6564n.e();
            kotlin.jvm.internal.r.b(objE);
            if (((Boolean) objE).booleanValue()) {
                for (k0 k0Var : arrayList) {
                    sb.append(k0Var.c() + "\n");
                    sb.append(k0Var.g() + "\n");
                }
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append(((k0) it.next()).g() + "\n");
                }
            }
            final w8.l lVar = this.$callBack;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.m0
                @Override // java.lang.Runnable
                public final void run() {
                    l0.c.invoke$lambda$5(lVar, sb);
                }
            }, 1, null);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ long $noteId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j10) {
            super(0);
            this.$noteId = j10;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            l0.this.f6560j.k(i2.a.INSTANCE.f().t().b(this.$noteId));
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ long $noteId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(long j10) {
            super(0);
            this.$noteId = j10;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ArrayList arrayList = new ArrayList();
            Object objE = l0.this.f6562l.e();
            kotlin.jvm.internal.r.b(objE);
            List listT0 = kotlin.collections.o.t0((Collection) objE);
            i2.g gVarU = i2.a.INSTANCE.f().u();
            long j10 = this.$noteId;
            Object objE2 = l0.this.f6562l.e();
            kotlin.jvm.internal.r.b(objE2);
            List<SimultaneousSentence> listH = kotlin.collections.o.H(gVarU.d(j10, ((List) objE2).size(), 20));
            l0 l0Var = l0.this;
            SimultaneousSentence simultaneousSentence = null;
            for (SimultaneousSentence simultaneousSentence2 : listH) {
                long jC = l0Var.C(simultaneousSentence2);
                arrayList.add(0, new k0(simultaneousSentence2.getMsgId(), com.coloros.translate.ui.simultaneous.utils.d.a(jC / 1000), jC, simultaneousSentence != null ? l0Var.C(simultaneousSentence) : Long.MAX_VALUE, simultaneousSentence2.getFromText(), simultaneousSentence2.getToText(), false));
                simultaneousSentence = simultaneousSentence2;
            }
            if (!arrayList.isEmpty() && !listT0.isEmpty()) {
                ((k0) kotlin.collections.o.c0(listT0)).j(((k0) kotlin.collections.o.Q(arrayList)).e());
            }
            Collection collection = (Collection) l0.this.f6562l.e();
            if ((collection == null || collection.isEmpty()) && arrayList.isEmpty()) {
                arrayList.add(0, new k0(-1L, "", 0L, 0L, "", "", false));
            }
            androidx.lifecycle.a0 a0Var = l0.this.f6562l;
            listT0.addAll(arrayList);
            a0Var.k(listT0);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        public static final f INSTANCE = new f();

        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final SimpleDateFormat mo8invoke() {
            return new SimpleDateFormat("yyyy/MM/dd HH:mm", Locale.getDefault());
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ SimultaneousHistory $it;
        final /* synthetic */ String $newName;
        final /* synthetic */ l0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(SimultaneousHistory simultaneousHistory, String str, l0 l0Var) {
            super(0);
            this.$it = simultaneousHistory;
            this.$newName = str;
            this.this$0 = l0Var;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            this.$it.setNoteTitle(this.$newName);
            i2.a.INSTANCE.f().t().a(this.$it);
            this.this$0.f6560j.k(this.this$0.f6560j.e());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        androidx.lifecycle.a0 a0Var = new androidx.lifecycle.a0();
        this.f6558h = a0Var;
        this.f6559i = a0Var;
        androidx.lifecycle.a0 a0Var2 = new androidx.lifecycle.a0();
        this.f6560j = a0Var2;
        this.f6561k = a0Var2;
        androidx.lifecycle.a0 a0Var3 = new androidx.lifecycle.a0(kotlin.collections.o.h());
        this.f6562l = a0Var3;
        this.f6563m = a0Var3;
        androidx.lifecycle.a0 a0Var4 = new androidx.lifecycle.a0(Boolean.TRUE);
        this.f6564n = a0Var4;
        this.f6565o = a0Var4;
        androidx.lifecycle.a0 a0Var5 = new androidx.lifecycle.a0();
        this.f6566p = a0Var5;
        this.f6567q = a0Var5;
        this.f6568r = n8.k.b(f.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long C(SimultaneousSentence simultaneousSentence) {
        return (long) (simultaneousSentence.getMsgId() * 40.0f);
    }

    private final void G(long j10) {
        z0.d(0L, new d(j10), 1, null);
    }

    private final void H(long j10) {
        z0.d(0L, new e(j10), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpleDateFormat y() {
        return (SimpleDateFormat) this.f6568r.getValue();
    }

    public final long A() {
        return this.f6569s;
    }

    public final void B(long j10, w8.l callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        z0.d(0L, new c(j10, this, callBack), 1, null);
    }

    public final androidx.lifecycle.y D() {
        return this.f6567q;
    }

    public final androidx.lifecycle.y E() {
        return this.f6565o;
    }

    public final void F(long j10) {
        if (j10 == -1) {
            return;
        }
        G(j10);
        H(j10);
    }

    public final void I() {
        SimultaneousHistory simultaneousHistory;
        Object objE = this.f6562l.e();
        kotlin.jvm.internal.r.b(objE);
        if (((List) objE).size() >= 20 && (simultaneousHistory = (SimultaneousHistory) this.f6560j.e()) != null) {
            H(simultaneousHistory.getNoteId());
        }
    }

    public final void J(String newName) {
        kotlin.jvm.internal.r.e(newName, "newName");
        SimultaneousHistory simultaneousHistory = (SimultaneousHistory) this.f6560j.e();
        if (simultaneousHistory != null) {
            z0.d(0L, new g(simultaneousHistory, newName, this), 1, null);
        }
    }

    public final void K(boolean z10) {
        this.f6570t = z10;
    }

    public final void L(long j10) {
        this.f6569s = j10;
    }

    public final void M() {
        androidx.lifecycle.a0 a0Var = this.f6564n;
        kotlin.jvm.internal.r.b(a0Var.e());
        a0Var.n(Boolean.valueOf(!((Boolean) r0).booleanValue()));
    }

    public final void N(long j10) {
        int iV;
        this.f6569s = b9.d.d(j10, 0L);
        List<k0> list = (List) this.f6562l.e();
        if (list == null) {
            return;
        }
        k0 k0Var = this.f6557g;
        if (k0Var != null) {
            kotlin.jvm.internal.r.b(k0Var);
            if (k0Var.i(j10)) {
                return;
            }
        }
        this.f6557g = null;
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(list, 10));
        for (k0 k0VarA : list) {
            if (k0VarA.i(j10)) {
                k0VarA = k0VarA.a((63 & 1) != 0 ? k0VarA.f6548a : 0L, (63 & 2) != 0 ? k0VarA.f6549b : null, (63 & 4) != 0 ? k0VarA.f6550c : 0L, (63 & 8) != 0 ? k0VarA.f6551d : 0L, (63 & 16) != 0 ? k0VarA.f6552e : null, (63 & 32) != 0 ? k0VarA.f6553f : null, (63 & 64) != 0 ? k0VarA.f6554g : true);
                this.f6557g = k0VarA;
                kotlin.jvm.internal.r.b(k0VarA);
            } else if (k0VarA.h()) {
                k0VarA = k0VarA.a((63 & 1) != 0 ? k0VarA.f6548a : 0L, (63 & 2) != 0 ? k0VarA.f6549b : null, (63 & 4) != 0 ? k0VarA.f6550c : 0L, (63 & 8) != 0 ? k0VarA.f6551d : 0L, (63 & 16) != 0 ? k0VarA.f6552e : null, (63 & 32) != 0 ? k0VarA.f6553f : null, (63 & 64) != 0 ? k0VarA.f6554g : false);
            }
            arrayList.add(k0VarA);
        }
        this.f6562l.n(arrayList);
        k0 k0Var2 = this.f6557g;
        if (k0Var2 == null || (iV = kotlin.collections.o.V(arrayList, k0Var2)) < 0 || iV >= arrayList.size()) {
            return;
        }
        this.f6558h.n(Integer.valueOf(iV));
    }

    public final void u() {
        SimultaneousHistory simultaneousHistory = (SimultaneousHistory) this.f6560j.e();
        if (simultaneousHistory != null) {
            z0.d(0L, new b(simultaneousHistory, this), 1, null);
        }
    }

    public final androidx.lifecycle.y v() {
        return this.f6559i;
    }

    public final androidx.lifecycle.y w() {
        return this.f6563m;
    }

    public final androidx.lifecycle.y x() {
        return this.f6561k;
    }

    public final boolean z() {
        return this.f6570t;
    }
}
