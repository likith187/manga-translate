package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.t;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x3.k;

/* JADX INFO: loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    private static final int D = R$style.Widget_MaterialComponents_BottomAppBar;
    private static final int E = R$attr.motionDurationLong2;
    private static final int F = R$attr.motionEasingEmphasizedInterpolator;
    private int A;
    AnimatorListenerAdapter B;
    k C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f8976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.material.shape.i f8977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Animator f8978c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Animator f8979f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8980h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8981i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8982j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f8983k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8984l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f8985m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f8986n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f8987o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f8988p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f8989q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f8990r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f8991s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList f8992t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f8993u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f8994v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f8995w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Behavior f8996x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f8997y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f8998z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f9005b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f9004a);
            parcel.writeInt(this.f9005b ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f9004a = parcel.readInt();
            this.f9005b = parcel.readInt() != 0;
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f8994v) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.f0(bottomAppBar.f8980h, BottomAppBar.this.f8995w);
        }
    }

    class b implements k {
        b() {
        }

        @Override // x3.k
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f8977b.setInterpolation((floatingActionButton.getVisibility() == 0 && BottomAppBar.this.f8982j == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // x3.k
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(FloatingActionButton floatingActionButton) {
            if (BottomAppBar.this.f8982j != 1) {
                return;
            }
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().i() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().o(translationX);
                BottomAppBar.this.f8977b.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().d() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().j(fMax);
                BottomAppBar.this.f8977b.invalidateSelf();
            }
            BottomAppBar.this.f8977b.setInterpolation(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    class c implements ViewUtils.OnApplyWindowInsetsListener {
        c() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
            boolean z10;
            if (BottomAppBar.this.f8988p) {
                BottomAppBar.this.f8997y = a1Var.j();
            }
            boolean z11 = false;
            if (BottomAppBar.this.f8989q) {
                z10 = BottomAppBar.this.A != a1Var.k();
                BottomAppBar.this.A = a1Var.k();
            } else {
                z10 = false;
            }
            if (BottomAppBar.this.f8990r) {
                boolean z12 = BottomAppBar.this.f8998z != a1Var.l();
                BottomAppBar.this.f8998z = a1Var.l();
                z11 = z12;
            }
            if (z10 || z11) {
                BottomAppBar.this.T();
                BottomAppBar.this.j0();
                BottomAppBar.this.i0();
            }
            return a1Var;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.X();
            BottomAppBar.this.f8978c = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.Y();
        }
    }

    class e extends FloatingActionButton.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f9010a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.X();
            }
        }

        e(int i10) {
            this.f9010a = i10;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.c0(this.f9010a));
            floatingActionButton.r(new a());
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.X();
            BottomAppBar.this.f8994v = false;
            BottomAppBar.this.f8979f = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.Y();
        }
    }

    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f9014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f9015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f9016c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f9017f;

        g(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f9015b = actionMenuView;
            this.f9016c = i10;
            this.f9017f = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f9014a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f9014a) {
                return;
            }
            boolean z10 = BottomAppBar.this.f8993u != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.h0(bottomAppBar.f8993u);
            BottomAppBar.this.n0(this.f9015b, this.f9016c, this.f9017f, z10);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f9019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f9020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f9021c;

        h(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f9019a = actionMenuView;
            this.f9020b = i10;
            this.f9021c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f9019a.setTranslationX(BottomAppBar.this.b0(r0, this.f9020b, this.f9021c));
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.B.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonZ = BottomAppBar.this.Z();
            if (floatingActionButtonZ != null) {
                floatingActionButtonZ.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    public BottomAppBar(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(FloatingActionButton floatingActionButton) {
        floatingActionButton.d(this.B);
        floatingActionButton.e(new i());
        floatingActionButton.f(this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        Animator animator = this.f8979f;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f8978c;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void V(int i10, List list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(Z(), "translationX", c0(i10));
        objectAnimatorOfFloat.setDuration(getFabAlignmentAnimationDuration());
        list.add(objectAnimatorOfFloat);
    }

    private void W(int i10, boolean z10, List list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        objectAnimatorOfFloat.setDuration((long) (0.8f * fabAlignmentAnimationDuration));
        if (Math.abs(actionMenuView.getTranslationX() - b0(actionMenuView, i10, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(objectAnimatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat2.setDuration((long) (fabAlignmentAnimationDuration * 0.2f));
            objectAnimatorOfFloat2.addListener(new g(actionMenuView, i10, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        ArrayList arrayList;
        int i10 = this.f8991s - 1;
        this.f8991s = i10;
        if (i10 != 0 || (arrayList = this.f8992t) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        ArrayList arrayList;
        int i10 = this.f8991s;
        this.f8991s = i10 + 1;
        if (i10 != 0 || (arrayList = this.f8992t) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton Z() {
        View viewA0 = a0();
        if (viewA0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewA0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View a0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).q(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float c0(int i10) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        if (i10 != 1) {
            return 0.0f;
        }
        return ((getMeasuredWidth() / 2) - ((zIsLayoutRtl ? this.A : this.f8998z) + ((this.f8984l == -1 || a0() == null) ? this.f8983k : (r6.getMeasuredWidth() / 2) + this.f8984l))) * (zIsLayoutRtl ? -1 : 1);
    }

    private boolean d0() {
        FloatingActionButton floatingActionButtonZ = Z();
        return floatingActionButtonZ != null && floatingActionButtonZ.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(int i10, boolean z10) {
        if (!m0.O(this)) {
            this.f8994v = false;
            h0(this.f8993u);
            return;
        }
        Animator animator = this.f8979f;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!d0()) {
            i10 = 0;
            z10 = false;
        }
        W(i10, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f8979f = animatorSet;
        animatorSet.addListener(new f());
        this.f8979f.start();
    }

    private void g0(int i10) {
        if (this.f8980h == i10 || !m0.O(this)) {
            return;
        }
        Animator animator = this.f8978c;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f8981i == 1) {
            V(i10, arrayList);
        } else {
            U(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(g4.i.g(getContext(), F, x3.a.f16368a));
        this.f8978c = animatorSet;
        animatorSet.addListener(new d());
        this.f8978c.start();
    }

    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f8997y;
    }

    private int getFabAlignmentAnimationDuration() {
        return g4.i.f(getContext(), E, 300);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return c0(this.f8980h);
    }

    private float getFabTranslationY() {
        if (this.f8982j == 1) {
            return -getTopEdgeTreatment().d();
        }
        return a0() != null ? (-((getMeasuredHeight() + getBottomInset()) - r0.getMeasuredHeight())) / 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f8998z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.android.material.bottomappbar.b getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.b) this.f8977b.getShapeAppearanceModel().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f8979f != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (d0()) {
            m0(actionMenuView, this.f8980h, this.f8995w);
        } else {
            m0(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0() {
        getTopEdgeTreatment().o(getFabTranslationX());
        this.f8977b.setInterpolation((this.f8995w && d0() && this.f8982j == 1) ? 1.0f : 0.0f);
        View viewA0 = a0();
        if (viewA0 != null) {
            viewA0.setTranslationY(getFabTranslationY());
            viewA0.setTranslationX(getFabTranslationX());
        }
    }

    private void m0(ActionMenuView actionMenuView, int i10, boolean z10) {
        n0(actionMenuView, i10, z10, false);
    }

    private Drawable maybeTintNavigationIcon(Drawable drawable) {
        if (drawable == null || this.f8976a == null) {
            return drawable;
        }
        Drawable drawableR = v.a.r(drawable.mutate());
        v.a.n(drawableR, this.f8976a.intValue());
        return drawableR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(ActionMenuView actionMenuView, int i10, boolean z10, boolean z11) {
        h hVar = new h(actionMenuView, i10, z10);
        if (z11) {
            actionMenuView.post(hVar);
        } else {
            hVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o0(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        fVar.f1871d = 17;
        int i10 = bottomAppBar.f8982j;
        if (i10 == 1) {
            fVar.f1871d = 17 | 48;
        }
        if (i10 == 0) {
            fVar.f1871d |= 80;
        }
    }

    protected void U(int i10, List list) {
        FloatingActionButton floatingActionButtonZ = Z();
        if (floatingActionButtonZ == null || floatingActionButtonZ.n()) {
            return;
        }
        Y();
        floatingActionButtonZ.l(new e(i10));
    }

    protected int b0(ActionMenuView actionMenuView, int i10, boolean z10) {
        int i11 = 0;
        if (this.f8985m != 1 && (i10 != 1 || !z10)) {
            return 0;
        }
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int measuredWidth = zIsLayoutRtl ? getMeasuredWidth() : 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if ((childAt.getLayoutParams() instanceof Toolbar.g) && (((Toolbar.g) childAt.getLayoutParams()).gravity & 8388615) == 8388611) {
                measuredWidth = zIsLayoutRtl ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = zIsLayoutRtl ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i13 = zIsLayoutRtl ? this.f8998z : -this.A;
        if (getNavigationIcon() == null) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.m3_bottomappbar_horizontal_padding);
            if (!zIsLayoutRtl) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
            i11 = dimensionPixelOffset;
        }
        return measuredWidth - ((right + i13) + i11);
    }

    public ColorStateList getBackgroundTint() {
        return this.f8977b.getTintList();
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().d();
    }

    public int getFabAlignmentMode() {
        return this.f8980h;
    }

    public int getFabAlignmentModeEndMargin() {
        return this.f8984l;
    }

    public int getFabAnchorMode() {
        return this.f8982j;
    }

    public int getFabAnimationMode() {
        return this.f8981i;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f8987o;
    }

    public int getMenuAlignmentMode() {
        return this.f8985m;
    }

    public void h0(int i10) {
        if (i10 != 0) {
            this.f8993u = 0;
            getMenu().clear();
            inflateMenu(i10);
        }
    }

    public void k0(int i10, int i11) {
        this.f8993u = i11;
        this.f8994v = true;
        f0(i10, this.f8995w);
        g0(i10);
        this.f8980h = i10;
    }

    boolean l0(int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().h()) {
            return false;
        }
        getTopEdgeTreatment().n(f10);
        this.f8977b.invalidateSelf();
        return true;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.f(this, this.f8977b);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            T();
            j0();
            final View viewA0 = a0();
            if (viewA0 != null && m0.O(viewA0)) {
                viewA0.post(new Runnable() { // from class: com.google.android.material.bottomappbar.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        viewA0.requestLayout();
                    }
                });
            }
        }
        i0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8980h = savedState.f9004a;
        this.f8995w = savedState.f9005b;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9004a = this.f8980h;
        savedState.f9005b = this.f8995w;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        v.a.o(this.f8977b, colorStateList);
    }

    public void setCradleVerticalOffset(float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().j(f10);
            this.f8977b.invalidateSelf();
            j0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        this.f8977b.setElevation(f10);
        getBehavior().e(this, this.f8977b.getShadowRadius() - this.f8977b.getShadowOffsetY());
    }

    public void setFabAlignmentMode(int i10) {
        k0(i10, 0);
    }

    public void setFabAlignmentModeEndMargin(int i10) {
        if (this.f8984l != i10) {
            this.f8984l = i10;
            j0();
        }
    }

    public void setFabAnchorMode(int i10) {
        this.f8982j = i10;
        j0();
        View viewA0 = a0();
        if (viewA0 != null) {
            o0(this, viewA0);
            viewA0.requestLayout();
            this.f8977b.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i10) {
        this.f8981i = i10;
    }

    void setFabCornerSize(float f10) {
        if (f10 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().k(f10);
            this.f8977b.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().l(f10);
            this.f8977b.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m(f10);
            this.f8977b.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f8987o = z10;
    }

    public void setMenuAlignmentMode(int i10) {
        if (this.f8985m != i10) {
            this.f8985m = i10;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                m0(actionMenuView, this.f8980h, d0());
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(int i10) {
        this.f8976a = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Behavior getBehavior() {
        if (this.f8996x == null) {
            this.f8996x = new Behavior();
        }
        return this.f8996x;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Rect f8999p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private WeakReference f9000q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f9001r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final View.OnLayoutChangeListener f9002s;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f9000q.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.i(Behavior.this.f8999p);
                    int iHeight = Behavior.this.f8999p.height();
                    bottomAppBar.l0(iHeight);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f8999p)));
                    height = iHeight;
                }
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.f9001r == 0) {
                    if (bottomAppBar.f8982j == 1) {
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (ViewUtils.isLayoutRtl(view)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.f8983k;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.f8983k;
                    }
                }
                bottomAppBar.j0();
            }
        }

        public Behavior() {
            this.f9002s = new a();
            this.f8999p = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i10) {
            this.f9000q = new WeakReference(bottomAppBar);
            View viewA0 = bottomAppBar.a0();
            if (viewA0 != null && !m0.O(viewA0)) {
                BottomAppBar.o0(bottomAppBar, viewA0);
                this.f9001r = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) viewA0.getLayoutParams())).bottomMargin;
                if (viewA0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewA0;
                    if (bottomAppBar.f8982j == 0 && bottomAppBar.f8986n) {
                        m0.r0(floatingActionButton, 0.0f);
                        floatingActionButton.setCompatElevation(0.0f);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R$animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R$animator.mtrl_fab_hide_motion_spec);
                    }
                    bottomAppBar.S(floatingActionButton);
                }
                viewA0.addOnLayoutChangeListener(this.f9002s);
                bottomAppBar.j0();
            }
            coordinatorLayout.G(bottomAppBar, i10);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i10);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i10, int i11) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i10, i11);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9002s = new a();
            this.f8999p = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(Context context, AttributeSet attributeSet, int i10) {
        int i11 = D;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        com.google.android.material.shape.i iVar = new com.google.android.material.shape.i();
        this.f8977b = iVar;
        this.f8991s = 0;
        this.f8993u = 0;
        this.f8994v = false;
        this.f8995w = true;
        this.B = new a();
        this.C = new b();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.BottomAppBar, i10, i11, new int[0]);
        ColorStateList colorStateListA = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.BottomAppBar_backgroundTint);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomAppBar_navigationIconTint)) {
            setNavigationIconTint(typedArrayObtainStyledAttributes.getColor(R$styleable.BottomAppBar_navigationIconTint, -1));
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.f8980h = typedArrayObtainStyledAttributes.getInt(R$styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f8981i = typedArrayObtainStyledAttributes.getInt(R$styleable.BottomAppBar_fabAnimationMode, 0);
        this.f8982j = typedArrayObtainStyledAttributes.getInt(R$styleable.BottomAppBar_fabAnchorMode, 1);
        this.f8986n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_removeEmbeddedFabElevation, true);
        this.f8985m = typedArrayObtainStyledAttributes.getInt(R$styleable.BottomAppBar_menuAlignmentMode, 0);
        this.f8987o = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_hideOnScroll, false);
        this.f8988p = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f8989q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f8990r = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        this.f8984l = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomAppBar_fabAlignmentModeEndMargin, -1);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomAppBar_addElevationShadow, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f8983k = getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fabOffsetEndMode);
        iVar.setShapeAppearanceModel(n.a().D(new com.google.android.material.bottomappbar.b(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        if (z10) {
            iVar.setShadowCompatibilityMode(2);
        } else {
            iVar.setShadowCompatibilityMode(1);
            setOutlineAmbientShadowColor(0);
            setOutlineSpotShadowColor(0);
        }
        iVar.setPaintStyle(Paint.Style.FILL);
        iVar.initializeElevationOverlay(context2);
        setElevation(dimensionPixelSize);
        v.a.o(iVar, colorStateListA);
        m0.n0(this, iVar);
        ViewUtils.doOnApplyWindowInsets(this, attributeSet, i10, i11, new c());
    }
}
