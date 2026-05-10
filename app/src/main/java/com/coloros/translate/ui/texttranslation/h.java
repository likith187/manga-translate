package com.coloros.translate.ui.texttranslation;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.TextHistory;
import com.coui.appcompat.checkbox.COUICheckBox;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class h extends RecyclerView.h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6983g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f6984a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f6985b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w8.l f6987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w8.l f6988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private w8.l f6989f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f6990a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f6991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final COUICheckBox f6992c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ImageView f6993f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View itemView) {
            super(itemView);
            kotlin.jvm.internal.r.e(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R.id.ori_content);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6990a = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.result_content);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.f6991b = (TextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.checkbox);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
            this.f6992c = (COUICheckBox) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R.id.ai_mark);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
            this.f6993f = (ImageView) viewFindViewById4;
        }

        public final ImageView b() {
            return this.f6993f;
        }

        public final COUICheckBox c() {
            return this.f6992c;
        }

        public final TextView d() {
            return this.f6990a;
        }

        public final TextView e() {
            return this.f6991b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(b holder, boolean z10) {
        kotlin.jvm.internal.r.e(holder, "$holder");
        holder.c().setChecked(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(b holder, h this$0, int i10, View view) {
        kotlin.jvm.internal.r.e(holder, "$holder");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        holder.c().performClick();
        if (this$0.f6985b.contains(Integer.valueOf(i10))) {
            this$0.f6985b.remove(Integer.valueOf(i10));
        } else {
            this$0.f6985b.add(Integer.valueOf(i10));
        }
        w8.l lVar = this$0.f6989f;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(this$0.f6985b.size()));
        }
        com.coloros.translate.utils.c0.f7098a.d("HistorySelectionAdapter", "selectedItem.size : " + this$0.f6985b.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(h this$0, int i10, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        w8.l lVar = this$0.f6987d;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r(h this$0, int i10, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        w8.l lVar = this$0.f6988e;
        if (lVar == null) {
            return true;
        }
        lVar.invoke(Integer.valueOf(i10));
        return true;
    }

    public final void A(int i10) {
        this.f6985b.clear();
        this.f6985b.add(Integer.valueOf(i10));
        w8.l lVar = this.f6989f;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(this.f6985b.size()));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        if (this.f6984a.size() > 100) {
            return 100;
        }
        return this.f6984a.size();
    }

    public final void j() {
        this.f6984a.clear();
        notifyDataSetChanged();
    }

    public final void k() {
        this.f6985b.clear();
    }

    public final void l() {
        this.f6985b.clear();
        com.coloros.translate.utils.c0.f7098a.d("HistorySelectionAdapter", "clearSelectedStates selectedItem.size : " + this.f6985b.size());
        w8.l lVar = this.f6989f;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(this.f6985b.size()));
        }
        notifyDataSetChanged();
    }

    public final List m() {
        return this.f6985b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final b holder, final int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        Object obj = this.f6984a.get(i10);
        kotlin.jvm.internal.r.d(obj, "get(...)");
        TextHistory textHistory = (TextHistory) obj;
        holder.d().setText(textHistory.getOriContent());
        holder.e().setText(textHistory.getResultContent());
        holder.b().setVisibility(kotlin.jvm.internal.r.a(textHistory.getExpandField1(), TextHistory.AI_RESULT) ? 0 : 8);
        if (!this.f6986c) {
            holder.c().setVisibility(8);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h.q(this.f6977a, i10, view);
                }
            });
            holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.texttranslation.g
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return h.r(this.f6980a, i10, view);
                }
            });
        } else {
            holder.c().setVisibility(0);
            final boolean zContains = this.f6985b.contains(Integer.valueOf(i10));
            holder.c().post(new Runnable() { // from class: com.coloros.translate.ui.texttranslation.d
                @Override // java.lang.Runnable
                public final void run() {
                    h.o(holder, zContains);
                }
            });
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h.p(holder, this, i10, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_selection_history, parent, false);
        kotlin.jvm.internal.r.b(viewInflate);
        return new b(viewInflate);
    }

    public final void t() {
        this.f6985b.clear();
        com.coloros.translate.utils.c0.f7098a.d("HistorySelectionAdapter", "selectedAll clear selectedItem.size : " + this.f6985b.size());
        int i10 = 0;
        for (Object obj : this.f6984a) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.o.q();
            }
            this.f6985b.add(Integer.valueOf(i10));
            i10 = i11;
        }
        com.coloros.translate.utils.c0.f7098a.d("HistorySelectionAdapter", "selectedAll selectedItem.size : " + this.f6985b.size());
        w8.l lVar = this.f6989f;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(this.f6985b.size()));
        }
        notifyDataSetChanged();
    }

    public final void u(ArrayList historyList) {
        kotlin.jvm.internal.r.e(historyList, "historyList");
        this.f6984a = historyList;
        notifyDataSetChanged();
    }

    public final void v(boolean z10) {
        this.f6986c = z10;
        notifyDataSetChanged();
    }

    public final void w(w8.l lVar) {
        this.f6987d = lVar;
    }

    public final void x(w8.l lVar) {
        this.f6988e = lVar;
    }

    public final void y(w8.l lVar) {
        this.f6989f = lVar;
    }

    public final void z(List data) {
        kotlin.jvm.internal.r.e(data, "data");
        this.f6985b.addAll(data);
        w8.l lVar = this.f6989f;
        if (lVar != null) {
            lVar.invoke(Integer.valueOf(this.f6985b.size()));
        }
    }
}
