package androidx.viewpager2.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.u;
import androidx.viewpager2.R$styleable;
import com.oplus.aiunit.core.ConfigPackage;
import d0.h;
import d0.k;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static boolean f3935x = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f3936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f3937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.viewpager2.widget.b f3938c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f3939f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f3940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RecyclerView.j f3941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinearLayoutManager f3942j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3943k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Parcelable f3944l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    RecyclerView f3945m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private u f3946n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    androidx.viewpager2.widget.e f3947o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.viewpager2.widget.b f3948p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.viewpager2.widget.c f3949q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.viewpager2.widget.d f3950r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RecyclerView.m f3951s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f3952t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f3953u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3954v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    e f3955w;

    class a extends g {
        a() {
            super(null);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g, androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.f3940h = true;
            viewPager2.f3947o.notifyDataSetChangeHappened();
        }
    }

    class b extends i {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageScrollStateChanged(int i10) {
            if (i10 == 0) {
                ViewPager2.this.n();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageSelected(int i10) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f3939f != i10) {
                viewPager2.f3939f = i10;
                viewPager2.f3955w.q();
            }
        }
    }

    class c extends i {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageSelected(int i10) {
            ViewPager2.this.clearFocus();
            if (ViewPager2.this.hasFocus()) {
                ViewPager2.this.f3945m.requestFocus(2);
            }
        }
    }

    class d implements RecyclerView.r {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onChildViewAttachedToWindow(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) qVar).width != -1 || ((ViewGroup.MarginLayoutParams) qVar).height != -1) {
                throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onChildViewDetachedFromWindow(View view) {
        }
    }

    private abstract class e {
        private e() {
        }

        boolean a() {
            return false;
        }

        boolean b(int i10) {
            return false;
        }

        boolean c(int i10, Bundle bundle) {
            return false;
        }

        boolean d() {
            return false;
        }

        void e(RecyclerView.h hVar) {
        }

        void f(RecyclerView.h hVar) {
        }

        String g() {
            throw new IllegalStateException("Not implemented.");
        }

        void h(androidx.viewpager2.widget.b bVar, RecyclerView recyclerView) {
        }

        void i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void j(d0.h hVar) {
        }

        boolean k(int i10) {
            throw new IllegalStateException("Not implemented.");
        }

        boolean l(int i10, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        void m() {
        }

        CharSequence n() {
            throw new IllegalStateException("Not implemented.");
        }

        void o(AccessibilityEvent accessibilityEvent) {
        }

        void p() {
        }

        void q() {
        }

        void r() {
        }

        void s() {
        }

        /* synthetic */ e(ViewPager2 viewPager2, a aVar) {
            this();
        }
    }

    class f extends e {
        f() {
            super(ViewPager2.this, null);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean b(int i10) {
            return (i10 == 8192 || i10 == 4096) && !ViewPager2.this.e();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean d() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void j(d0.h hVar) {
            if (ViewPager2.this.e()) {
                return;
            }
            hVar.a0(h.a.f11475r);
            hVar.a0(h.a.f11474q);
            hVar.C0(false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean k(int i10) {
            if (b(i10)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public CharSequence n() {
            if (d()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    private static abstract class g extends RecyclerView.j {
        private g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeChanged(int i10, int i11, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        /* synthetic */ g(a aVar) {
            this();
        }
    }

    private class h extends LinearLayoutManager {
        h(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(RecyclerView.a0 a0Var, int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(a0Var, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void onInitializeAccessibilityNodeInfo(RecyclerView.w wVar, RecyclerView.a0 a0Var, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(wVar, a0Var, hVar);
            ViewPager2.this.f3955w.j(hVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public boolean performAccessibilityAction(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10, Bundle bundle) {
            return ViewPager2.this.f3955w.b(i10) ? ViewPager2.this.f3955w.k(i10) : super.performAccessibilityAction(wVar, a0Var, i10, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            return false;
        }
    }

    public static abstract class i {
        public void onPageScrollStateChanged(int i10) {
        }

        public void onPageScrolled(int i10, float f10, int i11) {
        }

        public void onPageSelected(int i10) {
        }
    }

    class j extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d0.k f3966b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d0.k f3967c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RecyclerView.j f3968d;

        class a implements d0.k {
            a() {
            }

            @Override // d0.k
            public boolean perform(View view, k.a aVar) {
                j.this.v(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        class b implements d0.k {
            b() {
            }

            @Override // d0.k
            public boolean perform(View view, k.a aVar) {
                j.this.v(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        class c extends g {
            c() {
                super(null);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.g, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                j.this.w();
            }
        }

        j() {
            super(ViewPager2.this, null);
            this.f3966b = new a();
            this.f3967c = new b();
        }

        private void t(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            int itemCount2;
            if (ViewPager2.this.getAdapter() == null) {
                itemCount = 0;
                itemCount2 = 0;
            } else if (ViewPager2.this.getOrientation() == 1) {
                itemCount = ViewPager2.this.getAdapter().getItemCount();
                itemCount2 = 0;
            } else {
                itemCount2 = ViewPager2.this.getAdapter().getItemCount();
                itemCount = 0;
            }
            d0.h.M0(accessibilityNodeInfo).j0(h.e.b(itemCount, itemCount2, false, 0));
        }

        private void u(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.h adapter = ViewPager2.this.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !ViewPager2.this.e()) {
                return;
            }
            if (ViewPager2.this.f3939f > 0) {
                accessibilityNodeInfo.addAction(ConfigPackage.FRAME_SIZE_6);
            }
            if (ViewPager2.this.f3939f < itemCount - 1) {
                accessibilityNodeInfo.addAction(ConfigPackage.FRAME_SIZE_5);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean c(int i10, Bundle bundle) {
            return i10 == 8192 || i10 == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void e(RecyclerView.h hVar) {
            w();
            if (hVar != null) {
                hVar.registerAdapterDataObserver(this.f3968d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void f(RecyclerView.h hVar) {
            if (hVar != null) {
                hVar.unregisterAdapterDataObserver(this.f3968d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public String g() {
            if (a()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void h(androidx.viewpager2.widget.b bVar, RecyclerView recyclerView) {
            m0.t0(recyclerView, 2);
            this.f3968d = new c();
            if (m0.t(ViewPager2.this) == 0) {
                m0.t0(ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void i(AccessibilityNodeInfo accessibilityNodeInfo) {
            t(accessibilityNodeInfo);
            u(accessibilityNodeInfo);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public boolean l(int i10, Bundle bundle) {
            if (!c(i10, bundle)) {
                throw new IllegalStateException();
            }
            v(i10 == 8192 ? ViewPager2.this.getCurrentItem() - 1 : ViewPager2.this.getCurrentItem() + 1);
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void m() {
            w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void o(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(g());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void p() {
            w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void q() {
            w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void r() {
            w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.e
        public void s() {
            w();
        }

        void v(int i10) {
            if (ViewPager2.this.e()) {
                ViewPager2.this.k(i10, true);
            }
        }

        void w() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i10 = R.id.accessibilityActionPageLeft;
            m0.c0(viewPager2, R.id.accessibilityActionPageLeft);
            m0.c0(viewPager2, R.id.accessibilityActionPageRight);
            m0.c0(viewPager2, R.id.accessibilityActionPageUp);
            m0.c0(viewPager2, R.id.accessibilityActionPageDown);
            if (ViewPager2.this.getAdapter() == null || (itemCount = ViewPager2.this.getAdapter().getItemCount()) == 0 || !ViewPager2.this.e()) {
                return;
            }
            if (ViewPager2.this.getOrientation() != 0) {
                if (ViewPager2.this.f3939f < itemCount - 1) {
                    m0.e0(viewPager2, new h.a(R.id.accessibilityActionPageDown, null), null, this.f3966b);
                }
                if (ViewPager2.this.f3939f > 0) {
                    m0.e0(viewPager2, new h.a(R.id.accessibilityActionPageUp, null), null, this.f3967c);
                    return;
                }
                return;
            }
            boolean zD = ViewPager2.this.d();
            int i11 = zD ? 16908360 : 16908361;
            if (zD) {
                i10 = 16908361;
            }
            if (ViewPager2.this.f3939f < itemCount - 1) {
                m0.e0(viewPager2, new h.a(i11, null), null, this.f3966b);
            }
            if (ViewPager2.this.f3939f > 0) {
                m0.e0(viewPager2, new h.a(i10, null), null, this.f3967c);
            }
        }
    }

    public interface k {
        void transformPage(View view, float f10);
    }

    private class l extends u {
        l() {
        }

        @Override // androidx.recyclerview.widget.u, androidx.recyclerview.widget.y
        public View findSnapView(RecyclerView.p pVar) {
            if (ViewPager2.this.c()) {
                return null;
            }
            return super.findSnapView(pVar);
        }
    }

    private class m extends RecyclerView {
        m(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f3955w.d() ? ViewPager2.this.f3955w.n() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f3939f);
            accessibilityEvent.setToIndex(ViewPager2.this.f3939f);
            ViewPager2.this.f3955w.o(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.e() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.e() && super.onTouchEvent(motionEvent);
        }
    }

    private static class n implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RecyclerView f3976b;

        n(int i10, RecyclerView recyclerView) {
            this.f3975a = i10;
            this.f3976b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3976b.smoothScrollToPosition(this.f3975a);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        this.f3936a = new Rect();
        this.f3937b = new Rect();
        this.f3938c = new androidx.viewpager2.widget.b(3);
        this.f3940h = false;
        this.f3941i = new a();
        this.f3943k = -1;
        this.f3951s = null;
        this.f3952t = false;
        this.f3953u = true;
        this.f3954v = -1;
        b(context, null);
    }

    private RecyclerView.r a() {
        return new d();
    }

    private void b(Context context, AttributeSet attributeSet) {
        this.f3955w = f3935x ? new j() : new f();
        m mVar = new m(context);
        this.f3945m = mVar;
        mVar.setId(m0.i());
        this.f3945m.setDescendantFocusability(131072);
        h hVar = new h(context);
        this.f3942j = hVar;
        this.f3945m.setLayoutManager(hVar);
        this.f3945m.setScrollingTouchSlop(1);
        l(context, attributeSet);
        this.f3945m.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f3945m.addOnChildAttachStateChangeListener(a());
        androidx.viewpager2.widget.e eVar = new androidx.viewpager2.widget.e(this);
        this.f3947o = eVar;
        this.f3949q = new androidx.viewpager2.widget.c(this, eVar, this.f3945m);
        l lVar = new l();
        this.f3946n = lVar;
        lVar.attachToRecyclerView(this.f3945m);
        this.f3945m.addOnScrollListener(this.f3947o);
        androidx.viewpager2.widget.b bVar = new androidx.viewpager2.widget.b(3);
        this.f3948p = bVar;
        this.f3947o.setOnPageChangeCallback(bVar);
        b bVar2 = new b();
        c cVar = new c();
        this.f3948p.addOnPageChangeCallback(bVar2);
        this.f3948p.addOnPageChangeCallback(cVar);
        this.f3955w.h(this.f3948p, this.f3945m);
        this.f3948p.addOnPageChangeCallback(this.f3938c);
        androidx.viewpager2.widget.d dVar = new androidx.viewpager2.widget.d(this.f3942j);
        this.f3950r = dVar;
        this.f3948p.addOnPageChangeCallback(dVar);
        RecyclerView recyclerView = this.f3945m;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    private void f(RecyclerView.h hVar) {
        if (hVar != null) {
            hVar.registerAdapterDataObserver(this.f3941i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void i() {
        RecyclerView.h adapter;
        if (this.f3943k == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f3944l;
        if (parcelable != null) {
            if (adapter instanceof x0.a) {
                ((x0.a) adapter).restoreState(parcelable);
            }
            this.f3944l = null;
        }
        int iMax = Math.max(0, Math.min(this.f3943k, adapter.getItemCount() - 1));
        this.f3939f = iMax;
        this.f3943k = -1;
        this.f3945m.scrollToPosition(iMax);
        this.f3955w.m();
    }

    private void l(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ViewPager2);
        saveAttributeDataForStyleable(context, R$styleable.ViewPager2, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.ViewPager2_android_orientation, 0));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void m(RecyclerView.h hVar) {
        if (hVar != null) {
            hVar.unregisterAdapterDataObserver(this.f3941i);
        }
    }

    public boolean c() {
        return this.f3949q.a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.f3945m.canScrollHorizontally(i10);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.f3945m.canScrollVertically(i10);
    }

    boolean d() {
        return this.f3942j.getLayoutDirection() == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i10 = ((SavedState) parcelable).f3956a;
            sparseArray.put(this.f3945m.getId(), sparseArray.get(i10));
            sparseArray.remove(i10);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        i();
    }

    public boolean e() {
        return this.f3953u;
    }

    public void g(i iVar) {
        this.f3938c.addOnPageChangeCallback(iVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.f3955w.a() ? this.f3955w.g() : super.getAccessibilityClassName();
    }

    public RecyclerView.h getAdapter() {
        return this.f3945m.getAdapter();
    }

    public int getCurrentItem() {
        return this.f3939f;
    }

    public int getItemDecorationCount() {
        return this.f3945m.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f3954v;
    }

    public int getOrientation() {
        return this.f3942j.getOrientation();
    }

    int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f3945m;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.f3947o.getScrollState();
    }

    public void h() {
        if (this.f3950r.getPageTransformer() == null) {
            return;
        }
        double relativeScrollPosition = this.f3947o.getRelativeScrollPosition();
        int i10 = (int) relativeScrollPosition;
        float f10 = (float) (relativeScrollPosition - ((double) i10));
        this.f3950r.onPageScrolled(i10, f10, Math.round(getPageSize() * f10));
    }

    public void j(int i10, boolean z10) {
        if (c()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        k(i10, z10);
    }

    void k(int i10, boolean z10) {
        RecyclerView.h adapter = getAdapter();
        if (adapter == null) {
            if (this.f3943k != -1) {
                this.f3943k = Math.max(i10, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i10, 0), adapter.getItemCount() - 1);
        if (iMin == this.f3939f && this.f3947o.isIdle()) {
            return;
        }
        int i11 = this.f3939f;
        if (iMin == i11 && z10) {
            return;
        }
        double relativeScrollPosition = i11;
        this.f3939f = iMin;
        this.f3955w.q();
        if (!this.f3947o.isIdle()) {
            relativeScrollPosition = this.f3947o.getRelativeScrollPosition();
        }
        this.f3947o.notifyProgrammaticScroll(iMin, z10);
        if (!z10) {
            this.f3945m.scrollToPosition(iMin);
            return;
        }
        double d10 = iMin;
        if (Math.abs(d10 - relativeScrollPosition) <= 3.0d) {
            this.f3945m.smoothScrollToPosition(iMin);
            return;
        }
        this.f3945m.scrollToPosition(d10 > relativeScrollPosition ? iMin - 3 : iMin + 3);
        RecyclerView recyclerView = this.f3945m;
        recyclerView.post(new n(iMin, recyclerView));
    }

    void n() {
        u uVar = this.f3946n;
        if (uVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewFindSnapView = uVar.findSnapView(this.f3942j);
        if (viewFindSnapView == null) {
            return;
        }
        int position = this.f3942j.getPosition(viewFindSnapView);
        if (position != this.f3939f && getScrollState() == 0) {
            this.f3948p.onPageSelected(position);
        }
        this.f3940h = false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f3955w.i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = this.f3945m.getMeasuredWidth();
        int measuredHeight = this.f3945m.getMeasuredHeight();
        this.f3936a.left = getPaddingLeft();
        this.f3936a.right = (i12 - i10) - getPaddingRight();
        this.f3936a.top = getPaddingTop();
        this.f3936a.bottom = (i13 - i11) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f3936a, this.f3937b);
        RecyclerView recyclerView = this.f3945m;
        Rect rect = this.f3937b;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f3940h) {
            n();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        measureChild(this.f3945m, i10, i11);
        int measuredWidth = this.f3945m.getMeasuredWidth();
        int measuredHeight = this.f3945m.getMeasuredHeight();
        int measuredState = this.f3945m.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, measuredState), View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f3943k = savedState.f3957b;
        this.f3944l = savedState.f3958c;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3956a = this.f3945m.getId();
        int i10 = this.f3943k;
        if (i10 == -1) {
            i10 = this.f3939f;
        }
        savedState.f3957b = i10;
        Parcelable parcelable = this.f3944l;
        if (parcelable != null) {
            savedState.f3958c = parcelable;
        } else {
            Object adapter = this.f3945m.getAdapter();
            if (adapter instanceof x0.a) {
                savedState.f3958c = ((x0.a) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i10, Bundle bundle) {
        return this.f3955w.c(i10, bundle) ? this.f3955w.l(i10, bundle) : super.performAccessibilityAction(i10, bundle);
    }

    public void setAdapter(RecyclerView.h hVar) {
        RecyclerView.h adapter = this.f3945m.getAdapter();
        this.f3955w.f(adapter);
        m(adapter);
        this.f3945m.setAdapter(hVar);
        this.f3939f = 0;
        i();
        this.f3955w.e(hVar);
        f(hVar);
    }

    public void setCurrentItem(int i10) {
        j(i10, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        super.setLayoutDirection(i10);
        this.f3955w.p();
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1 && i10 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f3954v = i10;
        this.f3945m.requestLayout();
    }

    public void setOrientation(int i10) {
        this.f3942j.setOrientation(i10);
        this.f3955w.r();
    }

    public void setPageTransformer(k kVar) {
        if (kVar != null) {
            if (!this.f3952t) {
                this.f3951s = this.f3945m.getItemAnimator();
                this.f3952t = true;
            }
            this.f3945m.setItemAnimator(null);
        } else if (this.f3952t) {
            this.f3945m.setItemAnimator(this.f3951s);
            this.f3951s = null;
            this.f3952t = false;
        }
        if (kVar == this.f3950r.getPageTransformer()) {
            return;
        }
        this.f3950r.setPageTransformer(kVar);
        h();
    }

    public void setUserInputEnabled(boolean z10) {
        this.f3953u = z10;
        this.f3955w.s();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Parcelable f3958c;

        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f3956a = parcel.readInt();
            this.f3957b = parcel.readInt();
            this.f3958c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f3956a);
            parcel.writeInt(this.f3957b);
            parcel.writeParcelable(this.f3958c, i10);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3936a = new Rect();
        this.f3937b = new Rect();
        this.f3938c = new androidx.viewpager2.widget.b(3);
        this.f3940h = false;
        this.f3941i = new a();
        this.f3943k = -1;
        this.f3951s = null;
        this.f3952t = false;
        this.f3953u = true;
        this.f3954v = -1;
        b(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f3936a = new Rect();
        this.f3937b = new Rect();
        this.f3938c = new androidx.viewpager2.widget.b(3);
        this.f3940h = false;
        this.f3941i = new a();
        this.f3943k = -1;
        this.f3951s = null;
        this.f3952t = false;
        this.f3953u = true;
        this.f3954v = -1;
        b(context, attributeSet);
    }
}
