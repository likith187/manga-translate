package com.google.android.material.sidesheet;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.app.t;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.j;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.c;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import d0.h;
import d0.k;
import g4.h;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.c implements g4.b {
    private static final int C = R$string.side_sheet_accessibility_pane_title;
    private static final int D = R$style.Widget_Material3_SideSheet;
    private final Set A;
    private final c.AbstractC0020c B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.material.sidesheet.c f10155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f10156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f10157c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f10158f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private n f10159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c f10160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f10161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f10162k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f10163l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10164m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.customview.widget.c f10165n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f10166o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f10167p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10168q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10169r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f10170s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f10171t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private WeakReference f10172u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WeakReference f10173v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f10174w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private VelocityTracker f10175x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private h f10176y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10177z;

    class a extends c.AbstractC0020c {
        a() {
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            return x.a.b(i10, SideSheetBehavior.this.f10155a.g(), SideSheetBehavior.this.f10155a.f());
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int getViewHorizontalDragRange(View view) {
            return SideSheetBehavior.this.f10168q + SideSheetBehavior.this.A();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && SideSheetBehavior.this.f10162k) {
                SideSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            View viewX = SideSheetBehavior.this.x();
            if (viewX != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewX.getLayoutParams()) != null) {
                SideSheetBehavior.this.f10155a.p(marginLayoutParams, view.getLeft(), view.getRight());
                viewX.setLayoutParams(marginLayoutParams);
            }
            SideSheetBehavior.this.s(view, i10);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewReleased(View view, float f10, float f11) {
            int iO = SideSheetBehavior.this.o(view, f10, f11);
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.Y(view, iO, sideSheetBehavior.shouldSkipSmoothAnimation());
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean tryCaptureView(View view, int i10) {
            return (SideSheetBehavior.this.f10163l == 1 || SideSheetBehavior.this.f10172u == null || SideSheetBehavior.this.f10172u.get() != view) ? false : true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SideSheetBehavior.this.setStateInternal(5);
            if (SideSheetBehavior.this.f10172u == null || SideSheetBehavior.this.f10172u.get() == null) {
                return;
            }
            ((View) SideSheetBehavior.this.f10172u.get()).requestLayout();
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f10182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f10183c = new Runnable() { // from class: com.google.android.material.sidesheet.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f10187a.c();
            }
        };

        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f10182b = false;
            if (SideSheetBehavior.this.f10165n != null && SideSheetBehavior.this.f10165n.m(true)) {
                b(this.f10181a);
            } else if (SideSheetBehavior.this.f10163l == 2) {
                SideSheetBehavior.this.setStateInternal(this.f10181a);
            }
        }

        void b(int i10) {
            if (SideSheetBehavior.this.f10172u == null || SideSheetBehavior.this.f10172u.get() == null) {
                return;
            }
            this.f10181a = i10;
            if (this.f10182b) {
                return;
            }
            m0.a0((View) SideSheetBehavior.this.f10172u.get(), this.f10183c);
            this.f10182b = true;
        }
    }

    public SideSheetBehavior() {
        this.f10160i = new c();
        this.f10162k = true;
        this.f10163l = 5;
        this.f10164m = 5;
        this.f10167p = 0.1f;
        this.f10174w = -1;
        this.A = new LinkedHashSet();
        this.B = new a();
    }

    private CoordinatorLayout.f F() {
        View view;
        WeakReference weakReference = this.f10172u;
        if (weakReference == null || (view = (View) weakReference.get()) == null || !(view.getLayoutParams() instanceof CoordinatorLayout.f)) {
            return null;
        }
        return (CoordinatorLayout.f) view.getLayoutParams();
    }

    private boolean G() {
        CoordinatorLayout.f fVarF = F();
        return fVarF != null && ((ViewGroup.MarginLayoutParams) fVarF).leftMargin > 0;
    }

    private boolean H() {
        CoordinatorLayout.f fVarF = F();
        return fVarF != null && ((ViewGroup.MarginLayoutParams) fVarF).rightMargin > 0;
    }

    private boolean I(MotionEvent motionEvent) {
        return W() && n((float) this.f10177z, motionEvent.getX()) > ((float) this.f10165n.z());
    }

    private boolean J(float f10) {
        return this.f10155a.k(f10);
    }

    private boolean K(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && m0.N(view);
    }

    private boolean L(View view, int i10, boolean z10) {
        int iB = B(i10);
        androidx.customview.widget.c cVarE = E();
        return cVarE != null && (!z10 ? !cVarE.Q(view, iB, view.getTop()) : !cVarE.O(iB, view.getTop()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean M(int i10, View view, k.a aVar) {
        setState(i10);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, View view, ValueAnimator valueAnimator) {
        this.f10155a.o(marginLayoutParams, x3.a.c(i10, 0, valueAnimator.getAnimatedFraction()));
        view.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(int i10) {
        View view = (View) this.f10172u.get();
        if (view != null) {
            Y(view, i10, false);
        }
    }

    private void P(CoordinatorLayout coordinatorLayout) {
        int i10;
        View viewFindViewById;
        if (this.f10173v != null || (i10 = this.f10174w) == -1 || (viewFindViewById = coordinatorLayout.findViewById(i10)) == null) {
            return;
        }
        this.f10173v = new WeakReference(viewFindViewById);
    }

    private void Q(View view, h.a aVar, int i10) {
        m0.e0(view, aVar, null, q(i10));
    }

    private void R() {
        VelocityTracker velocityTracker = this.f10175x;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f10175x = null;
        }
    }

    private void S(View view, Runnable runnable) {
        if (K(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void U(int i10) {
        com.google.android.material.sidesheet.c cVar = this.f10155a;
        if (cVar == null || cVar.j() != i10) {
            if (i10 == 0) {
                this.f10155a = new com.google.android.material.sidesheet.b(this);
                if (this.f10159h == null || H()) {
                    return;
                }
                n.b bVarV = this.f10159h.v();
                bVarV.M(0.0f).B(0.0f);
                a0(bVarV.m());
                return;
            }
            if (i10 == 1) {
                this.f10155a = new com.google.android.material.sidesheet.a(this);
                if (this.f10159h == null || G()) {
                    return;
                }
                n.b bVarV2 = this.f10159h.v();
                bVarV2.H(0.0f).w(0.0f);
                a0(bVarV2.m());
                return;
            }
            throw new IllegalArgumentException("Invalid sheet edge position value: " + i10 + ". Must be 0 or 1.");
        }
    }

    private void V(View view, int i10) {
        U(j.b(((CoordinatorLayout.f) view.getLayoutParams()).f1870c, i10) == 3 ? 1 : 0);
    }

    private boolean W() {
        return this.f10165n != null && (this.f10162k || this.f10163l == 1);
    }

    private boolean X(View view) {
        return (view.isShown() || m0.l(view) != null) && this.f10162k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(View view, int i10, boolean z10) {
        if (!L(view, i10, z10)) {
            setStateInternal(i10);
        } else {
            setStateInternal(2);
            this.f10160i.b(i10);
        }
    }

    private void Z() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        WeakReference weakReference = this.f10172u;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f10172u.get();
        View viewX = x();
        if (viewX == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewX.getLayoutParams()) == null) {
            return;
        }
        this.f10155a.o(marginLayoutParams, (int) ((this.f10168q * view.getScaleX()) + this.f10171t));
        viewX.requestLayout();
    }

    private void a0(n nVar) {
        i iVar = this.f10157c;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
    }

    private void b0(View view) {
        int i10 = this.f10163l == 5 ? 4 : 0;
        if (view.getVisibility() != i10) {
            view.setVisibility(i10);
        }
    }

    private int m(int i10, View view) {
        int i11 = this.f10163l;
        if (i11 == 1 || i11 == 2) {
            return i10 - this.f10155a.h(view);
        }
        if (i11 == 3) {
            return 0;
        }
        if (i11 == 5) {
            return this.f10155a.e();
        }
        throw new IllegalStateException("Unexpected value: " + this.f10163l);
    }

    private float n(float f10, float f11) {
        return Math.abs(f10 - f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int o(View view, float f10, float f11) {
        if (J(f10)) {
            return 3;
        }
        if (shouldHide(view, f10)) {
            if (!this.f10155a.m(f10, f11) && !this.f10155a.l(view)) {
                return 3;
            }
        } else if (f10 == 0.0f || !d.a(f10, f11)) {
            int left = view.getLeft();
            if (Math.abs(left - getExpandedOffset()) < Math.abs(left - this.f10155a.e())) {
                return 3;
            }
        }
        return 5;
    }

    private void p() {
        WeakReference weakReference = this.f10173v;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f10173v = null;
    }

    private k q(final int i10) {
        return new k() { // from class: l4.a
            @Override // d0.k
            public final boolean perform(View view, k.a aVar) {
                return this.f13579a.M(i10, view, aVar);
            }
        };
    }

    private void r(Context context) {
        if (this.f10159h == null) {
            return;
        }
        i iVar = new i(this.f10159h);
        this.f10157c = iVar;
        iVar.initializeElevationOverlay(context);
        ColorStateList colorStateList = this.f10158f;
        if (colorStateList != null) {
            this.f10157c.setFillColor(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f10157c.setTint(typedValue.data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(View view, int i10) {
        if (this.A.isEmpty()) {
            return;
        }
        this.f10155a.b(i10);
        Iterator it = this.A.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    private void t(View view) {
        if (m0.l(view) == null) {
            m0.m0(view, view.getResources().getString(C));
        }
    }

    private int u(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    private void updateAccessibilityActions() {
        View view;
        WeakReference weakReference = this.f10172u;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        m0.c0(view, 262144);
        m0.c0(view, 1048576);
        if (this.f10163l != 5) {
            Q(view, h.a.f11482y, 5);
        }
        if (this.f10163l != 3) {
            Q(view, h.a.f11480w, 3);
        }
    }

    private ValueAnimator.AnimatorUpdateListener w() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        final View viewX = x();
        if (viewX == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewX.getLayoutParams()) == null) {
            return null;
        }
        final int iC = this.f10155a.c(marginLayoutParams);
        return new ValueAnimator.AnimatorUpdateListener() { // from class: l4.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13583a.N(marginLayoutParams, iC, viewX, valueAnimator);
            }
        };
    }

    private int y() {
        com.google.android.material.sidesheet.c cVar = this.f10155a;
        return (cVar == null || cVar.j() == 0) ? 5 : 3;
    }

    int A() {
        return this.f10171t;
    }

    int B(int i10) {
        if (i10 == 3) {
            return getExpandedOffset();
        }
        if (i10 == 5) {
            return this.f10155a.e();
        }
        throw new IllegalArgumentException("Invalid state to get outer edge offset: " + i10);
    }

    int C() {
        return this.f10170s;
    }

    int D() {
        return this.f10169r;
    }

    androidx.customview.widget.c E() {
        return this.f10165n;
    }

    public void T(int i10) {
        this.f10174w = i10;
        p();
        WeakReference weakReference = this.f10172u;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (i10 == -1 || !m0.O(view)) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // g4.b
    public void cancelBackProgress() {
        g4.h hVar = this.f10176y;
        if (hVar == null) {
            return;
        }
        hVar.f();
    }

    public int getExpandedOffset() {
        return this.f10155a.d();
    }

    public float getHideFriction() {
        return this.f10167p;
    }

    int getSignificantVelocityThreshold() {
        return 500;
    }

    @Override // g4.b
    public void handleBackInvoked() {
        g4.h hVar = this.f10176y;
        if (hVar == null) {
            return;
        }
        androidx.activity.b bVarC = hVar.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            setState(5);
        } else {
            this.f10176y.h(bVarC, y(), new b(), w());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
        super.onAttachedToLayoutParams(fVar);
        this.f10172u = null;
        this.f10165n = null;
        this.f10176y = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f10172u = null;
        this.f10165n = null;
        this.f10176y = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        androidx.customview.widget.c cVar;
        if (!X(view)) {
            this.f10166o = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            R();
        }
        if (this.f10175x == null) {
            this.f10175x = VelocityTracker.obtain();
        }
        this.f10175x.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f10177z = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f10166o) {
            this.f10166o = false;
            return false;
        }
        return (this.f10166o || (cVar = this.f10165n) == null || !cVar.P(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        if (m0.s(coordinatorLayout) && !m0.s(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.f10172u == null) {
            this.f10172u = new WeakReference(view);
            this.f10176y = new g4.h(view);
            i iVar = this.f10157c;
            if (iVar != null) {
                m0.n0(view, iVar);
                i iVar2 = this.f10157c;
                float fR = this.f10161j;
                if (fR == -1.0f) {
                    fR = m0.r(view);
                }
                iVar2.setElevation(fR);
            } else {
                ColorStateList colorStateList = this.f10158f;
                if (colorStateList != null) {
                    m0.o0(view, colorStateList);
                }
            }
            b0(view);
            updateAccessibilityActions();
            if (m0.t(view) == 0) {
                m0.t0(view, 1);
            }
            t(view);
        }
        V(view, i10);
        if (this.f10165n == null) {
            this.f10165n = androidx.customview.widget.c.o(coordinatorLayout, this.B);
        }
        int iH = this.f10155a.h(view);
        coordinatorLayout.G(view, i10);
        this.f10169r = coordinatorLayout.getWidth();
        this.f10170s = this.f10155a.i(coordinatorLayout);
        this.f10168q = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f10171t = marginLayoutParams != null ? this.f10155a.a(marginLayoutParams) : 0;
        m0.T(view, m(iH, view));
        P(coordinatorLayout);
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            t.a(it.next());
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(u(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, -1, marginLayoutParams.width), u(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, -1, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, view, savedState.getSuperState());
        }
        int i10 = savedState.f10178a;
        if (i10 == 1 || i10 == 2) {
            i10 = 5;
        }
        this.f10163l = i10;
        this.f10164m = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10163l == 1 && actionMasked == 0) {
            return true;
        }
        if (W()) {
            this.f10165n.F(motionEvent);
        }
        if (actionMasked == 0) {
            R();
        }
        if (this.f10175x == null) {
            this.f10175x = VelocityTracker.obtain();
        }
        this.f10175x.addMovement(motionEvent);
        if (W() && actionMasked == 2 && !this.f10166o && I(motionEvent)) {
            this.f10165n.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f10166o;
    }

    public void setDraggable(boolean z10) {
        this.f10162k = z10;
    }

    public void setState(final int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        WeakReference weakReference = this.f10172u;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i10);
        } else {
            S((View) this.f10172u.get(), new Runnable() { // from class: l4.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13581a.O(i10);
                }
            });
        }
    }

    void setStateInternal(int i10) {
        View view;
        if (this.f10163l == i10) {
            return;
        }
        this.f10163l = i10;
        if (i10 == 3 || i10 == 5) {
            this.f10164m = i10;
        }
        WeakReference weakReference = this.f10172u;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        b0(view);
        Iterator it = this.A.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
        updateAccessibilityActions();
    }

    boolean shouldHide(View view, float f10) {
        return this.f10155a.n(view, f10);
    }

    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // g4.b
    public void startBackProgress(androidx.activity.b bVar) {
        g4.h hVar = this.f10176y;
        if (hVar == null) {
            return;
        }
        hVar.j(bVar);
    }

    @Override // g4.b
    public void updateBackProgress(androidx.activity.b bVar) {
        g4.h hVar = this.f10176y;
        if (hVar == null) {
            return;
        }
        hVar.l(bVar, y());
        Z();
    }

    int v() {
        return this.f10168q;
    }

    public View x() {
        WeakReference weakReference = this.f10173v;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    float z() {
        return 0.5f;
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f10178a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10178a = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f10178a);
        }

        public SavedState(Parcelable parcelable, SideSheetBehavior sideSheetBehavior) {
            super(parcelable);
            this.f10178a = sideSheetBehavior.f10163l;
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10160i = new c();
        this.f10162k = true;
        this.f10163l = 5;
        this.f10164m = 5;
        this.f10167p = 0.1f;
        this.f10174w = -1;
        this.A = new LinkedHashSet();
        this.B = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SideSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.f10158f = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f10159h = n.e(context, attributeSet, 0, D).m();
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            T(typedArrayObtainStyledAttributes.getResourceId(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1));
        }
        r(context);
        this.f10161j = typedArrayObtainStyledAttributes.getDimension(R$styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        setDraggable(typedArrayObtainStyledAttributes.getBoolean(R$styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        typedArrayObtainStyledAttributes.recycle();
        this.f10156b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
