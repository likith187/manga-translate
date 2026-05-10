package com.coloros.translate.ui.simultaneous.history;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResult;
import androidx.core.view.a1;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.R;
import com.coloros.translate.ui.simultaneous.history.SimultaneousBaseActivity;
import com.coloros.translate.ui.simultaneous.history.a;
import com.coloros.translate.ui.simultaneous.history.o;
import com.coloros.translate.utils.j;
import com.coui.appcompat.bottomnavigation.COUINavigationView;
import com.coui.appcompat.grid.COUIPercentWidthFrameLayout;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.support.appcompat.R$color;
import com.support.appcompat.R$drawable;
import com.support.responsiveui.R$dimen;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class SimultaneousHistoryActivity extends SimultaneousBaseActivity<o0> {
    public static final a H = new a(null);
    private MenuItem A;
    private MenuItem B;
    private MenuItem C;
    private MenuItem D;
    private final n8.j E = n8.k.b(new g());
    private final androidx.activity.result.b F = registerForActivityResult(new d.d(), new androidx.activity.result.a() { // from class: com.coloros.translate.ui.simultaneous.history.g
        @Override // androidx.activity.result.a
        public final void a(Object obj) {
            SimultaneousHistoryActivity.z1(this.f6524a, (ActivityResult) obj);
        }
    });
    private final h G = new h();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LinearLayout f6487r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RecyclerView f6488s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f6489t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private LottieAnimationView f6490u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private COUIToolbar f6491v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private COUINavigationView f6492w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View f6493x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f6494y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private MenuItem f6495z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((List<n0>) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(List<n0> it) {
            kotlin.jvm.internal.r.e(it, "it");
            LottieAnimationView lottieAnimationView = null;
            View view = null;
            if (!it.isEmpty()) {
                MenuItem menuItem = SimultaneousHistoryActivity.this.f6495z;
                if (menuItem != null) {
                    menuItem.setVisible(true);
                }
                RecyclerView recyclerView = SimultaneousHistoryActivity.this.f6488s;
                if (recyclerView == null) {
                    kotlin.jvm.internal.r.r("mHistoryRecyclerView");
                    recyclerView = null;
                }
                recyclerView.setVisibility(0);
                View view2 = SimultaneousHistoryActivity.this.f6489t;
                if (view2 == null) {
                    kotlin.jvm.internal.r.r("mEmptyTextView");
                } else {
                    view = view2;
                }
                view.setVisibility(8);
                SimultaneousHistoryActivity.this.r1().submitList(it);
                return;
            }
            MenuItem menuItem2 = SimultaneousHistoryActivity.this.f6495z;
            if (menuItem2 != null) {
                menuItem2.setVisible(false);
            }
            RecyclerView recyclerView2 = SimultaneousHistoryActivity.this.f6488s;
            if (recyclerView2 == null) {
                kotlin.jvm.internal.r.r("mHistoryRecyclerView");
                recyclerView2 = null;
            }
            recyclerView2.setVisibility(8);
            View view3 = SimultaneousHistoryActivity.this.f6489t;
            if (view3 == null) {
                kotlin.jvm.internal.r.r("mEmptyTextView");
                view3 = null;
            }
            view3.setVisibility(0);
            LottieAnimationView lottieAnimationView2 = SimultaneousHistoryActivity.this.f6490u;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("simuEmptyImg");
            } else {
                lottieAnimationView = lottieAnimationView2;
            }
            lottieAnimationView.v();
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        c() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(boolean z10) {
            SimultaneousHistoryActivity.this.r1().q(z10, (Set) SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).t().e());
            if (z10) {
                SimultaneousHistoryActivity.this.E1();
                SimultaneousHistoryActivity.this.A1();
                return;
            }
            COUINavigationView cOUINavigationView = SimultaneousHistoryActivity.this.f6492w;
            COUIToolbar cOUIToolbar = null;
            if (cOUINavigationView == null) {
                kotlin.jvm.internal.r.r("mNavigationTool");
                cOUINavigationView = null;
            }
            cOUINavigationView.setVisibility(8);
            View view = SimultaneousHistoryActivity.this.f6493x;
            if (view == null) {
                kotlin.jvm.internal.r.r("mNavigationBarView");
                view = null;
            }
            view.setBackgroundColor(SimultaneousHistoryActivity.this.getColor(R$color.coui_transparence));
            COUIToolbar cOUIToolbar2 = SimultaneousHistoryActivity.this.f6491v;
            if (cOUIToolbar2 == null) {
                kotlin.jvm.internal.r.r("mToolbar");
            } else {
                cOUIToolbar = cOUIToolbar2;
            }
            cOUIToolbar.setIsTitleCenterStyle(false);
            SimultaneousHistoryActivity simultaneousHistoryActivity = SimultaneousHistoryActivity.this;
            String string = simultaneousHistoryActivity.getString(R.string.select_project);
            kotlin.jvm.internal.r.d(string, "getString(...)");
            simultaneousHistoryActivity.v1(string);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Set<Long>) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Set<Long> it) {
            kotlin.jvm.internal.r.e(it, "it");
            Object objE = SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).u().e();
            kotlin.jvm.internal.r.b(objE);
            if (!((Boolean) objE).booleanValue()) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "not select mode");
                return;
            }
            int size = it.size();
            MenuItem menuItem = SimultaneousHistoryActivity.this.C;
            if (menuItem != null) {
                menuItem.setEnabled(size == 1);
            }
            MenuItem menuItem2 = SimultaneousHistoryActivity.this.D;
            if (menuItem2 != null) {
                menuItem2.setEnabled(size != 0);
            }
            Object objE2 = SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).r().e();
            kotlin.jvm.internal.r.b(objE2);
            COUIToolbar cOUIToolbar = null;
            if (size == ((List) objE2).size()) {
                MenuItem menuItem3 = SimultaneousHistoryActivity.this.B;
                if (menuItem3 != null) {
                    menuItem3.setTitle(SimultaneousHistoryActivity.this.getString(R.string.select_cancel_all));
                }
                COUIToolbar cOUIToolbar2 = SimultaneousHistoryActivity.this.f6491v;
                if (cOUIToolbar2 == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                } else {
                    cOUIToolbar = cOUIToolbar2;
                }
                cOUIToolbar.setTitle(SimultaneousHistoryActivity.this.getString(R.string.completely_select_all));
                return;
            }
            String quantityString = SimultaneousHistoryActivity.this.getResources().getQuantityString(R.plurals.completely_select_multiple, size, Integer.valueOf(size));
            kotlin.jvm.internal.r.d(quantityString, "getQuantityString(...)");
            COUIToolbar cOUIToolbar3 = SimultaneousHistoryActivity.this.f6491v;
            if (cOUIToolbar3 == null) {
                kotlin.jvm.internal.r.r("mToolbar");
            } else {
                cOUIToolbar = cOUIToolbar3;
            }
            cOUIToolbar.setTitle(quantityString);
            MenuItem menuItem4 = SimultaneousHistoryActivity.this.B;
            if (menuItem4 == null) {
                return;
            }
            menuItem4.setTitle(SimultaneousHistoryActivity.this.getString(R.string.select_all));
        }
    }

    public static final class e extends com.coloros.translate.ui.simultaneous.history.a {
        e(f fVar) {
            super(fVar);
        }
    }

    public static final class f implements a.b {
        f() {
        }

        @Override // com.coloros.translate.ui.simultaneous.history.a.b
        public void a() {
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).x();
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.a {
        g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final o mo8invoke() {
            o oVar = new o();
            oVar.o(SimultaneousHistoryActivity.this.G);
            return oVar;
        }
    }

    public static final class h implements o.c {
        h() {
        }

        @Override // com.coloros.translate.ui.simultaneous.history.o.c
        public void a() {
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).A(SimultaneousHistoryActivity.this.r1().h());
        }

        @Override // com.coloros.translate.ui.simultaneous.history.o.c
        public void b(View view, int i10, n0 info) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(info, "info");
            if (SimultaneousHistoryActivity.this.r1().k()) {
                SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).A(SimultaneousHistoryActivity.this.r1().h());
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("extra_key_note_id", info.c().getNoteId());
            androidx.activity.result.b bVar = SimultaneousHistoryActivity.this.F;
            Intent intent = new Intent(SimultaneousHistoryActivity.this, (Class<?>) SimultaneousHistoryDetailsActivity.class);
            intent.putExtras(bundle);
            bVar.a(intent);
        }

        @Override // com.coloros.translate.ui.simultaneous.history.o.c
        public void c(View view, int i10, n0 info) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(info, "info");
            com.coloros.translate.utils.n.Z(com.coloros.translate.utils.n.INSTANCE, null, 1, null);
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).p(true);
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).A(SimultaneousHistoryActivity.this.r1().h());
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).q();
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ n0 $it;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(n0 n0Var) {
            super(1);
            this.$it = n0Var;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String name) {
            kotlin.jvm.internal.r.e(name, "name");
            SimultaneousHistoryActivity.k1(SimultaneousHistoryActivity.this).z(this.$it, name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1() {
        COUINavigationView cOUINavigationView = this.f6492w;
        COUINavigationView cOUINavigationView2 = null;
        if (cOUINavigationView == null) {
            kotlin.jvm.internal.r.r("mNavigationTool");
            cOUINavigationView = null;
        }
        cOUINavigationView.setVisibility(0);
        View view = this.f6493x;
        if (view == null) {
            kotlin.jvm.internal.r.r("mNavigationBarView");
            view = null;
        }
        view.setBackgroundColor(getColor(R.color.coui_navigation_enlarge_default_bg));
        COUINavigationView cOUINavigationView3 = this.f6492w;
        if (cOUINavigationView3 == null) {
            kotlin.jvm.internal.r.r("mNavigationTool");
            cOUINavigationView3 = null;
        }
        this.C = cOUINavigationView3.getMenu().findItem(R.id.navigation_rename);
        COUINavigationView cOUINavigationView4 = this.f6492w;
        if (cOUINavigationView4 == null) {
            kotlin.jvm.internal.r.r("mNavigationTool");
        } else {
            cOUINavigationView2 = cOUINavigationView4;
        }
        this.D = cOUINavigationView2.getMenu().findItem(R.id.navigation_delete);
        MenuItem menuItem = this.C;
        if (menuItem != null) {
            menuItem.setEnabled(false);
        }
        MenuItem menuItem2 = this.D;
        if (menuItem2 != null) {
            menuItem2.setEnabled(false);
        }
        MenuItem menuItem3 = this.C;
        if (menuItem3 != null) {
            menuItem3.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.j
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem4) {
                    return SimultaneousHistoryActivity.B1(this.f6544a, menuItem4);
                }
            });
        }
        MenuItem menuItem4 = this.D;
        if (menuItem4 != null) {
            menuItem4.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.k
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem5) {
                    return SimultaneousHistoryActivity.C1(this.f6547a, menuItem5);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B1(SimultaneousHistoryActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return true;
        }
        this$0.D1();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C1(SimultaneousHistoryActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return true;
        }
        this$0.y1();
        return true;
    }

    private final void D1() {
        com.coloros.translate.utils.n.INSTANCE.y();
        n0 n0VarS = ((o0) o0()).s();
        if (n0VarS != null) {
            N0(n0VarS.c().getNoteTitle(), new j(n0VarS));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E1() {
        COUIToolbar cOUIToolbar = this.f6491v;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.getMenu().clear();
        cOUIToolbar.setTitle(getString(R.string.select_project));
        cOUIToolbar.setSubtitle((CharSequence) null);
        cOUIToolbar.inflateMenu(R.menu.menu_edit_mode);
        cOUIToolbar.setIsTitleCenterStyle(true);
        cOUIToolbar.setTitle(getString(R.string.select_project));
        cOUIToolbar.setNavigationIcon((Drawable) null);
        this.A = cOUIToolbar.getMenu().findItem(R.id.cancel_select);
        MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.select_all);
        this.B = menuItemFindItem;
        if (menuItemFindItem != null) {
            menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.h
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return SimultaneousHistoryActivity.F1(this.f6526a, menuItem);
                }
            });
        }
        MenuItem menuItem = this.A;
        if (menuItem != null) {
            menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.i
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem2) {
                    return SimultaneousHistoryActivity.G1(this.f6543a, menuItem2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F1(SimultaneousHistoryActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Set setN = this$0.r1().n();
        if (setN == null) {
            return true;
        }
        ((o0) this$0.o0()).A(setN);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G1(SimultaneousHistoryActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        ((o0) this$0.o0()).p(false);
        return true;
    }

    public static final /* synthetic */ o0 k1(SimultaneousHistoryActivity simultaneousHistoryActivity) {
        return (o0) simultaneousHistoryActivity.o0();
    }

    private final void q1() {
        boolean zE = com.coloros.translate.utils.o0.e();
        boolean zG = com.coloros.translate.utils.z.g(null, 1, null);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "isTablet:" + zE + "    isMediumScreen:" + zG);
        COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout = (COUIPercentWidthFrameLayout) findViewById(R.id.content_layout);
        if (cOUIPercentWidthFrameLayout == null || zE || zG) {
            return;
        }
        int dimensionPixelSize = cOUIPercentWidthFrameLayout.getResources().getDimensionPixelSize(R$dimen.grid_card_special_padding);
        cOUIPercentWidthFrameLayout.setPercentIndentEnabled(false);
        cOUIPercentWidthFrameLayout.setPadding(dimensionPixelSize, cOUIPercentWidthFrameLayout.getPaddingTop(), dimensionPixelSize, cOUIPercentWidthFrameLayout.getPaddingBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final o r1() {
        return (o) this.E.getValue();
    }

    private final void s1() {
        s0(((o0) o0()).r(), new b());
        s0(((o0) o0()).u(), new c());
        s0(((o0) o0()).t(), new d());
    }

    private final void t1() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "initView");
        View viewFindViewById = findViewById(R.id.rootView);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6487r = (LinearLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6491v = (COUIToolbar) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.navigation_tool);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6492w = (COUINavigationView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.navigation_bar);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6493x = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.emptyTextView);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.f6489t = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.simu_empty_img);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.f6490u = (LottieAnimationView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.recycler_history);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.f6488s = (RecyclerView) viewFindViewById7;
        String string = getString(R.string.simultaneous_history);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        v1(string);
        LinearLayout linearLayout = this.f6487r;
        RecyclerView recyclerView = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("mRootView");
            linearLayout = null;
        }
        androidx.core.view.m0.y0(linearLayout, new androidx.core.view.a0() { // from class: com.coloros.translate.ui.simultaneous.history.n
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return SimultaneousHistoryActivity.u1(this.f6574a, view, a1Var);
            }
        });
        RecyclerView recyclerView2 = this.f6488s;
        if (recyclerView2 == null) {
            kotlin.jvm.internal.r.r("mHistoryRecyclerView");
        } else {
            recyclerView = recyclerView2;
        }
        recyclerView.setLayoutManager(new COUILinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(r1());
        recyclerView.addItemDecoration(new SimultaneousBaseActivity.b(recyclerView.getResources().getDimensionPixelSize(R.dimen.dp_16)));
        recyclerView.addOnScrollListener(new e(new f()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a1 u1(SimultaneousHistoryActivity this$0, View view, a1 a1Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6494y = a1Var.f(a1.m.d()).f15810d;
        View view2 = this$0.f6493x;
        View view3 = null;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mNavigationBarView");
            view2 = null;
        }
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = this$0.f6494y;
            View view4 = this$0.f6493x;
            if (view4 == null) {
                kotlin.jvm.internal.r.r("mNavigationBarView");
            } else {
                view3 = view4;
            }
            view3.requestLayout();
        }
        return a1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1(String str) {
        MenuItem menuItem;
        COUIToolbar cOUIToolbar = this.f6491v;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.getMenu().clear();
        cOUIToolbar.setTitle(str);
        cOUIToolbar.setSubtitle((CharSequence) null);
        cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimultaneousHistoryActivity.w1(this.f6555a, view);
            }
        });
        cOUIToolbar.setTitle(R.string.simultaneous_history);
        cOUIToolbar.inflateMenu(R.menu.simultaneous_history_menu);
        MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.edit);
        this.f6495z = menuItemFindItem;
        if (menuItemFindItem != null) {
            menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.m
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem2) {
                    return SimultaneousHistoryActivity.x1(this.f6571a, menuItem2);
                }
            });
        }
        List list = (List) ((o0) o0()).r().e();
        if (list != null) {
            kotlin.jvm.internal.r.b(list);
            if (!(!list.isEmpty()) || (menuItem = this.f6495z) == null) {
                return;
            }
            menuItem.setVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w1(SimultaneousHistoryActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x1(SimultaneousHistoryActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        com.coloros.translate.utils.n.INSTANCE.Y("2");
        ((o0) this$0.o0()).p(true);
        return true;
    }

    private final void y1() {
        com.coloros.translate.utils.n.INSTANCE.u();
        Set set = (Set) ((o0) o0()).t().e();
        if (set != null) {
            J0(set.size(), r1().getItemCount(), new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(SimultaneousHistoryActivity this$0, ActivityResult result) {
        Intent intentA;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(result, "result");
        if (result.b() != -1 || (intentA = result.a()) == null) {
            return;
        }
        long longExtra = intentA.getLongExtra("extra_key_note_id", -1L);
        if (longExtra != -1) {
            ((o0) this$0.o0()).y(longExtra);
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return o0.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_simultaneous_history;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onBackPressed");
        Object objE = ((o0) o0()).u().e();
        kotlin.jvm.internal.r.b(objE);
        if (((Boolean) objE).booleanValue()) {
            ((o0) o0()).p(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onCreate");
        t1();
        q1();
        s1();
    }

    @Override // com.coloros.translate.ui.simultaneous.history.SimultaneousBaseActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onDestroy");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onPause");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onResume");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onStart");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryActivity", "onStop");
    }
}
