package w1;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import com.google.android.material.appbar.AppBarLayout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f15957y = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f15958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RecyclerView f15959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayoutManager f15960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f15961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f15965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup.LayoutParams f15966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f15967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f15968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f15969l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f15970m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f15971n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f15972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f15973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f15974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f15975r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Resources f15976s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f15977t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f15978u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f15979v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int[] f15980w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int[] f15981x;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(Context context) {
        r.e(context, "context");
        this.f15979v = -1;
        this.f15980w = new int[2];
        this.f15981x = new int[2];
        Resources resources = context.getResources();
        this.f15976s = resources;
        r.b(resources);
        this.f15967j = resources.getDimensionPixelOffset(R.dimen.common_margin) * 2;
        Resources resources2 = this.f15976s;
        r.b(resources2);
        this.f15970m = resources2.getDimensionPixelOffset(R.dimen.dialog_item_layout_padding_horizontal);
        Resources resources3 = this.f15976s;
        r.b(resources3);
        this.f15973p = resources3.getDimensionPixelOffset(R.dimen.divider_width_change_offset);
    }

    private final void c() {
        Object objM59constructorimpl;
        int i10;
        try {
            r.a aVar = n8.r.Companion;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (this.f15960c == null) {
            c0.f7098a.e("DividerChangeBehavior", "mLinearLayoutManager is null");
            return;
        }
        RecyclerView recyclerView = this.f15959b;
        View view = null;
        if (recyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerView");
            recyclerView = null;
        }
        RecyclerView.h adapter = recyclerView.getAdapter();
        kotlin.jvm.internal.r.b(adapter);
        int i11 = 0;
        if (adapter.getItemCount() > 0) {
            RecyclerView recyclerView2 = this.f15959b;
            if (recyclerView2 == null) {
                kotlin.jvm.internal.r.r("mRecyclerView");
                recyclerView2 = null;
            }
            this.f15961d = recyclerView2.getChildAt(0);
            LinearLayoutManager linearLayoutManager = this.f15960c;
            kotlin.jvm.internal.r.b(linearLayoutManager);
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            if (iFindFirstVisibleItemPosition != this.f15979v) {
                LinearLayoutManager linearLayoutManager2 = this.f15960c;
                kotlin.jvm.internal.r.b(linearLayoutManager2);
                View viewFindViewByPosition = linearLayoutManager2.findViewByPosition(iFindFirstVisibleItemPosition);
                this.f15978u = (viewFindViewByPosition != null ? viewFindViewByPosition.getHeight() : 0) * iFindFirstVisibleItemPosition;
                this.f15979v = iFindFirstVisibleItemPosition;
            }
        }
        View view2 = this.f15961d;
        kotlin.jvm.internal.r.b(view2);
        view2.getLocationOnScreen(this.f15981x);
        int i12 = this.f15981x[1] - this.f15978u;
        this.f15962e = i12;
        if (i12 < this.f15969l) {
            i10 = this.f15970m;
        } else {
            int i13 = this.f15968k;
            i10 = i12 > i13 ? 0 : i13 - i12;
        }
        this.f15963f = i10;
        this.f15964g = i10;
        if (this.f15974q <= 1.0f) {
            this.f15974q = Math.abs(i10) / this.f15970m;
            View view3 = this.f15958a;
            if (view3 == null) {
                kotlin.jvm.internal.r.r("mDivider");
                view3 = null;
            }
            view3.setAlpha(this.f15974q);
        }
        int i14 = this.f15962e;
        if (i14 < this.f15971n) {
            i11 = this.f15973p;
        } else {
            int i15 = this.f15972o;
            if (i14 <= i15) {
                i11 = i15 - i14;
            }
        }
        this.f15963f = i11;
        this.f15964g = i11;
        this.f15975r = Math.abs(i11) / this.f15973p;
        ViewGroup.LayoutParams layoutParams = this.f15966i;
        kotlin.jvm.internal.r.b(layoutParams);
        layoutParams.width = (int) (this.f15965h + (this.f15967j * this.f15975r));
        View view4 = this.f15958a;
        if (view4 == null) {
            kotlin.jvm.internal.r.r("mDivider");
        } else {
            view = view4;
        }
        view.setLayoutParams(this.f15966i);
        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("DividerChangeBehavior", "onListScroll failure : " + thM62exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(c this$0, View view, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(c this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c();
    }

    public final void d(AppBarLayout appbarLayout, RecyclerView recyclerView) {
        kotlin.jvm.internal.r.e(appbarLayout, "appbarLayout");
        kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
        if (this.f15977t) {
            return;
        }
        f(appbarLayout, recyclerView);
        this.f15977t = true;
        recyclerView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: w1.a
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                c.e(this.f15955a, view, i10, i11, i12, i13);
            }
        });
    }

    public final void f(AppBarLayout appbarLayout, RecyclerView target) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(appbarLayout, "appbarLayout");
        kotlin.jvm.internal.r.e(target, "target");
        try {
            r.a aVar = n8.r.Companion;
            target.getLocationOnScreen(this.f15980w);
            this.f15968k = this.f15980w[1];
            this.f15959b = target;
            this.f15961d = target;
            View viewFindViewById = appbarLayout.findViewById(R.id.divider_line);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f15958a = viewFindViewById;
            if (viewFindViewById == null) {
                kotlin.jvm.internal.r.r("mDivider");
                viewFindViewById = null;
            }
            this.f15965h = viewFindViewById.getWidth();
            View view = this.f15958a;
            if (view == null) {
                kotlin.jvm.internal.r.r("mDivider");
                view = null;
            }
            this.f15966i = view.getLayoutParams();
            int i10 = this.f15968k;
            this.f15969l = i10 - this.f15970m;
            Resources resources = this.f15976s;
            kotlin.jvm.internal.r.b(resources);
            int dimensionPixelOffset = i10 - resources.getDimensionPixelOffset(R.dimen.divider_width_start_count_offset);
            this.f15972o = dimensionPixelOffset;
            this.f15971n = dimensionPixelOffset - this.f15973p;
            RecyclerView recyclerView = this.f15959b;
            if (recyclerView == null) {
                kotlin.jvm.internal.r.r("mRecyclerView");
                recyclerView = null;
            }
            RecyclerView.p layoutManager = recyclerView.getLayoutManager();
            this.f15960c = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            z0.g(50L, new Runnable() { // from class: w1.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.g(this.f15956a);
                }
            });
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("DividerChangeBehavior", "setDividerInitParams failure : " + thM62exceptionOrNullimpl);
        }
    }
}
