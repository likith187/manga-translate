package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.m0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class j<S> extends q {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final Object f9455r = "MONTHS_VIEW_GROUP_TAG";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final Object f9456s = "NAVIGATION_PREV_TAG";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final Object f9457t = "NAVIGATION_NEXT_TAG";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final Object f9458u = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DateSelector f9460c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CalendarConstraints f9461f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DayViewDecorator f9462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Month f9463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l f9464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.material.datepicker.b f9465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RecyclerView f9466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RecyclerView f9467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f9468n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f9469o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f9470p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f9471q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f9472a;

        a(o oVar) {
            this.f9472a = oVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = j.this.C().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                j.this.F(this.f9472a.g(iFindLastVisibleItemPosition));
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f9474a;

        b(int i10) {
            this.f9474a = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f9467m.smoothScrollToPosition(this.f9474a);
        }
    }

    class c extends androidx.core.view.a {
        c() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.j0(null);
        }
    }

    class d extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f9477a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i10, boolean z10, int i11) {
            super(context, i10, z10);
            this.f9477a = i11;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(RecyclerView.a0 a0Var, int[] iArr) {
            if (this.f9477a == 0) {
                iArr[0] = j.this.f9467m.getWidth();
                iArr[1] = j.this.f9467m.getWidth();
            } else {
                iArr[0] = j.this.f9467m.getHeight();
                iArr[1] = j.this.f9467m.getHeight();
            }
        }
    }

    class e implements m {
        e() {
        }

        @Override // com.google.android.material.datepicker.j.m
        public void a(long j10) {
            if (j.this.f9461f.g().I(j10)) {
                j.this.f9460c.q0(j10);
                Iterator it = j.this.f9543a.iterator();
                while (it.hasNext()) {
                    ((p) it.next()).b(j.this.f9460c.a0());
                }
                j.this.f9467m.getAdapter().notifyDataSetChanged();
                if (j.this.f9466l != null) {
                    j.this.f9466l.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class f extends androidx.core.view.a {
        f() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.C0(false);
        }
    }

    class g extends RecyclerView.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Calendar f9481a = t.m();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Calendar f9482b = t.m();

        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            if ((recyclerView.getAdapter() instanceof u) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                u uVar = (u) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (c0.d dVar : j.this.f9460c.G()) {
                    Object obj = dVar.f4278a;
                    if (obj != null && dVar.f4279b != null) {
                        this.f9481a.setTimeInMillis(((Long) obj).longValue());
                        this.f9482b.setTimeInMillis(((Long) dVar.f4279b).longValue());
                        int iH = uVar.h(this.f9481a.get(1));
                        int iH2 = uVar.h(this.f9482b.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iH);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(iH2);
                        int iU = iH / gridLayoutManager.U();
                        int iU2 = iH2 / gridLayoutManager.U();
                        int i10 = iU;
                        while (i10 <= iU2) {
                            if (gridLayoutManager.findViewByPosition(gridLayoutManager.U() * i10) != null) {
                                canvas.drawRect((i10 != iU || viewFindViewByPosition == null) ? 0 : viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2), r9.getTop() + j.this.f9465k.f9432d.c(), (i10 != iU2 || viewFindViewByPosition2 == null) ? recyclerView.getWidth() : viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2), r9.getBottom() - j.this.f9465k.f9432d.b(), j.this.f9465k.f9436h);
                            }
                            i10++;
                        }
                    }
                }
            }
        }
    }

    class h extends androidx.core.view.a {
        h() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.s0(j.this.f9471q.getVisibility() == 0 ? j.this.getString(R$string.mtrl_picker_toggle_to_year_selection) : j.this.getString(R$string.mtrl_picker_toggle_to_day_selection));
        }
    }

    class i extends RecyclerView.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f9485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialButton f9486b;

        i(o oVar, MaterialButton materialButton) {
            this.f9485a = oVar;
            this.f9486b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                recyclerView.announceForAccessibility(this.f9486b.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            int iFindFirstVisibleItemPosition = i10 < 0 ? j.this.C().findFirstVisibleItemPosition() : j.this.C().findLastVisibleItemPosition();
            j.this.f9463i = this.f9485a.g(iFindFirstVisibleItemPosition);
            this.f9486b.setText(this.f9485a.h(iFindFirstVisibleItemPosition));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.j$j, reason: collision with other inner class name */
    class ViewOnClickListenerC0112j implements View.OnClickListener {
        ViewOnClickListenerC0112j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j.this.I();
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f9489a;

        k(o oVar) {
            this.f9489a = oVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = j.this.C().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < j.this.f9467m.getAdapter().getItemCount()) {
                j.this.F(this.f9489a.g(iFindFirstVisibleItemPosition));
            }
        }
    }

    enum l {
        DAY,
        YEAR
    }

    interface m {
        void a(long j10);
    }

    static int A(Context context) {
        return context.getResources().getDimensionPixelSize(R$dimen.mtrl_calendar_day_height);
    }

    private static int B(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_days_of_week_height);
        int i10 = n.f9526j;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_height) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_bottom_padding);
    }

    public static j D(DateSelector dateSelector, int i10, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        j jVar = new j();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.m());
        jVar.setArguments(bundle);
        return jVar;
    }

    private void E(int i10) {
        this.f9467m.post(new b(i10));
    }

    private void H() {
        m0.j0(this.f9467m, new f());
    }

    private void u(View view, o oVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R$id.month_navigation_fragment_toggle);
        materialButton.setTag(f9458u);
        m0.j0(materialButton, new h());
        View viewFindViewById = view.findViewById(R$id.month_navigation_previous);
        this.f9468n = viewFindViewById;
        viewFindViewById.setTag(f9456s);
        View viewFindViewById2 = view.findViewById(R$id.month_navigation_next);
        this.f9469o = viewFindViewById2;
        viewFindViewById2.setTag(f9457t);
        this.f9470p = view.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f9471q = view.findViewById(R$id.mtrl_calendar_day_selector_frame);
        G(l.DAY);
        materialButton.setText(this.f9463i.h());
        this.f9467m.addOnScrollListener(new i(oVar, materialButton));
        materialButton.setOnClickListener(new ViewOnClickListenerC0112j());
        this.f9469o.setOnClickListener(new k(oVar));
        this.f9468n.setOnClickListener(new a(oVar));
    }

    private RecyclerView.o v() {
        return new g();
    }

    LinearLayoutManager C() {
        return (LinearLayoutManager) this.f9467m.getLayoutManager();
    }

    void F(Month month) {
        o oVar = (o) this.f9467m.getAdapter();
        int i10 = oVar.i(month);
        int i11 = i10 - oVar.i(this.f9463i);
        boolean z10 = Math.abs(i11) > 3;
        boolean z11 = i11 > 0;
        this.f9463i = month;
        if (z10 && z11) {
            this.f9467m.scrollToPosition(i10 - 3);
            E(i10);
        } else if (!z10) {
            E(i10);
        } else {
            this.f9467m.scrollToPosition(i10 + 3);
            E(i10);
        }
    }

    void G(l lVar) {
        this.f9464j = lVar;
        if (lVar == l.YEAR) {
            this.f9466l.getLayoutManager().scrollToPosition(((u) this.f9466l.getAdapter()).h(this.f9463i.f9396c));
            this.f9470p.setVisibility(0);
            this.f9471q.setVisibility(8);
            this.f9468n.setVisibility(8);
            this.f9469o.setVisibility(8);
            return;
        }
        if (lVar == l.DAY) {
            this.f9470p.setVisibility(8);
            this.f9471q.setVisibility(0);
            this.f9468n.setVisibility(0);
            this.f9469o.setVisibility(0);
            F(this.f9463i);
        }
    }

    void I() {
        l lVar = this.f9464j;
        l lVar2 = l.YEAR;
        if (lVar == lVar2) {
            G(l.DAY);
        } else if (lVar == l.DAY) {
            G(lVar2);
        }
    }

    @Override // com.google.android.material.datepicker.q
    public boolean l(p pVar) {
        return super.l(pVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f9459b = bundle.getInt("THEME_RES_ID_KEY");
        this.f9460c = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f9461f = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f9462h = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f9463i = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f9459b);
        this.f9465k = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month monthN = this.f9461f.n();
        if (com.google.android.material.datepicker.l.C(contextThemeWrapper)) {
            i10 = R$layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = R$layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        viewInflate.setMinimumHeight(B(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R$id.mtrl_calendar_days_of_week);
        m0.j0(gridView, new c());
        int iJ = this.f9461f.j();
        gridView.setAdapter((ListAdapter) (iJ > 0 ? new com.google.android.material.datepicker.i(iJ) : new com.google.android.material.datepicker.i()));
        gridView.setNumColumns(monthN.f9397f);
        gridView.setEnabled(false);
        this.f9467m = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_months);
        this.f9467m.setLayoutManager(new d(getContext(), i11, false, i11));
        this.f9467m.setTag(f9455r);
        o oVar = new o(contextThemeWrapper, this.f9460c, this.f9461f, this.f9462h, new e());
        this.f9467m.setAdapter(oVar);
        int integer = contextThemeWrapper.getResources().getInteger(R$integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f9466l = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f9466l.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f9466l.setAdapter(new u(this));
            this.f9466l.addItemDecoration(v());
        }
        if (viewInflate.findViewById(R$id.month_navigation_fragment_toggle) != null) {
            u(viewInflate, oVar);
        }
        if (!com.google.android.material.datepicker.l.C(contextThemeWrapper)) {
            new androidx.recyclerview.widget.u().attachToRecyclerView(this.f9467m);
        }
        this.f9467m.scrollToPosition(oVar.i(this.f9463i));
        H();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f9459b);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f9460c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f9461f);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f9462h);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f9463i);
    }

    CalendarConstraints w() {
        return this.f9461f;
    }

    com.google.android.material.datepicker.b x() {
        return this.f9465k;
    }

    Month y() {
        return this.f9463i;
    }

    public DateSelector z() {
        return this.f9460c;
    }
}
