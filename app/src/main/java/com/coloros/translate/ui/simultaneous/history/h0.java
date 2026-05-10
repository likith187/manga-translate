package com.coloros.translate.ui.simultaneous.history;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.ui.simultaneous.history.h0;
import com.coloros.translate.ui.simultaneous.widget.TextBackgroundTextView;
import com.support.appcompat.R$color;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends androidx.recyclerview.widget.q {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f6527i = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f6528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n8.j f6529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n8.j f6530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n8.j f6531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n8.q f6534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n8.j f6535h;

    public static final class a extends k.f {
        a() {
        }

        @Override // androidx.recyclerview.widget.k.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(k0 oldItem, k0 newItem) {
            kotlin.jvm.internal.r.e(oldItem, "oldItem");
            kotlin.jvm.internal.r.e(newItem, "newItem");
            return oldItem.h() == newItem.h();
        }

        @Override // androidx.recyclerview.widget.k.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(k0 oldItem, k0 newItem) {
            kotlin.jvm.internal.r.e(oldItem, "oldItem");
            kotlin.jvm.internal.r.e(newItem, "newItem");
            return oldItem.d() == newItem.d();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public final class c extends d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final TextView f6536h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final TextView f6537i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ h0 f6538j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(h0 h0Var, View itemView) {
            super(h0Var, itemView);
            kotlin.jvm.internal.r.e(itemView, "itemView");
            this.f6538j = h0Var;
            View viewFindViewById = itemView.findViewById(R.id.tv_title);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6536h = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.tx_date_time);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.f6537i = (TextView) viewFindViewById2;
        }

        public final void g(n8.q qVar, k0 detailsInfo) {
            kotlin.jvm.internal.r.e(detailsInfo, "detailsInfo");
            super.d(detailsInfo);
            if (qVar != null) {
                this.f6536h.setText((CharSequence) qVar.getFirst());
                this.f6537i.setText((CharSequence) qVar.getSecond());
            }
        }
    }

    public class d extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f6539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextBackgroundTextView f6540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextBackgroundTextView f6541c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ h0 f6542f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(h0 h0Var, View itemView) {
            super(itemView);
            kotlin.jvm.internal.r.e(itemView, "itemView");
            this.f6542f = h0Var;
            View viewFindViewById = itemView.findViewById(R.id.tx_start_time);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6539a = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.tx_from_text);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.f6540b = (TextBackgroundTextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.tx_to_text);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
            this.f6541c = (TextBackgroundTextView) viewFindViewById3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean e(View view) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(k0 info, h0 this$0, View view) {
            e eVarO;
            kotlin.jvm.internal.r.e(info, "$info");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (info.h() || (eVarO = this$0.o()) == null) {
                return;
            }
            eVarO.a(info);
        }

        public void d(final k0 info) {
            kotlin.jvm.internal.r.e(info, "info");
            this.f6539a.setText(info.f());
            this.f6539a.setVisibility(this.f6542f.f6533f ? 0 : 8);
            this.f6540b.setVisibility(this.f6542f.f6532e ? 0 : 8);
            this.f6540b.setText(info.c());
            this.f6541c.setText(info.g());
            if (info.h()) {
                this.f6540b.setTextBackgroundColor(this.f6542f.m());
                this.f6540b.setTextColor(this.f6542f.n());
                this.f6541c.setTextBackgroundColor(this.f6542f.m());
                this.f6541c.setTextColor(this.f6542f.n());
            } else {
                this.f6540b.b();
                this.f6540b.setTextColor(this.f6542f.l());
                this.f6541c.b();
                this.f6541c.setTextColor(this.f6542f.l());
            }
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.i0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return h0.d.e(view);
                }
            });
            View view = this.itemView;
            final h0 h0Var = this.f6542f;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    h0.d.f(info, h0Var, view2);
                }
            });
        }
    }

    public interface e {
        void a(k0 k0Var);
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
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Integer mo8invoke() {
            return Integer.valueOf(this.$context.getColor(R$color.coui_color_label_primary));
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Integer mo8invoke() {
            return Integer.valueOf(this.$context.getColor(R$color.coui_color_container_theme_halftone_blue));
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Integer mo8invoke() {
            return Integer.valueOf(this.$context.getColor(R$color.coui_color_label_theme_blue));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(Context context) {
        super(new a());
        kotlin.jvm.internal.r.e(context, "context");
        this.f6529b = n8.k.b(new g(context));
        this.f6530c = n8.k.b(new i(context));
        this.f6531d = n8.k.b(new h(context));
        this.f6532e = true;
        this.f6535h = n8.k.b(f.INSTANCE);
    }

    private final SimpleDateFormat k() {
        return (SimpleDateFormat) this.f6535h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int l() {
        return ((Number) this.f6529b.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int m() {
        return ((Number) this.f6531d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int n() {
        return ((Number) this.f6530c.getValue()).intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return i10 == 0 ? 0 : 1;
    }

    public final e o() {
        return this.f6528a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(d holder, int i10) {
        kotlin.jvm.internal.r.e(holder, "holder");
        if (!(holder instanceof c)) {
            Object item = getItem(i10);
            kotlin.jvm.internal.r.d(item, "getItem(...)");
            holder.d((k0) item);
        } else {
            n8.q qVar = this.f6534g;
            Object item2 = getItem(i10);
            kotlin.jvm.internal.r.d(item2, "getItem(...)");
            ((c) holder).g(qVar, (k0) item2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public d onCreateViewHolder(ViewGroup parent, int i10) {
        kotlin.jvm.internal.r.e(parent, "parent");
        if (i10 == 0) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_simultaneous_history_details_top, parent, false);
            kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
            return new c(this, viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_simultaneous_history_details, parent, false);
        kotlin.jvm.internal.r.d(viewInflate2, "inflate(...)");
        return new d(this, viewInflate2);
    }

    public final void r(e eVar) {
        this.f6528a = eVar;
    }

    public final void s(boolean z10) {
        if (this.f6533f == z10) {
            return;
        }
        this.f6533f = z10;
        notifyDataSetChanged();
    }

    public final void t(boolean z10) {
        if (this.f6532e == z10) {
            return;
        }
        this.f6532e = z10;
        notifyDataSetChanged();
    }

    public final void u(SimultaneousHistory info) {
        kotlin.jvm.internal.r.e(info, "info");
        this.f6534g = new n8.q(info.getNoteTitle(), k().format(new Date(info.getTimestamp())));
        if (getItemCount() > 0) {
            notifyItemChanged(0);
        }
    }
}
