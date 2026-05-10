package com.coloros.translate.ui.dialoguetranslation;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.Conversation;
import com.coui.appcompat.checkbox.COUICheckBox;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends RecyclerView.h {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f6257k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f6259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i0 f6264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f6265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f6266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f6267j;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public h0(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f6258a = context;
        this.f6259b = kotlin.collections.o.t0(kotlin.collections.o.h());
        this.f6267j = this.f6258a.getResources().getDimensionPixelOffset(R.dimen.dialog_item_layout_padding_horizontal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(h0 this$0, int i10, COUICheckBox cOUICheckBox, int i11) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i11 == 2) {
            this$0.k().g0().put(String.valueOf(i10), Boolean.TRUE);
        } else {
            this$0.k().g0().remove(String.valueOf(i10));
        }
        this$0.k().J().k(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(i holder, boolean z10) {
        kotlin.jvm.internal.r.e(holder, "$holder");
        holder.l().setChecked(z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f6259b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return ((Conversation) this.f6259b.get(i10)).isLeft() ? 0 : 1;
    }

    public final void h(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        this.f6259b.add(item);
        notifyItemInserted(this.f6259b.indexOf(item));
    }

    public final List i() {
        return this.f6259b;
    }

    public final boolean j() {
        return this.f6261d;
    }

    public final i0 k() {
        i0 i0Var = this.f6264g;
        if (i0Var != null) {
            return i0Var;
        }
        kotlin.jvm.internal.r.r("mViewModelTemp");
        return null;
    }

    public final boolean l() {
        return this.f6262e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final i holder, final int i10) {
        int i11;
        kotlin.jvm.internal.r.e(holder, "holder");
        final boolean z10 = false;
        if (!com.coloros.translate.utils.o0.e()) {
            View view = holder.itemView;
            int i12 = this.f6267j;
            view.setPadding(i12, 0, i12, 0);
        }
        int size = this.f6259b.size();
        this.f6266i = i10;
        if (i10 >= size - 6 && (i11 = this.f6265h) != size && i11 != size - 1) {
            this.f6265h = size;
            k().n0();
        }
        holder.s((Conversation) this.f6259b.get(i10), this.f6263f, size, i10);
        holder.p().setTag(Integer.valueOf(i10));
        if (this.f6260c) {
            holder.l().setVisibility(0);
            if (getItemViewType(i10) == 1) {
                ViewGroup.LayoutParams layoutParams = holder.m().getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.gravity = 8388611;
                holder.m().setLayoutParams(layoutParams2);
                ViewGroup.LayoutParams layoutParams3 = holder.n().getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                layoutParams4.gravity = 8388611;
                holder.m().setLayoutParams(layoutParams4);
            }
        } else {
            holder.l().setVisibility(4);
            if (getItemViewType(i10) == 1) {
                ViewGroup.LayoutParams layoutParams5 = holder.m().getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) layoutParams5;
                layoutParams6.gravity = 8388613;
                holder.m().setLayoutParams(layoutParams6);
                ViewGroup.LayoutParams layoutParams7 = holder.n().getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams7, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) layoutParams7;
                layoutParams8.gravity = 8388613;
                holder.m().setLayoutParams(layoutParams8);
            }
        }
        holder.l().setOnStateChangeListener(new COUICheckBox.OnStateChangeListener() { // from class: com.coloros.translate.ui.dialoguetranslation.f0
            @Override // com.coui.appcompat.checkbox.COUICheckBox.OnStateChangeListener
            public final void onStateChanged(COUICheckBox cOUICheckBox, int i13) {
                h0.n(this.f6251a, i10, cOUICheckBox, i13);
            }
        });
        if (k().g0().get(String.valueOf(i10)) != null && k().g0().containsKey(String.valueOf(i10))) {
            z10 = true;
        }
        holder.l().post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.g0
            @Override // java.lang.Runnable
            public final void run() {
                h0.o(holder, z10);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public i onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(i10 == 0 ? R.layout.dialogue_item_layout_left : R.layout.dialogue_item_layout_right, parent, false);
        kotlin.jvm.internal.r.b(viewInflate);
        return new i(viewInflate, k(), this.f6258a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(i holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.onViewAttachedToWindow(holder);
        holder.B();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(i holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        holder.C();
    }

    public final void s(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        int iIndexOf = this.f6259b.indexOf(item);
        if (iIndexOf < 0) {
            return;
        }
        notifyItemChanged(iIndexOf);
    }

    public final void t(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        int iIndexOf = this.f6259b.indexOf(item);
        this.f6259b.remove(item);
        notifyItemRemoved(iIndexOf);
    }

    public final void u(List data) {
        kotlin.jvm.internal.r.e(data, "data");
        this.f6259b.clear();
        this.f6259b.addAll(data);
        notifyDataSetChanged();
    }

    public final void v(boolean z10) {
        this.f6260c = z10;
    }

    public final void w(boolean z10) {
        this.f6261d = z10;
    }

    public final void x(int i10) {
        this.f6263f = i10;
    }

    public final void y(i0 i0Var) {
        kotlin.jvm.internal.r.e(i0Var, "<set-?>");
        this.f6264g = i0Var;
    }

    public final void z(boolean z10) {
        this.f6262e = z10;
    }
}
