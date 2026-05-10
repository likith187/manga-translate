package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    private static final int L = R$style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property M = new f(Float.class, "width");
    static final Property N = new g(Float.class, "height");
    static final Property O = new h(Float.class, "paddingStart");
    static final Property P = new i(Float.class, "paddingEnd");
    private final int A;
    private int B;
    private int C;
    private final CoordinatorLayout.c D;
    private boolean E;
    private boolean F;
    private boolean G;
    protected ColorStateList H;
    private int I;
    private int J;
    private final int K;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9559u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.a f9560v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f9561w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f9562x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f9563y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f9564z;

    class a implements n {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int a() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int b() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int c() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int d() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams e() {
            return new ViewGroup.LayoutParams(d(), a());
        }
    }

    class b implements n {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int a() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int b() {
            return ExtendedFloatingActionButton.this.C;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int c() {
            return ExtendedFloatingActionButton.this.B;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int d() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.B + ExtendedFloatingActionButton.this.C;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams e() {
            return new ViewGroup.LayoutParams(-2, -2);
        }
    }

    class c implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f9570a;

        c(n nVar) {
            this.f9570a = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int a() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (ExtendedFloatingActionButton.this.J != -1) {
                return (ExtendedFloatingActionButton.this.J == 0 || ExtendedFloatingActionButton.this.J == -2) ? this.f9570a.a() : ExtendedFloatingActionButton.this.J;
            }
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f9570a.a();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.height != -2) {
                return (view.getHeight() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingTop() + view.getPaddingBottom());
            }
            return this.f9570a.a();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int b() {
            return ExtendedFloatingActionButton.this.C;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int c() {
            return ExtendedFloatingActionButton.this.B;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int d() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f9570a.d();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.width != -2) {
                return (view.getWidth() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingLeft() + view.getPaddingRight());
            }
            return this.f9570a.d();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams e() {
            return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.J == 0 ? -2 : ExtendedFloatingActionButton.this.J);
        }
    }

    class d implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f9572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f9573b;

        d(n nVar, n nVar2) {
            this.f9572a = nVar;
            this.f9573b = nVar2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int a() {
            return ExtendedFloatingActionButton.this.J == -1 ? this.f9572a.a() : (ExtendedFloatingActionButton.this.J == 0 || ExtendedFloatingActionButton.this.J == -2) ? this.f9573b.a() : ExtendedFloatingActionButton.this.J;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int b() {
            return ExtendedFloatingActionButton.this.C;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int c() {
            return ExtendedFloatingActionButton.this.B;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int d() {
            return ExtendedFloatingActionButton.this.I == -1 ? this.f9572a.d() : (ExtendedFloatingActionButton.this.I == 0 || ExtendedFloatingActionButton.this.I == -2) ? this.f9573b.d() : ExtendedFloatingActionButton.this.I;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams e() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.I == 0 ? -2 : ExtendedFloatingActionButton.this.I, ExtendedFloatingActionButton.this.J != 0 ? ExtendedFloatingActionButton.this.J : -2);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f9575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.f f9576b;

        e(com.google.android.material.floatingactionbutton.f fVar, l lVar) {
            this.f9576b = fVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f9575a = true;
            this.f9576b.a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9576b.onAnimationEnd();
            if (this.f9575a) {
                return;
            }
            this.f9576b.g(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f9576b.onAnimationStart(animator);
            this.f9575a = false;
        }
    }

    class f extends Property {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            view.getLayoutParams().width = f10.intValue();
            view.requestLayout();
        }
    }

    class g extends Property {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            view.getLayoutParams().height = f10.intValue();
            view.requestLayout();
        }
    }

    class h extends Property {
        h(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(m0.A(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            m0.z0(view, f10.intValue(), view.getPaddingTop(), m0.z(view), view.getPaddingBottom());
        }
    }

    class i extends Property {
        i(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(m0.z(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            m0.z0(view, m0.A(view), view.getPaddingTop(), f10.intValue(), view.getPaddingBottom());
        }
    }

    class j extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final n f9578g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f9579h;

        j(com.google.android.material.floatingactionbutton.a aVar, n nVar, boolean z10) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f9578g = nVar;
            this.f9579h = z10;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int b() {
            return this.f9579h ? R$animator.mtrl_extended_fab_change_size_expand_motion_spec : R$animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void c() {
            ExtendedFloatingActionButton.this.E = this.f9579h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.f9579h) {
                ExtendedFloatingActionButton.this.I = layoutParams.width;
                ExtendedFloatingActionButton.this.J = layoutParams.height;
            }
            layoutParams.width = this.f9578g.e().width;
            layoutParams.height = this.f9578g.e().height;
            m0.z0(ExtendedFloatingActionButton.this, this.f9578g.c(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f9578g.b(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public AnimatorSet e() {
            x3.h hVarL = l();
            if (hVarL.j("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrG = hVarL.g("width");
                propertyValuesHolderArrG[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f9578g.d());
                hVarL.l("width", propertyValuesHolderArrG);
            }
            if (hVarL.j("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrG2 = hVarL.g("height");
                propertyValuesHolderArrG2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f9578g.a());
                hVarL.l("height", propertyValuesHolderArrG2);
            }
            if (hVarL.j("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrG3 = hVarL.g("paddingStart");
                propertyValuesHolderArrG3[0].setFloatValues(m0.A(ExtendedFloatingActionButton.this), this.f9578g.c());
                hVarL.l("paddingStart", propertyValuesHolderArrG3);
            }
            if (hVarL.j("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrG4 = hVarL.g("paddingEnd");
                propertyValuesHolderArrG4[0].setFloatValues(m0.z(ExtendedFloatingActionButton.this), this.f9578g.b());
                hVarL.l("paddingEnd", propertyValuesHolderArrG4);
            }
            if (hVarL.j("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrG5 = hVarL.g("labelOpacity");
                boolean z10 = this.f9579h;
                propertyValuesHolderArrG5[0].setFloatValues(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                hVarL.l("labelOpacity", propertyValuesHolderArrG5);
            }
            return super.k(hVarL);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g(l lVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean h() {
            return this.f9579h == ExtendedFloatingActionButton.this.E || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.F = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f9578g.e().width;
            layoutParams.height = this.f9578g.e().height;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.E = this.f9579h;
            ExtendedFloatingActionButton.this.F = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class k extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f9581g;

        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            this.f9581g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int b() {
            return R$animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g(l lVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean h() {
            return ExtendedFloatingActionButton.this.w();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f9559u = 0;
            if (this.f9581g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f9581g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f9559u = 1;
        }
    }

    public static abstract class l {
    }

    class m extends com.google.android.material.floatingactionbutton.b {
        public m(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int b() {
            return R$animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g(l lVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean h() {
            return ExtendedFloatingActionButton.this.x();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f9559u = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f9559u = 2;
        }
    }

    interface n {
        int a();

        int b();

        int c();

        int d();

        ViewGroup.LayoutParams e();
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    private boolean A() {
        return (m0.O(this) || (!x() && this.G)) && !isInEditMode();
    }

    private n v(int i10) {
        b bVar = new b();
        c cVar = new c(bVar);
        return i10 != 1 ? i10 != 2 ? new d(cVar, bVar) : cVar : bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        return getVisibility() == 0 ? this.f9559u == 1 : this.f9559u != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x() {
        return getVisibility() != 0 ? this.f9559u == 2 : this.f9559u != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(int i10, l lVar) {
        com.google.android.material.floatingactionbutton.f fVar;
        if (i10 == 0) {
            fVar = this.f9563y;
        } else if (i10 == 1) {
            fVar = this.f9564z;
        } else if (i10 == 2) {
            fVar = this.f9561w;
        } else {
            if (i10 != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i10);
            }
            fVar = this.f9562x;
        }
        if (fVar.h()) {
            return;
        }
        if (!A()) {
            fVar.c();
            fVar.g(lVar);
            return;
        }
        if (i10 == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.I = layoutParams.width;
                this.J = layoutParams.height;
            } else {
                this.I = getWidth();
                this.J = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet animatorSetE = fVar.e();
        animatorSetE.addListener(new e(fVar, lVar));
        Iterator it = fVar.f().iterator();
        while (it.hasNext()) {
            animatorSetE.addListener((Animator.AnimatorListener) it.next());
        }
        animatorSetE.start();
    }

    private void z() {
        this.H = getTextColors();
    }

    protected void B(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c getBehavior() {
        return this.D;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i10 = this.A;
        return i10 < 0 ? (Math.min(m0.A(this), m0.z(this)) * 2) + getIconSize() : i10;
    }

    public x3.h getExtendMotionSpec() {
        return this.f9562x.d();
    }

    public x3.h getHideMotionSpec() {
        return this.f9564z.d();
    }

    public x3.h getShowMotionSpec() {
        return this.f9563y.d();
    }

    public x3.h getShrinkMotionSpec() {
        return this.f9561w.d();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.E && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.E = false;
            this.f9561w.c();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.G = z10;
    }

    public void setExtendMotionSpec(x3.h hVar) {
        this.f9562x.i(hVar);
    }

    public void setExtendMotionSpecResource(int i10) {
        setExtendMotionSpec(x3.h.d(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (this.E == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z10 ? this.f9562x : this.f9561w;
        if (fVar.h()) {
            return;
        }
        fVar.c();
    }

    public void setHideMotionSpec(x3.h hVar) {
        this.f9564z.i(hVar);
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(x3.h.d(getContext(), i10));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (!this.E || this.F) {
            return;
        }
        this.B = m0.A(this);
        this.C = m0.z(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (!this.E || this.F) {
            return;
        }
        this.B = i10;
        this.C = i12;
    }

    public void setShowMotionSpec(x3.h hVar) {
        this.f9563y.i(hVar);
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(x3.h.d(getContext(), i10));
    }

    public void setShrinkMotionSpec(x3.h hVar) {
        this.f9561w.i(hVar);
    }

    public void setShrinkMotionSpecResource(int i10) {
        setShrinkMotionSpec(x3.h.d(getContext(), i10));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        z();
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.extendedFloatingActionButtonStyle);
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f9565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f9566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f9567c;

        public ExtendedFloatingActionButtonBehavior() {
            this.f9566b = false;
            this.f9567c = true;
        }

        private boolean e(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f9566b || this.f9567c) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).e() == view.getId();
        }

        private boolean g(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!e(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f9565a == null) {
                this.f9565a = new Rect();
            }
            Rect rect = this.f9565a;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                f(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        private boolean h(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!e(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                f(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        private static boolean isBottomSheet(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        protected void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.y(this.f9567c ? 3 : 0, null);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                g(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!isBottomSheet(view)) {
                return false;
            }
            h(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List listP = coordinatorLayout.p(extendedFloatingActionButton);
            int size = listP.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = (View) listP.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (isBottomSheet(view) && h(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (g(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.G(extendedFloatingActionButton, i10);
            return true;
        }

        protected void f(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.y(this.f9567c ? 2 : 1, null);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
            if (fVar.f1875h == 0) {
                fVar.f1875h = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f9566b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f9567c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i10) {
        int i11 = L;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9559u = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.f9560v = aVar;
        m mVar = new m(aVar);
        this.f9563y = mVar;
        k kVar = new k(aVar);
        this.f9564z = kVar;
        this.E = true;
        this.F = false;
        this.G = false;
        Context context2 = getContext();
        this.D = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.ExtendedFloatingActionButton, i10, i11, new int[0]);
        x3.h hVarC = x3.h.c(context2, typedArrayObtainStyledAttributes, R$styleable.ExtendedFloatingActionButton_showMotionSpec);
        x3.h hVarC2 = x3.h.c(context2, typedArrayObtainStyledAttributes, R$styleable.ExtendedFloatingActionButton_hideMotionSpec);
        x3.h hVarC3 = x3.h.c(context2, typedArrayObtainStyledAttributes, R$styleable.ExtendedFloatingActionButton_extendMotionSpec);
        x3.h hVarC4 = x3.h.c(context2, typedArrayObtainStyledAttributes, R$styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.ExtendedFloatingActionButton_extendStrategy, 1);
        this.K = i12;
        this.B = m0.A(this);
        this.C = m0.z(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        j jVar = new j(aVar2, v(i12), true);
        this.f9562x = jVar;
        j jVar2 = new j(aVar2, new a(), false);
        this.f9561w = jVar2;
        mVar.i(hVarC);
        kVar.i(hVarC2);
        jVar.i(hVarC3);
        jVar2.i(hVarC4);
        typedArrayObtainStyledAttributes.recycle();
        setShapeAppearanceModel(com.google.android.material.shape.n.g(context2, attributeSet, i10, i11, com.google.android.material.shape.n.f10075m).m());
        z();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        z();
    }
}
