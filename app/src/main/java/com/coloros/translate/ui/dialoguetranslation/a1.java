package com.coloros.translate.ui.dialoguetranslation;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.Conversation;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a1 extends RecyclerView.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f6204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6207f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c1 f6208g;

    public a1(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f6202a = context;
        this.f6203b = true;
        this.f6204c = kotlin.collections.o.t0(kotlin.collections.o.h());
        this.f6206e = com.coloros.translate.utils.z.f(this.f6202a);
        this.f6207f = com.coloros.translate.utils.j.f7127a.e(this.f6202a);
    }

    public final List f() {
        return this.f6204c;
    }

    public final c1 g() {
        c1 c1Var = this.f6208g;
        if (c1Var != null) {
            return c1Var;
        }
        kotlin.jvm.internal.r.r("mViewModelTemp");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f6204c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        if (((Conversation) this.f6204c.get(i10)).isLeft()) {
            if (!this.f6203b) {
                return 1;
            }
        } else if (this.f6203b) {
            return 1;
        }
        return 0;
    }

    public final void h(int i10, Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        this.f6204c.add(i10, item);
        notifyItemInserted(this.f6204c.indexOf(item));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(r0 holder, int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        this.f6205d = i10;
        holder.g((Conversation) this.f6204c.get(i10), this.f6203b, this.f6206e, this.f6207f);
        holder.e().setTag(Integer.valueOf(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public r0 onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(i10 == 0 ? R.layout.face_to_face_item_layout_left : R.layout.face_to_face_item_layout_right, parent, false);
        kotlin.jvm.internal.r.b(viewInflate);
        return new r0(viewInflate, g(), this.f6202a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(r0 holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.onViewAttachedToWindow(holder);
        holder.i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(r0 holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        holder.j();
    }

    public final void m(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        int iIndexOf = this.f6204c.indexOf(item);
        if (iIndexOf < 0) {
            return;
        }
        notifyItemChanged(iIndexOf);
    }

    public final void n(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        int iIndexOf = this.f6204c.indexOf(item);
        if (iIndexOf < 0) {
            return;
        }
        this.f6204c.remove(item);
        notifyItemRemoved(iIndexOf);
    }

    public final void o(List data) {
        kotlin.jvm.internal.r.e(data, "data");
        this.f6204c.clear();
        this.f6204c.addAll(data);
        notifyDataSetChanged();
    }

    public final void p(boolean z10) {
        this.f6203b = z10;
    }

    public final void q(c1 c1Var) {
        kotlin.jvm.internal.r.e(c1Var, "<set-?>");
        this.f6208g = c1Var;
    }
}
