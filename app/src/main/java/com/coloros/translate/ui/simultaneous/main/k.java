package com.coloros.translate.ui.simultaneous.main;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class k extends RecyclerView.h {

    /* JADX INFO: renamed from: i */
    public static final a f6712i = new a(null);

    /* JADX INFO: renamed from: a */
    private SimultaneousViewControl f6713a;

    /* JADX INFO: renamed from: b */
    private volatile long f6714b;

    /* JADX INFO: renamed from: c */
    private boolean f6715c;

    /* JADX INFO: renamed from: d */
    private List f6716d;

    /* JADX INFO: renamed from: e */
    private volatile long f6717e;

    /* JADX INFO: renamed from: f */
    private volatile long f6718f;

    /* JADX INFO: renamed from: g */
    private boolean f6719g;

    /* JADX INFO: renamed from: h */
    private boolean f6720h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k(SimultaneousViewControl viewControl) {
        kotlin.jvm.internal.r.e(viewControl, "viewControl");
        this.f6713a = viewControl;
        this.f6715c = true;
        this.f6716d = kotlin.collections.o.t0(new ArrayList());
        this.f6719g = true;
    }

    public static final void m(k this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6713a.H();
    }

    public final boolean g() {
        return this.f6720h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return Math.max(this.f6716d.size(), 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return 0;
    }

    public final long h() {
        return this.f6717e;
    }

    public final List i() {
        return this.f6716d;
    }

    public final long j() {
        return this.f6718f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: k */
    public void onBindViewHolder(c holder, int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        o2.a aVar = (o2.a) this.f6716d.get(i10);
        holder.l(aVar, this.f6715c, !this.f6719g ? i10 != getItemCount() - 1 : !(aVar.d() == this.f6717e && aVar.l()), !this.f6720h, i10 == getItemCount() - 1);
        boolean z10 = i10 == getItemCount() - 1 && this.f6714b == 0 && this.f6720h;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainAdapter", "isShowLoading：" + z10 + " currentMsgId：" + this.f6717e + " bottomButtonSpeaking：" + this.f6720h);
        holder.m(false);
        holder.c();
        holder.k().setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.m(this.f6711a, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: l */
    public void onBindViewHolder(c holder, int i10, List payloads) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(payloads, "payloads");
        o2.a aVar = (o2.a) this.f6716d.get(i10);
        boolean z10 = false;
        if (!payloads.isEmpty()) {
            Object obj = payloads.get(0);
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) obj).intValue() == -99) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainAdapter", "onBindViewHolder defaultHistoryColor msgId：" + aVar.d() + " ");
                holder.n(false);
                holder.e(aVar);
                return;
            }
        }
        if (!payloads.isEmpty()) {
            Object obj2 = payloads.get(0);
            kotlin.jvm.internal.r.c(obj2, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) obj2).intValue() >= 0) {
                Object obj3 = payloads.get(0);
                kotlin.jvm.internal.r.c(obj3, "null cannot be cast to non-null type kotlin.Int");
                if (((Integer) obj3).intValue() != getItemCount() - 1 && aVar.l()) {
                    z10 = true;
                }
            }
        }
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousMainAdapter", "onBindViewHolder model：" + aVar.d() + " payloads：" + payloads + " needAlpha:" + z10);
        holder.n(z10);
        onBindViewHolder(holder, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: n */
    public c onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.si_rtt_item, parent, false);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        return new c(viewInflate);
    }

    public final void o() {
        this.f6717e = 0L;
    }

    public final void p(boolean z10) {
        this.f6720h = z10;
    }

    public final void q(boolean z10) {
        this.f6719g = z10;
    }

    public final void r(long j10) {
        this.f6714b = j10;
    }

    public final void s(long j10) {
        this.f6717e = j10;
    }

    public final void t(List list) {
        kotlin.jvm.internal.r.e(list, "<set-?>");
        this.f6716d = list;
    }

    public final void u(long j10) {
        this.f6718f = j10;
    }

    public final void v(boolean z10) {
        this.f6715c = z10;
    }
}
