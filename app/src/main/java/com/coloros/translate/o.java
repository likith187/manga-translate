package com.coloros.translate;

import android.app.Activity;
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
import com.coloros.translate.o;
import com.coloros.translate.utils.c0;
import com.coloros.translate.widget.LanguageChooseView;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.panel.COUIPanelContentLayout;
import com.coui.appcompat.toolbar.COUIToolbar;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: r */
    public static final a f5290r = new a(null);

    /* JADX INFO: renamed from: a */
    private final Context f5291a;

    /* JADX INFO: renamed from: b */
    private final n8.j f5292b;

    /* JADX INFO: renamed from: c */
    private com.coloros.translate.b f5293c;

    /* JADX INFO: renamed from: d */
    private com.coloros.translate.b f5294d;

    /* JADX INFO: renamed from: e */
    private boolean f5295e;

    /* JADX INFO: renamed from: f */
    private q f5296f;

    /* JADX INFO: renamed from: g */
    private Runnable f5297g;

    /* JADX INFO: renamed from: h */
    private COUIBottomSheetDialog f5298h;

    /* JADX INFO: renamed from: i */
    private View f5299i;

    /* JADX INFO: renamed from: j */
    private Boolean f5300j;

    /* JADX INFO: renamed from: k */
    private TextView f5301k;

    /* JADX INFO: renamed from: l */
    private LanguageChooseView f5302l;

    /* JADX INFO: renamed from: m */
    private COUIRecyclerView f5303m;

    /* JADX INFO: renamed from: n */
    private Integer f5304n;

    /* JADX INFO: renamed from: o */
    private final n8.j f5305o;

    /* JADX INFO: renamed from: p */
    private final n8.j f5306p;

    /* JADX INFO: renamed from: q */
    private c f5307q;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b extends RecyclerView.h {

        /* JADX INFO: renamed from: a */
        private final boolean f5308a;

        /* JADX INFO: renamed from: c */
        private com.coloros.translate.b f5310c;

        /* JADX INFO: renamed from: e */
        private w8.q f5312e;

        /* JADX INFO: renamed from: b */
        private List f5309b = kotlin.collections.o.h();

        /* JADX INFO: renamed from: d */
        private int f5311d = -1;

        public final class a extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5314a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ b f5315b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5315b = bVar;
                this.f5314a = view;
            }
        }

        /* JADX INFO: renamed from: com.coloros.translate.o$b$b */
        public final class C0069b extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5316a;

            /* JADX INFO: renamed from: b */
            private final TextView f5317b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ b f5318c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0069b(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5318c = bVar;
                this.f5316a = view;
                View viewFindViewById = view.findViewById(R.id.language_type);
                r.d(viewFindViewById, "findViewById(...)");
                this.f5317b = (TextView) viewFindViewById;
            }

            public final void b() {
                this.f5317b.setText(this.f5318c.k() ? o.this.f5291a.getString(R.string.source_language) : o.this.f5291a.getString(R.string.target_language));
            }
        }

        public final class c extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a */
            private final View f5319a;

            /* JADX INFO: renamed from: b */
            private final COUICardListSelectedItemLayout f5320b;

            /* JADX INFO: renamed from: c */
            private final TextView f5321c;

            /* JADX INFO: renamed from: f */
            private final RadioButton f5322f;

            /* JADX INFO: renamed from: h */
            private final View f5323h;

            /* JADX INFO: renamed from: i */
            final /* synthetic */ b f5324i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(b bVar, View view) {
                super(view);
                r.e(view, "view");
                this.f5324i = bVar;
                this.f5319a = view;
                View viewFindViewById = view.findViewById(R.id.rl_language_item);
                r.d(viewFindViewById, "findViewById(...)");
                this.f5320b = (COUICardListSelectedItemLayout) viewFindViewById;
                View viewFindViewById2 = view.findViewById(R.id.tv_language_title);
                r.d(viewFindViewById2, "findViewById(...)");
                this.f5321c = (TextView) viewFindViewById2;
                View viewFindViewById3 = view.findViewById(R.id.rb_select);
                r.d(viewFindViewById3, "findViewById(...)");
                this.f5322f = (RadioButton) viewFindViewById3;
                View viewFindViewById4 = view.findViewById(R.id.divider);
                r.d(viewFindViewById4, "findViewById(...)");
                this.f5323h = viewFindViewById4;
            }

            public static final void d(int i10, b this$0, com.coloros.translate.b language, View view) {
                r.e(this$0, "this$0");
                r.e(language, "$language");
                if (i10 == this$0.f5311d) {
                    return;
                }
                this$0.f5310c = language;
                int i11 = this$0.f5311d;
                this$0.f5311d = i10;
                w8.q qVarJ = this$0.j();
                if (qVarJ != null) {
                    qVarJ.invoke(Integer.valueOf(i11), Integer.valueOf(this$0.f5311d), language);
                }
            }

            public final void c(final com.coloros.translate.b language, final int i10) {
                r.e(language, "language");
                boolean z10 = true;
                if (i10 == 1) {
                    this.f5320b.setPositionInGroup(1);
                } else if (i10 == this.f5324i.getItemCount() - 2) {
                    this.f5320b.setPositionInGroup(3);
                } else {
                    this.f5320b.setPositionInGroup(5);
                }
                this.f5321c.setText(o.this.f5291a.getString(language.getFullNameResId()));
                if (o.this.v().B()) {
                    if (r.a(language.getLanguageCode(), com.coloros.translate.b.CHINESE.getLanguageCode())) {
                        this.f5321c.setText(o.this.f5291a.getString(R.string.chinese));
                    }
                    if (r.a(language.getLanguageCode(), com.coloros.translate.b.SPANISH.getLanguageCode())) {
                        this.f5321c.setText(o.this.f5291a.getString(R.string.spanish_os15));
                    }
                }
                RadioButton radioButton = this.f5322f;
                String languageCode = language.getLanguageCode();
                com.coloros.translate.b bVar = this.f5324i.f5310c;
                if (r.a(languageCode, bVar != null ? bVar.getLanguageCode() : null)) {
                    this.f5324i.f5311d = i10;
                } else {
                    z10 = false;
                }
                radioButton.setChecked(z10);
                this.f5323h.setVisibility(i10 == this.f5324i.getItemCount() + (-2) ? 4 : 0);
                COUICardListSelectedItemLayout cOUICardListSelectedItemLayout = this.f5320b;
                final b bVar2 = this.f5324i;
                cOUICardListSelectedItemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o.b.c.d(i10, bVar2, language, view);
                    }
                });
            }
        }

        public b(boolean z10) {
            this.f5308a = z10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            return this.f5309b.size() + 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            if (i10 == 0) {
                return 0;
            }
            return i10 == getItemCount() - 1 ? 2 : 1;
        }

        public final w8.q j() {
            return this.f5312e;
        }

        public final boolean k() {
            return this.f5308a;
        }

        public final void l(List data) {
            r.e(data, "data");
            this.f5311d = -1;
            this.f5309b = data;
            notifyDataSetChanged();
        }

        public final void m(w8.q qVar) {
            this.f5312e = qVar;
        }

        public final void n(com.coloros.translate.b language) {
            r.e(language, "language");
            this.f5310c = language;
            this.f5311d = this.f5309b.indexOf(language);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.d0 holder, int i10) {
            r.e(holder, "holder");
            if (holder instanceof c) {
                ((c) holder).c((com.coloros.translate.b) this.f5309b.get(i10 - 1), i10);
            } else if (holder instanceof C0069b) {
                ((C0069b) holder).b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.d0 onCreateViewHolder(ViewGroup parent, int i10) {
            r.e(parent, "parent");
            if (i10 == 0) {
                View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_language_list_top, parent, false);
                r.d(viewInflate, "inflate(...)");
                return new C0069b(this, viewInflate);
            }
            if (i10 != 2) {
                View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_language_list, parent, false);
                r.d(viewInflate2, "inflate(...)");
                return new c(this, viewInflate2);
            }
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_language_list_bottom, parent, false);
            r.d(viewInflate3, "inflate(...)");
            return new a(this, viewInflate3);
        }
    }

    public interface c {
        void a(boolean z10);
    }

    static final class d extends s implements w8.l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            o.this.K();
        }
    }

    static final class e extends s implements w8.l {
        e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            o.this.L();
        }
    }

    static final class f extends s implements w8.l {
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
            com.coloros.translate.b bVar = o.this.f5294d;
            o oVar = o.this;
            oVar.f5294d = oVar.f5293c;
            o.this.f5293c = bVar;
            o oVar2 = o.this;
            oVar2.N(oVar2.f5293c);
            o oVar3 = o.this;
            oVar3.O(oVar3.f5294d);
            o.this.w().n(o.this.f5293c);
            COUIRecyclerView cOUIRecyclerView = o.this.f5303m;
            if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, o.this.x())) {
                o.this.x().n(o.this.f5294d);
                o.this.x().l(o.this.u());
            }
            COUIRecyclerView cOUIRecyclerView2 = o.this.f5303m;
            if (cOUIRecyclerView2 == null || (adapter = cOUIRecyclerView2.getAdapter()) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    }

    static final class g extends s implements w8.a {
        public static final g INSTANCE = new g();

        g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    static final class h extends s implements w8.a {

        static final class a extends s implements w8.q {
            final /* synthetic */ b $this_apply;
            final /* synthetic */ o this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(o oVar, b bVar) {
                super(3);
                this.this$0 = oVar;
                this.$this_apply = bVar;
            }

            @Override // w8.q
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (com.coloros.translate.b) obj3);
                return h0.INSTANCE;
            }

            public final void invoke(int i10, int i11, com.coloros.translate.b language) {
                r.e(language, "language");
                if (r.a(this.this$0.f5294d.getLanguageCode(), language.getLanguageCode())) {
                    o oVar = this.this$0;
                    oVar.f5294d = oVar.f5293c;
                    this.this$0.f5293c = language;
                    this.this$0.x().n(this.this$0.f5294d);
                    o oVar2 = this.this$0;
                    oVar2.O(oVar2.f5294d);
                } else {
                    this.this$0.f5293c = language;
                }
                this.$this_apply.notifyItemChanged(i10);
                this.$this_apply.notifyItemChanged(i11);
                this.this$0.P();
                this.this$0.N(language);
            }
        }

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b mo8invoke() {
            b bVar = o.this.new b(true);
            o oVar = o.this;
            bVar.l(oVar.v().n());
            bVar.m(new a(oVar, bVar));
            return bVar;
        }
    }

    static final class i extends s implements w8.a {

        static final class a extends s implements w8.q {
            final /* synthetic */ b $this_apply;
            final /* synthetic */ o this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(o oVar, b bVar) {
                super(3);
                this.this$0 = oVar;
                this.$this_apply = bVar;
            }

            @Override // w8.q
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (com.coloros.translate.b) obj3);
                return h0.INSTANCE;
            }

            public final void invoke(int i10, int i11, com.coloros.translate.b language) {
                r.e(language, "language");
                if (r.a(this.this$0.f5293c.getLanguageCode(), language.getLanguageCode())) {
                    o oVar = this.this$0;
                    oVar.f5293c = oVar.f5294d;
                    this.this$0.f5294d = language;
                    this.this$0.w().n(this.this$0.f5293c);
                    o oVar2 = this.this$0;
                    oVar2.N(oVar2.f5293c);
                    this.this$0.P();
                } else {
                    this.this$0.f5294d = language;
                    this.$this_apply.notifyItemChanged(i10);
                    this.$this_apply.notifyItemChanged(i11);
                }
                this.this$0.O(language);
            }
        }

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b mo8invoke() {
            b bVar = o.this.new b(false);
            o oVar = o.this;
            bVar.l(oVar.u());
            bVar.m(new a(oVar, bVar));
            return bVar;
        }
    }

    public o(Context context) {
        r.e(context, "context");
        this.f5291a = context;
        this.f5292b = n8.k.b(g.INSTANCE);
        this.f5293c = v().m();
        this.f5294d = v().o();
        this.f5296f = q.PHOTO_TRANSLATE;
        this.f5305o = n8.k.b(new h());
        this.f5306p = n8.k.b(new i());
    }

    public static final boolean A(o this$0, MenuItem it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        this$0.f5295e = false;
        this$0.f5300j = null;
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5298h;
        if (cOUIBottomSheetDialog == null) {
            return true;
        }
        cOUIBottomSheetDialog.dismiss();
        return true;
    }

    public static final boolean B(o this$0, MenuItem it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        c0.f7098a.d("TranslateEngine.LanguagePicker", "on selected from = " + this$0.f5293c + ", to = " + this$0.f5294d);
        LanguageManager languageManagerV = this$0.v();
        if (languageManagerV.m() == this$0.f5293c && languageManagerV.o() == this$0.f5294d) {
            this$0.f5300j = null;
        } else {
            com.coloros.translate.b bVarM = languageManagerV.m();
            com.coloros.translate.b bVar = this$0.f5293c;
            if (bVarM != bVar) {
                this$0.f5300j = Boolean.TRUE;
            } else {
                this$0.f5300j = Boolean.FALSE;
            }
            languageManagerV.M(bVar);
            languageManagerV.S(this$0.f5294d);
            this$0.f5295e = true;
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5298h;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
        if (this$0.f5295e) {
            this$0.v().D(this$0.f5300j);
        }
        return true;
    }

    private final void D() {
        v().F();
        this.f5298h = null;
        c cVar = this.f5307q;
        if (cVar != null) {
            cVar.a(true);
        }
        Runnable runnable = this.f5297g;
        if (runnable != null) {
            runnable.run();
        }
        this.f5297g = null;
    }

    public static /* synthetic */ void H(o oVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        oVar.G(z10);
    }

    public static final void I(o this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        this$0.D();
    }

    public static final void J(o this$0) {
        Window window;
        View viewFindViewById;
        View viewFindViewById2;
        r.e(this$0, "this$0");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5298h;
        Window window2 = cOUIBottomSheetDialog != null ? cOUIBottomSheetDialog.getWindow() : null;
        if (window2 != null) {
            window2.setNavigationBarColor(this$0.f5291a.getResources().getColor(com.support.appcompat.R$color.coui_color_background_elevatedWithCard));
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this$0.f5298h;
        if (cOUIBottomSheetDialog2 == null || (window = cOUIBottomSheetDialog2.getWindow()) == null || (viewFindViewById = window.findViewById(com.support.panel.R$id.coordinator)) == null || (viewFindViewById2 = viewFindViewById.findViewById(com.support.appcompat.R$id.design_bottom_sheet)) == null) {
            return;
        }
        viewFindViewById2.setBackgroundColor(this$0.f5291a.getResources().getColor(com.support.appcompat.R$color.coui_color_background_elevatedWithCard));
    }

    public final void K() {
        COUIRecyclerView cOUIRecyclerView = this.f5303m;
        if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, w())) {
            return;
        }
        TextView textView = this.f5301k;
        if (textView != null) {
            textView.setText(this.f5291a.getString(R.string.source_language));
        }
        LanguageChooseView languageChooseView = this.f5302l;
        if (languageChooseView != null) {
            languageChooseView.h();
        }
        w().l(v().n());
        w().n(this.f5293c);
        COUIRecyclerView cOUIRecyclerView2 = this.f5303m;
        if (cOUIRecyclerView2 == null) {
            return;
        }
        cOUIRecyclerView2.setAdapter(w());
    }

    public final void L() {
        COUIRecyclerView cOUIRecyclerView = this.f5303m;
        if (r.a(cOUIRecyclerView != null ? cOUIRecyclerView.getAdapter() : null, x())) {
            return;
        }
        LanguageChooseView languageChooseView = this.f5302l;
        if (languageChooseView != null) {
            languageChooseView.o();
        }
        TextView textView = this.f5301k;
        if (textView != null) {
            textView.setText(this.f5291a.getString(R.string.target_language));
        }
        x().l(v().p(this.f5293c));
        x().n(this.f5294d);
        COUIRecyclerView cOUIRecyclerView2 = this.f5303m;
        if (cOUIRecyclerView2 == null) {
            return;
        }
        cOUIRecyclerView2.setAdapter(x());
    }

    public final void N(com.coloros.translate.b bVar) {
        if (!v().B()) {
            LanguageChooseView languageChooseView = this.f5302l;
            if (languageChooseView != null) {
                String string = this.f5291a.getString(bVar.getFullNameResId());
                r.d(string, "getString(...)");
                languageChooseView.setFromLanguage(string);
                return;
            }
            return;
        }
        if (r.a(bVar.getLanguageCode(), com.coloros.translate.b.CHINESE.getLanguageCode())) {
            LanguageChooseView languageChooseView2 = this.f5302l;
            if (languageChooseView2 != null) {
                String string2 = this.f5291a.getString(R.string.chinese);
                r.d(string2, "getString(...)");
                languageChooseView2.setFromLanguage(string2);
                return;
            }
            return;
        }
        if (r.a(bVar.getLanguageCode(), com.coloros.translate.b.SPANISH.getLanguageCode())) {
            LanguageChooseView languageChooseView3 = this.f5302l;
            if (languageChooseView3 != null) {
                String string3 = this.f5291a.getString(R.string.spanish_os15);
                r.d(string3, "getString(...)");
                languageChooseView3.setFromLanguage(string3);
                return;
            }
            return;
        }
        LanguageChooseView languageChooseView4 = this.f5302l;
        if (languageChooseView4 != null) {
            String string4 = this.f5291a.getString(bVar.getFullNameResId());
            r.d(string4, "getString(...)");
            languageChooseView4.setFromLanguage(string4);
        }
    }

    public final void O(com.coloros.translate.b bVar) {
        if (!v().B()) {
            LanguageChooseView languageChooseView = this.f5302l;
            if (languageChooseView != null) {
                String string = this.f5291a.getString(bVar.getFullNameResId());
                r.d(string, "getString(...)");
                languageChooseView.setToLanguage(string);
                return;
            }
            return;
        }
        if (r.a(bVar.getLanguageCode(), com.coloros.translate.b.CHINESE.getLanguageCode())) {
            LanguageChooseView languageChooseView2 = this.f5302l;
            if (languageChooseView2 != null) {
                String string2 = this.f5291a.getString(R.string.chinese);
                r.d(string2, "getString(...)");
                languageChooseView2.setToLanguage(string2);
                return;
            }
            return;
        }
        if (r.a(bVar.getLanguageCode(), com.coloros.translate.b.SPANISH.getLanguageCode())) {
            LanguageChooseView languageChooseView3 = this.f5302l;
            if (languageChooseView3 != null) {
                String string3 = this.f5291a.getString(R.string.spanish_os15);
                r.d(string3, "getString(...)");
                languageChooseView3.setToLanguage(string3);
                return;
            }
            return;
        }
        LanguageChooseView languageChooseView4 = this.f5302l;
        if (languageChooseView4 != null) {
            String string4 = this.f5291a.getString(bVar.getFullNameResId());
            r.d(string4, "getString(...)");
            languageChooseView4.setToLanguage(string4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0053, code lost:
    
        x().n(r6.f5294d);
        O(r6.f5294d);
        r0.l(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0064, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void P() {
        /*
            r6 = this;
            com.coloros.translate.o$b r0 = r6.x()
            java.util.List r1 = r6.u()
            com.coloros.translate.b r2 = r6.f5294d
            java.lang.String r2 = r2.getLanguageCode()
            java.util.Iterator r3 = r1.iterator()
        L12:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L29
            java.lang.Object r4 = r3.next()
            com.coloros.translate.b r4 = (com.coloros.translate.b) r4
            java.lang.String r4 = r4.getLanguageCode()
            boolean r4 = kotlin.jvm.internal.r.a(r2, r4)
            if (r4 == 0) goto L12
            goto L53
        L29:
            java.util.Iterator r2 = r1.iterator()
        L2d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L4b
            java.lang.Object r3 = r2.next()
            r4 = r3
            com.coloros.translate.b r4 = (com.coloros.translate.b) r4
            com.coloros.translate.b r5 = r6.f5293c
            java.lang.String r5 = r5.getLanguageCode()
            java.lang.String r4 = r4.getLanguageCode()
            boolean r4 = kotlin.jvm.internal.r.a(r5, r4)
            if (r4 != 0) goto L2d
            goto L4c
        L4b:
            r3 = 0
        L4c:
            com.coloros.translate.b r3 = (com.coloros.translate.b) r3
            if (r3 != 0) goto L51
            return
        L51:
            r6.f5294d = r3
        L53:
            com.coloros.translate.o$b r2 = r6.x()
            com.coloros.translate.b r3 = r6.f5294d
            r2.n(r3)
            com.coloros.translate.b r2 = r6.f5294d
            r6.O(r2)
            r0.l(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.o.P():void");
    }

    public final List u() {
        return v().p(this.f5293c);
    }

    public final LanguageManager v() {
        return (LanguageManager) this.f5292b.getValue();
    }

    public final b w() {
        return (b) this.f5305o.getValue();
    }

    public final b x() {
        return (b) this.f5306p.getValue();
    }

    private final void y(View view, boolean z10) {
        z(view);
        this.f5301k = view != null ? (TextView) view.findViewById(R.id.tv_language_title) : null;
        this.f5302l = view != null ? (LanguageChooseView) view.findViewById(R.id.chooseLanguage) : null;
        COUIRecyclerView cOUIRecyclerView = view != null ? (COUIRecyclerView) view.findViewById(R.id.recycler) : null;
        this.f5303m = cOUIRecyclerView;
        if (cOUIRecyclerView != null) {
            cOUIRecyclerView.setLayoutManager(new COUILinearLayoutManager(this.f5291a, 1, false));
        }
        N(this.f5293c);
        O(this.f5294d);
        Integer num = this.f5304n;
        if (num != null) {
            int iIntValue = num.intValue();
            LanguageChooseView languageChooseView = this.f5302l;
            if (languageChooseView != null) {
                languageChooseView.setLanguageChangeIcon(iIntValue);
            }
        }
        if (z10) {
            K();
        } else {
            L();
        }
        LanguageChooseView languageChooseView2 = this.f5302l;
        if (languageChooseView2 != null) {
            languageChooseView2.setOnFromLangeClickListener(new d());
        }
        LanguageChooseView languageChooseView3 = this.f5302l;
        if (languageChooseView3 != null) {
            languageChooseView3.setOnToLangeClickListener(new e());
        }
        LanguageChooseView languageChooseView4 = this.f5302l;
        if (languageChooseView4 != null) {
            languageChooseView4.setOnSwitchClickListener(new f());
        }
    }

    private final void z(View view) {
        Menu menu;
        MenuItem menuItemFindItem;
        Menu menu2;
        MenuItem menuItemFindItem2;
        COUIToolbar cOUIToolbar = view != null ? (COUIToolbar) view.findViewById(R.id.picker_toolbar) : null;
        if (cOUIToolbar != null) {
            cOUIToolbar.setIsTitleCenterStyle(true);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitle(R.string.language_select);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitleTextColor(this.f5291a.getColor(R.color.black_alpha_90));
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setSubtitleTextColor(this.f5291a.getColor(R.color.task_panel_sub_title_color));
        }
        if (cOUIToolbar != null && (menu2 = cOUIToolbar.getMenu()) != null && (menuItemFindItem2 = menu2.findItem(R.id.menu_cancel)) != null) {
            menuItemFindItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.m
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return o.A(this.f5288a, menuItem);
                }
            });
        }
        if (cOUIToolbar == null || (menu = cOUIToolbar.getMenu()) == null || (menuItemFindItem = menu.findItem(R.id.menu_confirm)) == null) {
            return;
        }
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.n
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return o.B(this.f5289a, menuItem);
            }
        });
    }

    public final boolean C(Context context) {
        r.e(context, "context");
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public final void E(int i10) {
        this.f5304n = Integer.valueOf(i10);
        LanguageChooseView languageChooseView = this.f5302l;
        if (languageChooseView != null) {
            languageChooseView.setLanguageChangeIcon(i10);
        }
    }

    public final void F(c dismissListener) {
        r.e(dismissListener, "dismissListener");
        this.f5307q = dismissListener;
    }

    public final void G(boolean z10) {
        COUIPanelContentLayout dragableLinearLayout;
        this.f5293c = v().m();
        this.f5294d = v().o();
        COUIBottomSheetDialog cOUIBottomSheetDialog = new COUIBottomSheetDialog(this.f5291a, com.support.panel.R$style.DefaultBottomSheetDialog);
        this.f5298h = cOUIBottomSheetDialog;
        cOUIBottomSheetDialog.setCanceledOnTouchOutside(true);
        ImageView dragView = null;
        View viewInflate = LayoutInflater.from(this.f5291a).inflate(R.layout.translate_popup_language_picker, (ViewGroup) null);
        this.f5299i = viewInflate;
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this.f5298h;
        if (cOUIBottomSheetDialog2 != null) {
            cOUIBottomSheetDialog2.setContentView(viewInflate);
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog3 = this.f5298h;
        if (cOUIBottomSheetDialog3 != null && (dragableLinearLayout = cOUIBottomSheetDialog3.getDragableLinearLayout()) != null) {
            dragView = dragableLinearLayout.getDragView();
        }
        if (dragView != null) {
            dragView.setVisibility(8);
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog4 = this.f5298h;
        if (cOUIBottomSheetDialog4 != null) {
            cOUIBottomSheetDialog4.setIsShowInMaxHeight(true);
        }
        y(this.f5299i, z10);
        COUIBottomSheetDialog cOUIBottomSheetDialog5 = this.f5298h;
        if (cOUIBottomSheetDialog5 != null) {
            cOUIBottomSheetDialog5.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.k
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    o.I(this.f5286a, dialogInterface);
                }
            });
        }
        View view = this.f5299i;
        if (view != null) {
            view.post(new Runnable() { // from class: com.coloros.translate.l
                @Override // java.lang.Runnable
                public final void run() {
                    o.J(this.f5287a);
                }
            });
        }
        if (C(this.f5291a)) {
            v().N();
            COUIBottomSheetDialog cOUIBottomSheetDialog6 = this.f5298h;
            if (cOUIBottomSheetDialog6 != null) {
                cOUIBottomSheetDialog6.show();
            }
        }
    }

    public final void M() {
        this.f5300j = Boolean.TRUE;
        v().U();
    }

    public final void t() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5298h;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
    }
}
