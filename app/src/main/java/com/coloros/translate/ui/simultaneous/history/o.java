package com.coloros.translate.ui.simultaneous.history;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k;
import com.coloros.translate.R;
import com.coloros.translate.ui.simultaneous.history.o;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.checkbox.COUICheckBox;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class o extends androidx.recyclerview.widget.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n8.j f6579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f6580c;

    public static final class a extends k.f {
        a() {
        }

        @Override // androidx.recyclerview.widget.k.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(n0 oldItem, n0 newItem) {
            kotlin.jvm.internal.r.e(oldItem, "oldItem");
            kotlin.jvm.internal.r.e(newItem, "newItem");
            return kotlin.jvm.internal.r.a(oldItem.c().getNoteTitle(), newItem.c().getNoteTitle());
        }

        @Override // androidx.recyclerview.widget.k.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(n0 oldItem, n0 newItem) {
            kotlin.jvm.internal.r.e(oldItem, "oldItem");
            kotlin.jvm.internal.r.e(newItem, "newItem");
            return oldItem.c().getId() == newItem.c().getId();
        }
    }

    public final class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final COUICardListSelectedItemLayout f6581a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f6582b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f6583c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final TextView f6584f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final View f6585h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ImageView f6586i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final TextView f6587j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final COUICheckBox f6588k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ o f6589l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(o oVar, View itemView) {
            super(itemView);
            kotlin.jvm.internal.r.e(itemView, "itemView");
            this.f6589l = oVar;
            View viewFindViewById = itemView.findViewById(R.id.history_item);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6581a = (COUICardListSelectedItemLayout) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.tx_history_title);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.f6582b = (TextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.tx_history_content);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
            this.f6583c = (TextView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R.id.tx_history_date);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
            this.f6584f = (TextView) viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R.id.divider_line);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
            this.f6585h = viewFindViewById5;
            View viewFindViewById6 = itemView.findViewById(R.id.iv_audio_icon);
            kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
            this.f6586i = (ImageView) viewFindViewById6;
            View viewFindViewById7 = itemView.findViewById(R.id.tx_audio_time);
            kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
            this.f6587j = (TextView) viewFindViewById7;
            View viewFindViewById8 = itemView.findViewById(R.id.cb_select);
            kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
            this.f6588k = (COUICheckBox) viewFindViewById8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(b this$0, boolean z10) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.f6588k.setChecked(z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(o this$0, b this$1, n0 info, int i10, View view) {
            boolean z10;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            kotlin.jvm.internal.r.e(info, "$info");
            if (this$0.k()) {
                COUICheckBox cOUICheckBox = this$1.f6588k;
                if (this$0.h().contains(Long.valueOf(info.c().getNoteId()))) {
                    this$0.h().remove(Long.valueOf(info.c().getNoteId()));
                    z10 = false;
                } else {
                    this$0.h().add(Long.valueOf(info.c().getNoteId()));
                    z10 = true;
                }
                cOUICheckBox.setChecked(z10);
            }
            c cVarG = this$0.g();
            if (cVarG != null) {
                cVarG.b(this$1.f6581a, i10, info);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean h(o this$0, b this$1, n0 info, int i10, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            kotlin.jvm.internal.r.e(info, "$info");
            if (!this$0.k()) {
                this$0.p(true);
                this$1.f6588k.setChecked(!r7.isChecked());
                this$0.h().add(Long.valueOf(info.c().getNoteId()));
                this$0.notifyDataSetChanged();
                c cVarG = this$0.g();
                if (cVarG != null) {
                    cVarG.c(this$1.f6581a, i10, info);
                }
            }
            return true;
        }

        public final void e(final n0 info, final int i10) {
            kotlin.jvm.internal.r.e(info, "info");
            this.f6582b.setText(info.c().getNoteTitle());
            this.f6583c.setText(info.c().getSimpleText());
            this.f6584f.setText(info.b());
            if (info.c().getAudioFile().length() > 0) {
                this.f6587j.setText(info.a());
                this.f6585h.setVisibility(0);
                this.f6586i.setVisibility(0);
                this.f6587j.setVisibility(0);
            } else {
                this.f6585h.setVisibility(8);
                this.f6586i.setVisibility(8);
                this.f6587j.setVisibility(8);
            }
            this.f6588k.setVisibility(this.f6589l.k() ? 0 : 8);
            final boolean zContains = this.f6589l.h().contains(Long.valueOf(info.c().getNoteId()));
            if (!this.f6589l.j() || zContains) {
                this.f6588k.post(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.b.f(this.f6597a, zContains);
                    }
                });
            } else {
                this.f6588k.setChecked(false);
            }
            COUICardListSelectedItemLayout cOUICardListSelectedItemLayout = this.f6581a;
            final o oVar = this.f6589l;
            cOUICardListSelectedItemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o.b.g(oVar, this, info, i10, view);
                }
            });
            COUICardListSelectedItemLayout cOUICardListSelectedItemLayout2 = this.f6581a;
            final o oVar2 = this.f6589l;
            cOUICardListSelectedItemLayout2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.r
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return o.b.h(oVar2, this, info, i10, view);
                }
            });
        }
    }

    public interface c {
        void a();

        void b(View view, int i10, n0 n0Var);

        void c(View view, int i10, n0 n0Var);
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Set<Long> mo8invoke() {
            return new LinkedHashSet();
        }
    }

    public o() {
        super(new a());
        this.f6579b = n8.k.b(d.INSTANCE);
    }

    private final boolean i() {
        return h().size() == getItemCount() && !h().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j() {
        return (!this.f6578a || i() || h().isEmpty()) ? false : true;
    }

    public final c g() {
        return this.f6580c;
    }

    public final Set h() {
        return (Set) this.f6579b.getValue();
    }

    public final boolean k() {
        return this.f6578a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b holder, int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        n0 n0Var = (n0) getItem(i10);
        if (n0Var != null) {
            holder.e(n0Var, i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_simultaneous_history, parent, false);
        kotlin.jvm.internal.r.b(viewInflate);
        return new b(this, viewInflate);
    }

    public final Set n() {
        if (!this.f6578a) {
            return null;
        }
        if (h().size() == getItemCount()) {
            h().clear();
        } else {
            int itemCount = getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                h().add(Long.valueOf(((n0) getItem(i10)).c().getNoteId()));
            }
        }
        notifyDataSetChanged();
        return h();
    }

    public final void o(c cVar) {
        this.f6580c = cVar;
    }

    public final void p(boolean z10) {
        this.f6578a = z10;
    }

    public final void q(boolean z10, Set set) {
        if (this.f6578a == z10) {
            return;
        }
        this.f6578a = z10;
        if (!z10) {
            h().clear();
        } else if (set != null) {
            h().clear();
            h().addAll(set);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.q
    public void submitList(List list) {
        if (!i()) {
            super.submitList(list);
            return;
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                h().add(Long.valueOf(((n0) it.next()).c().getNoteId()));
            }
        }
        super.submitList(list);
        c cVar = this.f6580c;
        if (cVar != null) {
            cVar.a();
        }
    }
}
