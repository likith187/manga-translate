package com.coloros.translate.ui.simultaneous.history;

import android.app.Application;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.ui.simultaneous.history.o0;
import com.coloros.translate.utils.z0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class o0 extends com.coloros.translate.base.q {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f6590m = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6591g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.y f6592h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6593i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.lifecycle.y f6594j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.lifecycle.a0 f6595k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.lifecycle.y f6596l;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ List<SimultaneousHistory> $selectedItems;
        final /* synthetic */ o0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<SimultaneousHistory> list, o0 o0Var) {
            super(0);
            this.$selectedItems = list;
            this.this$0 = o0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$1(o0 this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            o0.w(this$0, false, 1, null);
            this$0.p(false);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            i2.a.INSTANCE.f().t().c(this.$selectedItems);
            for (SimultaneousHistory simultaneousHistory : this.$selectedItems) {
                i2.a.INSTANCE.f().u().e(simultaneousHistory.getNoteId());
                com.coloros.translate.ui.simultaneous.utils.b.e(simultaneousHistory.getAudioFile());
            }
            final o0 o0Var = this.this$0;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.p0
                @Override // java.lang.Runnable
                public final void run() {
                    o0.b.invoke$lambda$1(o0Var);
                }
            }, 1, null);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ boolean $isLoadMore;
        final /* synthetic */ o0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z10, o0 o0Var) {
            super(0);
            this.$isLoadMore = z10;
            this.this$0 = o0Var;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            List arrayList;
            if (this.$isLoadMore) {
                Object objE = this.this$0.f6591g.e();
                kotlin.jvm.internal.r.b(objE);
                arrayList = kotlin.collections.o.t0((Collection) objE);
            } else {
                arrayList = new ArrayList();
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm", Locale.getDefault());
            ArrayList arrayList2 = new ArrayList();
            for (SimultaneousHistory simultaneousHistory : i2.a.INSTANCE.f().t().d(arrayList.size(), 20)) {
                String str = simpleDateFormat.format(new Date(simultaneousHistory.getTimestamp()));
                kotlin.jvm.internal.r.d(str, "format(...)");
                arrayList2.add(new n0(simultaneousHistory, str, com.coloros.translate.ui.simultaneous.utils.d.a(simultaneousHistory.getAudioTime())));
            }
            arrayList.addAll(arrayList2);
            this.this$0.f6591g.k(arrayList);
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
            Object objE = o0.this.f6591g.e();
            kotlin.jvm.internal.r.b(objE);
            List listT0 = kotlin.collections.o.t0((Collection) objE);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm", Locale.getDefault());
            SimultaneousHistory simultaneousHistoryB = i2.a.INSTANCE.f().t().b(this.$noteId);
            long j10 = this.$noteId;
            o0 o0Var = o0.this;
            ArrayList arrayList = null;
            Object obj = null;
            if (simultaneousHistoryB == null) {
                Iterator it = listT0.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    n0 n0Var = (n0) it.next();
                    if (j10 == n0Var.c().getNoteId()) {
                        obj = n0Var;
                        break;
                    }
                }
                if (obj != null) {
                    listT0.remove(obj);
                }
                o0Var.f6591g.k(listT0);
                return;
            }
            String str = simpleDateFormat.format(new Date(simultaneousHistoryB.getTimestamp()));
            kotlin.jvm.internal.r.d(str, "format(...)");
            n0 n0Var2 = new n0(simultaneousHistoryB, str, com.coloros.translate.ui.simultaneous.utils.d.a(simultaneousHistoryB.getAudioTime()));
            androidx.lifecycle.a0 a0Var = o0Var.f6591g;
            List<n0> list = (List) o0Var.f6591g.e();
            if (list != null) {
                kotlin.jvm.internal.r.b(list);
                arrayList = new ArrayList(kotlin.collections.o.r(list, 10));
                for (n0 n0Var3 : list) {
                    if (simultaneousHistoryB.getNoteId() == n0Var3.c().getNoteId()) {
                        n0Var3 = n0Var2;
                    }
                    arrayList.add(n0Var3);
                }
            }
            a0Var.k(arrayList);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ n0 $info;
        final /* synthetic */ String $newName;
        final /* synthetic */ o0 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(n0 n0Var, String str, o0 o0Var) {
            super(0);
            this.$info = n0Var;
            this.$newName = str;
            this.this$0 = o0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(o0 this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.p(false);
            o0.w(this$0, false, 1, null);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            SimultaneousHistory simultaneousHistoryC = this.$info.c();
            simultaneousHistoryC.setNoteTitle(this.$newName);
            i2.a.INSTANCE.f().t().a(simultaneousHistoryC);
            final o0 o0Var = this.this$0;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.q0
                @Override // java.lang.Runnable
                public final void run() {
                    o0.e.invoke$lambda$0(o0Var);
                }
            }, 1, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        androidx.lifecycle.a0 a0Var = new androidx.lifecycle.a0(kotlin.collections.o.h());
        this.f6591g = a0Var;
        this.f6592h = a0Var;
        androidx.lifecycle.a0 a0Var2 = new androidx.lifecycle.a0(Boolean.FALSE);
        this.f6593i = a0Var2;
        this.f6594j = a0Var2;
        androidx.lifecycle.a0 a0Var3 = new androidx.lifecycle.a0();
        this.f6595k = a0Var3;
        this.f6596l = a0Var3;
        w(this, false, 1, null);
    }

    private final void v(boolean z10) {
        z0.d(0L, new c(z10, this), 1, null);
    }

    static /* synthetic */ void w(o0 o0Var, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        o0Var.v(z10);
    }

    public final void A(Set items) {
        kotlin.jvm.internal.r.e(items, "items");
        this.f6595k.n(items);
    }

    public final void p(boolean z10) {
        Set set;
        if (kotlin.jvm.internal.r.a(Boolean.valueOf(z10), this.f6593i.e())) {
            return;
        }
        if (!z10 && (set = (Set) this.f6595k.e()) != null) {
            set.clear();
        }
        this.f6593i.n(Boolean.valueOf(z10));
    }

    public final void q() {
        List<n0> list;
        Set set = (Set) this.f6595k.e();
        if (set == null || set.size() < 1 || (list = (List) this.f6591g.e()) == null) {
            return;
        }
        kotlin.jvm.internal.r.b(list);
        ArrayList arrayList = new ArrayList();
        for (n0 n0Var : list) {
            if (set.contains(Long.valueOf(n0Var.c().getNoteId()))) {
                arrayList.add(n0Var.c());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        z0.d(0L, new b(arrayList, this), 1, null);
    }

    public final androidx.lifecycle.y r() {
        return this.f6592h;
    }

    public final n0 s() {
        List<n0> list;
        Set set = (Set) this.f6595k.e();
        if (set == null || set.size() != 1 || (list = (List) this.f6591g.e()) == null) {
            return null;
        }
        Object objE = this.f6595k.e();
        kotlin.jvm.internal.r.b(objE);
        long jLongValue = ((Number) kotlin.collections.o.P((Iterable) objE)).longValue();
        for (n0 n0Var : list) {
            if (n0Var.c().getNoteId() == jLongValue) {
                return n0Var;
            }
        }
        return null;
    }

    public final androidx.lifecycle.y t() {
        return this.f6596l;
    }

    public final androidx.lifecycle.y u() {
        return this.f6594j;
    }

    public final void x() {
        Object objE = this.f6591g.e();
        kotlin.jvm.internal.r.b(objE);
        if (((List) objE).size() < 20) {
            return;
        }
        v(true);
    }

    public final void y(long j10) {
        z0.d(0L, new d(j10), 1, null);
    }

    public final void z(n0 info, String newName) {
        kotlin.jvm.internal.r.e(info, "info");
        kotlin.jvm.internal.r.e(newName, "newName");
        z0.d(0L, new e(info, newName, this), 1, null);
    }
}
