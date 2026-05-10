package com.coloros.translate.screen.translate.engine.picker;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.screen.R$id;
import com.coloros.translate.screen.R$layout;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.R$style;
import com.coloros.translate.screen.translate.engine.picker.e;
import com.coloros.translate.screen.widget.LanguageChooseView;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.panel.COUIPanelContentLayout;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.support.appcompat.R$color;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;
import w8.l;
import w8.q;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: p */
    public static final a f5631p = new a(null);

    /* JADX INFO: renamed from: a */
    private final Context f5632a;

    /* JADX INFO: renamed from: b */
    private final j f5633b;

    /* JADX INFO: renamed from: c */
    private com.coloros.translate.screen.translate.engine.language.a f5634c;

    /* JADX INFO: renamed from: d */
    private com.coloros.translate.screen.translate.engine.language.a f5635d;

    /* JADX INFO: renamed from: e */
    private boolean f5636e;

    /* JADX INFO: renamed from: f */
    private l2.b f5637f;

    /* JADX INFO: renamed from: g */
    private Runnable f5638g;

    /* JADX INFO: renamed from: h */
    private COUIBottomSheetDialog f5639h;

    /* JADX INFO: renamed from: i */
    private View f5640i;

    /* JADX INFO: renamed from: j */
    private TextView f5641j;

    /* JADX INFO: renamed from: k */
    private LanguageChooseView f5642k;

    /* JADX INFO: renamed from: l */
    private COUIRecyclerView f5643l;

    /* JADX INFO: renamed from: m */
    private final j f5644m;

    /* JADX INFO: renamed from: n */
    private final j f5645n;

    /* JADX INFO: renamed from: o */
    private c f5646o;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b extends RecyclerView.h {

        /* JADX INFO: renamed from: a */
        private final boolean f5647a;

        /* JADX INFO: renamed from: c */
        private com.coloros.translate.screen.translate.engine.language.a f5649c;

        /* JADX INFO: renamed from: e */
        private q f5651e;

        /* JADX INFO: renamed from: b */
        private List f5648b = o.h();

        /* JADX INFO: renamed from: d */
        private int f5650d = -1;

        public final class a extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5653a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ b f5654b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5654b = bVar;
                this.f5653a = view;
            }
        }

        /* JADX INFO: renamed from: com.coloros.translate.screen.translate.engine.picker.e$b$b */
        public final class C0079b extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5655a;

            /* JADX INFO: renamed from: b */
            private final TextView f5656b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ b f5657c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0079b(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5657c = bVar;
                this.f5655a = view;
                View viewFindViewById = view.findViewById(R$id.language_type);
                r.d(viewFindViewById, "findViewById(...)");
                this.f5656b = (TextView) viewFindViewById;
            }

            public final void b() {
                this.f5656b.setText(this.f5657c.k() ? e.this.f5632a.getString(R$string.language_source) : e.this.f5632a.getString(R$string.language_target));
            }
        }

        public final class c extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5658a;

            /* JADX INFO: renamed from: b */
            private final COUICardListSelectedItemLayout f5659b;

            /* JADX INFO: renamed from: c */
            private final TextView f5660c;

            /* JADX INFO: renamed from: f */
            private final RadioButton f5661f;

            /* JADX INFO: renamed from: h */
            private final View f5662h;

            /* JADX INFO: renamed from: i */
            final /* synthetic */ b f5663i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5663i = bVar;
                this.f5658a = view;
                View viewFindViewById = view.findViewById(R$id.rl_language_item);
                r.d(viewFindViewById, "findViewById(...)");
                this.f5659b = (COUICardListSelectedItemLayout) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R$id.tv_language_title);
                r.d(viewFindViewById2, "findViewById(...)");
                this.f5660c = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R$id.rb_select);
                r.d(viewFindViewById3, "findViewById(...)");
                this.f5661f = (RadioButton) viewFindViewById3;
                View viewFindViewById4 = view.findViewById(R$id.divider);
                r.d(viewFindViewById4, "findViewById(...)");
                this.f5662h = viewFindViewById4;
            }

            public static final void d(int i10, b this$0, com.coloros.translate.screen.translate.engine.language.a language, View view) {
                r.e(this$0, "this$0");
                r.e(language, "$language");
                if (i10 == this$0.f5650d) {
                    return;
                }
                this$0.f5649c = language;
                int i11 = this$0.f5650d;
                this$0.f5650d = i10;
                q qVarJ = this$0.j();
                if (qVarJ != null) {
                    qVarJ.invoke(Integer.valueOf(i11), Integer.valueOf(this$0.f5650d), language);
                }
            }

            public final void c(final com.coloros.translate.screen.translate.engine.language.a language, final int i10) {
                r.e(language, "language");
                boolean z10 = true;
                if (i10 == 1) {
                    this.f5659b.setPositionInGroup(1);
                } else if (i10 == this.f5663i.getItemCount() - 2) {
                    this.f5659b.setPositionInGroup(3);
                } else {
                    this.f5659b.setPositionInGroup(5);
                }
                this.f5660c.setText(e.this.f5632a.getString(language.getFullNameResId()));
                RadioButton radioButton = this.f5661f;
                String languageCode = language.getLanguageCode();
                com.coloros.translate.screen.translate.engine.language.a aVar = this.f5663i.f5649c;
                if (r.a(languageCode, aVar != null ? aVar.getLanguageCode() : null)) {
                    this.f5663i.f5650d = i10;
                } else {
                    z10 = false;
                }
                radioButton.setChecked(z10);
                this.f5662h.setVisibility(i10 == this.f5663i.getItemCount() + (-2) ? 4 : 0);
                COUICardListSelectedItemLayout cOUICardListSelectedItemLayout = this.f5659b;
                final b bVar = this.f5663i;
                cOUICardListSelectedItemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.screen.translate.engine.picker.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        e.b.c.d(i10, bVar, language, view);
                    }
                });
            }
        }

        public b(boolean z10) {
            this.f5647a = z10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            return this.f5648b.size() + 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            if (i10 == 0) {
                return 0;
            }
            return i10 == getItemCount() - 1 ? 2 : 1;
        }

        public final q j() {
            return this.f5651e;
        }

        public final boolean k() {
            return this.f5647a;
        }

        public final void l(List data) {
            r.e(data, "data");
            this.f5650d = -1;
            this.f5648b = data;
            notifyDataSetChanged();
        }

        public final void m(q qVar) {
            this.f5651e = qVar;
        }

        public final void n(com.coloros.translate.screen.translate.engine.language.a language) {
            r.e(language, "language");
            this.f5649c = language;
            this.f5650d = this.f5648b.indexOf(language);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.d0 holder, int i10) {
            r.e(holder, "holder");
            if (holder instanceof c) {
                ((c) holder).c((com.coloros.translate.screen.translate.engine.language.a) this.f5648b.get(i10 - 1), i10);
            } else if (holder instanceof C0079b) {
                ((C0079b) holder).b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.d0 onCreateViewHolder(ViewGroup parent, int i10) {
            r.e(parent, "parent");
            if (i10 == 0) {
                View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_translate_screen_language_list_top, parent, false);
                r.d(viewInflate, "inflate(...)");
                return new C0079b(this, viewInflate);
            }
            if (i10 != 2) {
                View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_translate_screen_language_list, parent, false);
                r.d(viewInflate2, "inflate(...)");
                return new c(this, viewInflate2);
            }
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_translate_screen_language_list_bottom, parent, false);
            r.d(viewInflate3, "inflate(...)");
            return new a(this, viewInflate3);
        }
    }

    public interface c {
        void a(boolean z10);
    }

    static final class d extends s implements l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            e.this.K();
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.screen.translate.engine.picker.e$e */
    static final class C0080e extends s implements l {
        C0080e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            e.this.L();
        }
    }

    static final class f extends s implements l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            RecyclerView.h adapter;
            if (e.this.u().j(e.this.f5634c, e.this.f5635d)) {
                com.coloros.translate.screen.translate.engine.language.a aVar = e.this.f5635d;
                e eVar = e.this;
                eVar.f5635d = eVar.f5634c;
                e.this.f5634c = aVar;
                e.this.N();
                e.this.v().n(e.this.f5634c);
                COUIRecyclerView cOUIRecyclerView = e.this.f5643l;
                if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, e.this.w())) {
                    e.this.w().n(e.this.f5635d);
                    e.this.w().l(e.this.t());
                }
                COUIRecyclerView cOUIRecyclerView2 = e.this.f5643l;
                if (cOUIRecyclerView2 == null || (adapter = cOUIRecyclerView2.getAdapter()) == null) {
                    return;
                }
                adapter.notifyDataSetChanged();
            }
        }
    }

    static final class g extends s implements w8.a {
        public static final g INSTANCE = new g();

        g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final com.coloros.translate.screen.translate.engine.language.j mo8invoke() {
            return com.coloros.translate.screen.translate.engine.language.j.f5577i.a();
        }
    }

    static final class h extends s implements w8.a {

        static final class a extends s implements q {
            final /* synthetic */ b $this_apply;
            final /* synthetic */ e this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(e eVar, b bVar) {
                super(3);
                this.this$0 = eVar;
                this.$this_apply = bVar;
            }

            @Override // w8.q
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (com.coloros.translate.screen.translate.engine.language.a) obj3);
                return h0.INSTANCE;
            }

            public final void invoke(int i10, int i11, com.coloros.translate.screen.translate.engine.language.a language) {
                r.e(language, "language");
                if (r.a(this.this$0.f5635d.getLanguageCode(), language.getLanguageCode())) {
                    e eVar = this.this$0;
                    eVar.f5635d = eVar.f5634c;
                    this.this$0.f5634c = language;
                    this.this$0.w().n(this.this$0.f5635d);
                } else {
                    this.this$0.f5634c = language;
                }
                this.$this_apply.notifyItemChanged(i10);
                this.$this_apply.notifyItemChanged(i11);
                this.this$0.O();
            }
        }

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b mo8invoke() {
            b bVar = e.this.new b(true);
            e eVar = e.this;
            bVar.l(eVar.u().m());
            bVar.m(new a(eVar, bVar));
            return bVar;
        }
    }

    static final class i extends s implements w8.a {

        static final class a extends s implements q {
            final /* synthetic */ b $this_apply;
            final /* synthetic */ e this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(e eVar, b bVar) {
                super(3);
                this.this$0 = eVar;
                this.$this_apply = bVar;
            }

            @Override // w8.q
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (com.coloros.translate.screen.translate.engine.language.a) obj3);
                return h0.INSTANCE;
            }

            public final void invoke(int i10, int i11, com.coloros.translate.screen.translate.engine.language.a language) {
                r.e(language, "language");
                if (r.a(this.this$0.f5634c.getLanguageCode(), language.getLanguageCode())) {
                    e eVar = this.this$0;
                    eVar.f5634c = eVar.f5635d;
                    this.this$0.f5635d = language;
                    this.this$0.v().n(this.this$0.f5634c);
                    this.this$0.O();
                } else {
                    this.this$0.f5635d = language;
                    this.$this_apply.notifyItemChanged(i10);
                    this.$this_apply.notifyItemChanged(i11);
                }
                this.this$0.N();
            }
        }

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b mo8invoke() {
            b bVar = e.this.new b(false);
            e eVar = e.this;
            bVar.l(eVar.t());
            bVar.m(new a(eVar, bVar));
            return bVar;
        }
    }

    public e(Context context) {
        r.e(context, "context");
        this.f5632a = context;
        this.f5633b = k.b(g.INSTANCE);
        this.f5634c = u().l();
        this.f5635d = u().n();
        this.f5637f = l2.b.SCREEN_TRANSLATE;
        this.f5644m = k.b(new h());
        this.f5645n = k.b(new i());
    }

    public static final boolean A(e this$0, MenuItem it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        c0.f7098a.d("TranslateEngine.LanguagePicker", "on selected from = " + this$0.f5634c + ", to = " + this$0.f5635d);
        com.coloros.translate.screen.translate.engine.language.j jVarU = this$0.u();
        if (jVarU.l() != this$0.f5634c || jVarU.n() != this$0.f5635d) {
            jVarU.M(this$0.f5634c);
            jVarU.Q(this$0.f5635d);
            this$0.f5636e = true;
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5639h;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
        if (this$0.f5636e) {
            this$0.u().F();
        }
        return true;
    }

    private final void C() {
        COUIRecyclerView cOUIRecyclerView = this.f5643l;
        if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, v())) {
            TextView textView = this.f5641j;
            if (textView != null) {
                textView.setText(this.f5632a.getString(R$string.language_source));
            }
            LanguageChooseView languageChooseView = this.f5642k;
            if (languageChooseView != null) {
                languageChooseView.f();
            }
            v().l(u().m());
            v().n(this.f5634c);
            COUIRecyclerView cOUIRecyclerView2 = this.f5643l;
            if (cOUIRecyclerView2 == null) {
                return;
            }
            cOUIRecyclerView2.setAdapter(v());
            return;
        }
        LanguageChooseView languageChooseView2 = this.f5642k;
        if (languageChooseView2 != null) {
            languageChooseView2.j();
        }
        TextView textView2 = this.f5641j;
        if (textView2 != null) {
            textView2.setText(this.f5632a.getString(R$string.language_target));
        }
        w().l(u().o(this.f5634c));
        w().n(this.f5635d);
        COUIRecyclerView cOUIRecyclerView3 = this.f5643l;
        if (cOUIRecyclerView3 == null) {
            return;
        }
        cOUIRecyclerView3.setAdapter(w());
    }

    private final void D() {
        c0.f7098a.d("TranslateEngine.LanguagePicker", "onPickerDismiss");
        this.f5639h = null;
        c cVar = this.f5646o;
        if (cVar != null) {
            cVar.a(true);
        }
        Runnable runnable = this.f5638g;
        if (runnable != null) {
            runnable.run();
        }
        this.f5638g = null;
    }

    public static final void I(e this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        this$0.D();
    }

    public static final void J(e this$0) {
        Window window;
        View viewFindViewById;
        View viewFindViewById2;
        r.e(this$0, "this$0");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5639h;
        Window window2 = cOUIBottomSheetDialog != null ? cOUIBottomSheetDialog.getWindow() : null;
        if (window2 != null) {
            window2.setNavigationBarColor(this$0.f5632a.getResources().getColor(R$color.coui_color_background_elevatedWithCard));
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this$0.f5639h;
        if (cOUIBottomSheetDialog2 == null || (window = cOUIBottomSheetDialog2.getWindow()) == null || (viewFindViewById = window.findViewById(com.support.panel.R$id.coordinator)) == null || (viewFindViewById2 = viewFindViewById.findViewById(com.support.appcompat.R$id.design_bottom_sheet)) == null) {
            return;
        }
        viewFindViewById2.setBackgroundColor(this$0.f5632a.getResources().getColor(R$color.coui_color_background_elevatedWithCard));
    }

    public final void K() {
        COUIRecyclerView cOUIRecyclerView = this.f5643l;
        if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, v())) {
            return;
        }
        TextView textView = this.f5641j;
        if (textView != null) {
            textView.setText(this.f5632a.getString(R$string.language_source));
        }
        LanguageChooseView languageChooseView = this.f5642k;
        if (languageChooseView != null) {
            languageChooseView.f();
        }
        v().l(u().m());
        v().n(this.f5634c);
        COUIRecyclerView cOUIRecyclerView2 = this.f5643l;
        if (cOUIRecyclerView2 == null) {
            return;
        }
        cOUIRecyclerView2.setAdapter(v());
    }

    public final void L() {
        COUIRecyclerView cOUIRecyclerView = this.f5643l;
        if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, w())) {
            return;
        }
        LanguageChooseView languageChooseView = this.f5642k;
        if (languageChooseView != null) {
            languageChooseView.j();
        }
        TextView textView = this.f5641j;
        if (textView != null) {
            textView.setText(this.f5632a.getString(R$string.language_target));
        }
        w().l(u().o(this.f5634c));
        w().n(this.f5635d);
        COUIRecyclerView cOUIRecyclerView2 = this.f5643l;
        if (cOUIRecyclerView2 == null) {
            return;
        }
        cOUIRecyclerView2.setAdapter(w());
    }

    public final void N() {
        String string = this.f5632a.getString(this.f5634c.getFullNameResId());
        r.d(string, "getString(...)");
        String string2 = this.f5632a.getString(this.f5635d.getFullNameResId());
        r.d(string2, "getString(...)");
        LanguageChooseView languageChooseView = this.f5642k;
        if (languageChooseView != null) {
            languageChooseView.k(string, string2);
        }
        if (u().j(this.f5634c, this.f5635d)) {
            LanguageChooseView languageChooseView2 = this.f5642k;
            if (languageChooseView2 != null) {
                languageChooseView2.setLanguageChangeIcon(R$drawable.screen_right_single_arrow);
                return;
            }
            return;
        }
        LanguageChooseView languageChooseView3 = this.f5642k;
        if (languageChooseView3 != null) {
            languageChooseView3.setLanguageChangeIcon(R$drawable.switch_launguage_single_arrow);
        }
    }

    public final void O() {
        b bVarW = w();
        List listT = t();
        String languageCode = this.f5635d.getLanguageCode();
        Iterator it = listT.iterator();
        while (true) {
            if (!it.hasNext()) {
                this.f5635d = (com.coloros.translate.screen.translate.engine.language.a) o.Q(listT);
                break;
            } else if (r.a(languageCode, ((com.coloros.translate.screen.translate.engine.language.a) it.next()).getLanguageCode())) {
                break;
            }
        }
        w().n(this.f5635d);
        N();
        bVarW.l(listT);
    }

    public final List t() {
        return u().o(this.f5634c);
    }

    public final com.coloros.translate.screen.translate.engine.language.j u() {
        return (com.coloros.translate.screen.translate.engine.language.j) this.f5633b.getValue();
    }

    public final b v() {
        return (b) this.f5644m.getValue();
    }

    public final b w() {
        return (b) this.f5645n.getValue();
    }

    private final void x(View view, boolean z10) {
        y(view);
        this.f5641j = view != null ? (TextView) view.findViewById(R$id.tv_language_title) : null;
        this.f5642k = view != null ? (LanguageChooseView) view.findViewById(R$id.chooseLanguage) : null;
        COUIRecyclerView cOUIRecyclerView = view != null ? (COUIRecyclerView) view.findViewById(R$id.recycler) : null;
        this.f5643l = cOUIRecyclerView;
        if (cOUIRecyclerView != null) {
            cOUIRecyclerView.setLayoutManager(new COUILinearLayoutManager(this.f5632a, 1, false));
        }
        N();
        if (z10) {
            K();
        } else {
            L();
        }
        LanguageChooseView languageChooseView = this.f5642k;
        if (languageChooseView != null) {
            languageChooseView.setOnFromLangeClickListener(new d());
        }
        LanguageChooseView languageChooseView2 = this.f5642k;
        if (languageChooseView2 != null) {
            languageChooseView2.setOnToLangeClickListener(new C0080e());
        }
        LanguageChooseView languageChooseView3 = this.f5642k;
        if (languageChooseView3 != null) {
            languageChooseView3.setOnSwitchClickListener(new f());
        }
    }

    private final void y(View view) {
        Menu menu;
        MenuItem menuItemFindItem;
        Menu menu2;
        MenuItem menuItemFindItem2;
        COUIToolbar cOUIToolbar = view != null ? (COUIToolbar) view.findViewById(R$id.picker_toolbar) : null;
        if (cOUIToolbar != null) {
            cOUIToolbar.setIsTitleCenterStyle(true);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitle(R$string.language_select);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitleTextColor(this.f5632a.getColor(com.coloros.translate.screen.R$color.black_alpha90));
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setSubtitleTextColor(this.f5632a.getColor(com.coloros.translate.screen.R$color.task_panel_sub_title_color));
        }
        if (cOUIToolbar != null && (menu2 = cOUIToolbar.getMenu()) != null && (menuItemFindItem2 = menu2.findItem(R$id.menu_cancel)) != null) {
            menuItemFindItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.screen.translate.engine.picker.c
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return e.z(this.f5629a, menuItem);
                }
            });
        }
        if (cOUIToolbar == null || (menu = cOUIToolbar.getMenu()) == null || (menuItemFindItem = menu.findItem(R$id.menu_confirm)) == null) {
            return;
        }
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.screen.translate.engine.picker.d
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return e.A(this.f5630a, menuItem);
            }
        });
    }

    public static final boolean z(e this$0, MenuItem it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        this$0.f5636e = false;
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5639h;
        if (cOUIBottomSheetDialog == null) {
            return true;
        }
        cOUIBottomSheetDialog.dismiss();
        return true;
    }

    public final boolean B() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5639h;
        if (cOUIBottomSheetDialog != null) {
            return cOUIBottomSheetDialog.isShowing();
        }
        return false;
    }

    public final void E() {
        this.f5638g = null;
    }

    public final void F(c dismissListener) {
        r.e(dismissListener, "dismissListener");
        this.f5646o = dismissListener;
    }

    public final void G(l2.b translateEngineType) {
        r.e(translateEngineType, "translateEngineType");
        this.f5637f = translateEngineType;
    }

    public final void H(boolean z10, boolean z11) {
        COUIPanelContentLayout dragableLinearLayout;
        this.f5634c = u().l();
        this.f5635d = u().n();
        COUIBottomSheetDialog cOUIBottomSheetDialog = new COUIBottomSheetDialog(new androidx.appcompat.view.d(this.f5632a, R$style.AppTheme), R$style.ThemeCOUIBottomSheetDialog);
        cOUIBottomSheetDialog.getContext().setTheme(R$style.ThemeCOUIBottomSheetDialog);
        Window window = cOUIBottomSheetDialog.getWindow();
        if (window != null) {
            window.setType(2038);
        }
        Window window2 = cOUIBottomSheetDialog.getWindow();
        if (window2 != null) {
            window2.setTitle("screen_language_picker");
        }
        ImageView dragView = null;
        if (z11) {
            Window window3 = cOUIBottomSheetDialog.getWindow();
            View decorView = window3 != null ? window3.getDecorView() : null;
            if (decorView != null) {
                decorView.setSystemUiVisibility(4);
            }
        }
        View viewInflate = LayoutInflater.from(cOUIBottomSheetDialog.getContext()).inflate(R$layout.layout_translate_screen_language_picker, (ViewGroup) null);
        this.f5640i = viewInflate;
        this.f5639h = cOUIBottomSheetDialog;
        cOUIBottomSheetDialog.setContentView(viewInflate);
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this.f5639h;
        if (cOUIBottomSheetDialog2 != null && (dragableLinearLayout = cOUIBottomSheetDialog2.getDragableLinearLayout()) != null) {
            dragView = dragableLinearLayout.getDragView();
        }
        if (dragView != null) {
            dragView.setVisibility(8);
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog3 = this.f5639h;
        if (cOUIBottomSheetDialog3 != null) {
            cOUIBottomSheetDialog3.setIsShowInMaxHeight(true);
        }
        x(this.f5640i, z10);
        COUIBottomSheetDialog cOUIBottomSheetDialog4 = this.f5639h;
        if (cOUIBottomSheetDialog4 != null) {
            cOUIBottomSheetDialog4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.screen.translate.engine.picker.a
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    e.I(this.f5627a, dialogInterface);
                }
            });
        }
        View view = this.f5640i;
        if (view != null) {
            view.post(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.picker.b
                @Override // java.lang.Runnable
                public final void run() {
                    e.J(this.f5628a);
                }
            });
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog5 = this.f5639h;
        if (cOUIBottomSheetDialog5 != null) {
            cOUIBottomSheetDialog5.show();
        }
        c0.f7098a.d("TranslateEngine.LanguagePicker", "show()");
    }

    public final void M() {
        Object objM59constructorimpl;
        if (B()) {
            try {
                r.a aVar = n8.r.Companion;
                this.f5634c = u().l();
                this.f5635d = u().n();
                N();
                C();
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslateEngine.LanguagePicker", "update onFailure:" + thM62exceptionOrNullimpl);
            }
        }
    }

    public final void s() {
        c0.f7098a.d("TranslateEngine.LanguagePicker", "dismiss()");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5639h;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
    }
}
