package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.m0;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.FadeThroughUpdateListener;
import com.google.android.material.internal.MultiViewUpdateListener;
import com.google.android.material.internal.RectEvaluator;
import com.google.android.material.internal.ReversableAnimatedValueInterpolator;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.search.SearchView;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class w {

    /* JADX INFO: renamed from: a */
    private final SearchView f10019a;

    /* JADX INFO: renamed from: b */
    private final View f10020b;

    /* JADX INFO: renamed from: c */
    private final ClippableRoundedCornerLayout f10021c;

    /* JADX INFO: renamed from: d */
    private final FrameLayout f10022d;

    /* JADX INFO: renamed from: e */
    private final FrameLayout f10023e;

    /* JADX INFO: renamed from: f */
    private final Toolbar f10024f;

    /* JADX INFO: renamed from: g */
    private final Toolbar f10025g;

    /* JADX INFO: renamed from: h */
    private final TextView f10026h;

    /* JADX INFO: renamed from: i */
    private final EditText f10027i;

    /* JADX INFO: renamed from: j */
    private final ImageButton f10028j;

    /* JADX INFO: renamed from: k */
    private final View f10029k;

    /* JADX INFO: renamed from: l */
    private final TouchObserverFrameLayout f10030l;

    /* JADX INFO: renamed from: m */
    private final g4.g f10031m;

    /* JADX INFO: renamed from: n */
    private AnimatorSet f10032n;

    /* JADX INFO: renamed from: o */
    private SearchBar f10033o;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!w.this.f10019a.o()) {
                w.this.f10019a.F();
            }
            w.this.f10019a.setTransitionState(SearchView.b.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            w.this.f10021c.setVisibility(0);
            w.this.f10033o.w();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            w.this.f10021c.setVisibility(8);
            if (!w.this.f10019a.o()) {
                w.this.f10019a.l();
            }
            w.this.f10019a.setTransitionState(SearchView.b.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            w.this.f10019a.setTransitionState(SearchView.b.HIDING);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!w.this.f10019a.o()) {
                w.this.f10019a.F();
            }
            w.this.f10019a.setTransitionState(SearchView.b.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            w.this.f10021c.setVisibility(0);
            w.this.f10019a.setTransitionState(SearchView.b.SHOWING);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            w.this.f10021c.setVisibility(8);
            if (!w.this.f10019a.o()) {
                w.this.f10019a.l();
            }
            w.this.f10019a.setTransitionState(SearchView.b.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            w.this.f10019a.setTransitionState(SearchView.b.HIDING);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f10038a;

        e(boolean z10) {
            this.f10038a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            w.this.U(this.f10038a ? 1.0f : 0.0f);
            w.this.f10021c.resetClipBoundsAndCornerRadius();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            w.this.U(this.f10038a ? 0.0f : 1.0f);
        }
    }

    w(SearchView searchView) {
        this.f10019a = searchView;
        this.f10020b = searchView.f9964a;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f9965b;
        this.f10021c = clippableRoundedCornerLayout;
        this.f10022d = searchView.f9968h;
        this.f10023e = searchView.f9969i;
        this.f10024f = searchView.f9970j;
        this.f10025g = searchView.f9971k;
        this.f10026h = searchView.f9972l;
        this.f10027i = searchView.f9973m;
        this.f10028j = searchView.f9974n;
        this.f10029k = searchView.f9975o;
        this.f10030l = searchView.f9976p;
        this.f10031m = new g4.g(clippableRoundedCornerLayout);
    }

    private Animator A(boolean z10) {
        return K(z10, true, this.f10027i);
    }

    private AnimatorSet B(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (this.f10032n == null) {
            animatorSet.playTogether(s(z10), t(z10));
        }
        animatorSet.playTogether(H(z10), G(z10), u(z10), w(z10), F(z10), z(z10), q(z10), A(z10), I(z10));
        animatorSet.addListener(new e(z10));
        return animatorSet;
    }

    private int C(View view) {
        int iA = androidx.core.view.m.a((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        return ViewUtils.isLayoutRtl(this.f10033o) ? this.f10033o.getLeft() - iA : (this.f10033o.getRight() - this.f10019a.getWidth()) + iA;
    }

    private int D(View view) {
        int iB = androidx.core.view.m.b((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        int iA = m0.A(this.f10033o);
        return ViewUtils.isLayoutRtl(this.f10033o) ? ((this.f10033o.getWidth() - this.f10033o.getRight()) + iB) - iA : (this.f10033o.getLeft() - iB) + iA;
    }

    private int E() {
        return ((this.f10033o.getTop() + this.f10033o.getBottom()) / 2) - ((this.f10023e.getTop() + this.f10023e.getBottom()) / 2);
    }

    private Animator F(boolean z10) {
        return K(z10, false, this.f10022d);
    }

    private Animator G(boolean z10) {
        Rect rectM = this.f10031m.m();
        Rect rectL = this.f10031m.l();
        if (rectM == null) {
            rectM = ViewUtils.calculateRectFromBounds(this.f10019a);
        }
        if (rectL == null) {
            rectL = ViewUtils.calculateOffsetRectFromBounds(this.f10021c, this.f10033o);
        }
        final Rect rect = new Rect(rectL);
        final float cornerSize = this.f10033o.getCornerSize();
        final float fMax = Math.max(this.f10021c.getCornerRadius(), this.f10031m.k());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new RectEvaluator(rect), rectL, rectM);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.q
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f10010a.P(cornerSize, fMax, rect, valueAnimator);
            }
        });
        valueAnimatorOfObject.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfObject.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        return valueAnimatorOfObject;
    }

    private Animator H(boolean z10) {
        TimeInterpolator timeInterpolator = z10 ? x3.a.f16368a : x3.a.f16369b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, timeInterpolator));
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f10020b));
        return valueAnimatorOfFloat;
    }

    private Animator I(boolean z10) {
        return K(z10, true, this.f10026h);
    }

    private AnimatorSet J(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(L());
        k(animatorSet);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        animatorSet.setDuration(z10 ? 350L : 300L);
        return animatorSet;
    }

    private Animator K(boolean z10, boolean z11, View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z11 ? D(view) : C(view), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(view));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        return animatorSet;
    }

    private Animator L() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f10021c.getHeight(), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.translationYListener(this.f10021c));
        return valueAnimatorOfFloat;
    }

    public static /* synthetic */ void N(f.d dVar, ValueAnimator valueAnimator) {
        dVar.e(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static /* synthetic */ void O(FadeThroughDrawable fadeThroughDrawable, ValueAnimator valueAnimator) {
        fadeThroughDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void P(float f10, float f11, Rect rect, ValueAnimator valueAnimator) {
        this.f10021c.updateClipBoundsAndCornerRadius(rect, x3.a.a(f10, f11, valueAnimator.getAnimatedFraction()));
    }

    public /* synthetic */ void Q() {
        AnimatorSet animatorSetB = B(true);
        animatorSetB.addListener(new a());
        animatorSetB.start();
    }

    public /* synthetic */ void R() {
        this.f10021c.setTranslationY(r0.getHeight());
        AnimatorSet animatorSetJ = J(true);
        animatorSetJ.addListener(new c());
        animatorSetJ.start();
    }

    private void T(float f10) {
        ActionMenuView actionMenuView;
        if (!this.f10019a.r() || (actionMenuView = ToolbarUtils.getActionMenuView(this.f10024f)) == null) {
            return;
        }
        actionMenuView.setAlpha(f10);
    }

    public void U(float f10) {
        this.f10028j.setAlpha(f10);
        this.f10029k.setAlpha(f10);
        this.f10030l.setAlpha(f10);
        T(f10);
    }

    private void V(Drawable drawable) {
        if (drawable instanceof f.d) {
            ((f.d) drawable).e(1.0f);
        }
        if (drawable instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) drawable).setProgress(1.0f);
        }
    }

    private void W(Toolbar toolbar) {
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(toolbar);
        if (actionMenuView != null) {
            for (int i10 = 0; i10 < actionMenuView.getChildCount(); i10++) {
                View childAt = actionMenuView.getChildAt(i10);
                childAt.setClickable(false);
                childAt.setFocusable(false);
                childAt.setFocusableInTouchMode(false);
            }
        }
    }

    private void Y() {
        Menu menu = this.f10025g.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (this.f10033o.getMenuResId() == -1 || !this.f10019a.r()) {
            this.f10025g.setVisibility(8);
            return;
        }
        this.f10025g.inflateMenu(this.f10033o.getMenuResId());
        W(this.f10025g);
        this.f10025g.setVisibility(0);
    }

    private AnimatorSet b0() {
        if (this.f10019a.o()) {
            this.f10019a.l();
        }
        AnimatorSet animatorSetB = B(false);
        animatorSetB.addListener(new b());
        animatorSetB.start();
        return animatorSetB;
    }

    private AnimatorSet c0() {
        if (this.f10019a.o()) {
            this.f10019a.l();
        }
        AnimatorSet animatorSetJ = J(false);
        animatorSetJ.addListener(new d());
        animatorSetJ.start();
        return animatorSetJ;
    }

    private void d0() {
        if (this.f10019a.o()) {
            this.f10019a.F();
        }
        this.f10019a.setTransitionState(SearchView.b.SHOWING);
        Y();
        this.f10027i.setText(this.f10033o.getText());
        EditText editText = this.f10027i;
        editText.setSelection(editText.getText().length());
        this.f10021c.setVisibility(4);
        this.f10021c.post(new Runnable() { // from class: com.google.android.material.search.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f10015a.Q();
            }
        });
    }

    private void e0() {
        if (this.f10019a.o()) {
            final SearchView searchView = this.f10019a;
            Objects.requireNonNull(searchView);
            searchView.postDelayed(new Runnable() { // from class: com.google.android.material.search.u
                @Override // java.lang.Runnable
                public final void run() {
                    searchView.F();
                }
            }, 150L);
        }
        this.f10021c.setVisibility(4);
        this.f10021c.post(new Runnable() { // from class: com.google.android.material.search.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f10018a.R();
            }
        });
    }

    private void j(AnimatorSet animatorSet) {
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(this.f10024f);
        if (actionMenuView == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(actionMenuView), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(actionMenuView));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(actionMenuView));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void k(AnimatorSet animatorSet) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f10024f);
        if (navigationIconButton == null) {
            return;
        }
        Drawable drawableQ = v.a.q(navigationIconButton.getDrawable());
        if (!this.f10019a.p()) {
            V(drawableQ);
        } else {
            m(animatorSet, drawableQ);
            n(animatorSet, drawableQ);
        }
    }

    private void l(AnimatorSet animatorSet) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f10024f);
        if (navigationIconButton == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(D(navigationIconButton), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(navigationIconButton));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(navigationIconButton));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void m(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof f.d) {
            final f.d dVar = (f.d) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.r
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    w.N(dVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private void n(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof FadeThroughDrawable) {
            final FadeThroughDrawable fadeThroughDrawable = (FadeThroughDrawable) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.t
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    w.O(fadeThroughDrawable, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private Animator q(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        if (this.f10019a.r()) {
            valueAnimatorOfFloat.addUpdateListener(new FadeThroughUpdateListener(ToolbarUtils.getActionMenuView(this.f10025g), ToolbarUtils.getActionMenuView(this.f10024f)));
        }
        return valueAnimatorOfFloat;
    }

    private AnimatorSet s(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        k(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        return animatorSet;
    }

    private AnimatorSet t(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        l(animatorSet);
        j(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        return animatorSet;
    }

    private Animator u(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 50L : 42L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 250L : 0L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16368a));
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f10028j));
        return valueAnimatorOfFloat;
    }

    private Animator v(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 150L : 83L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 75L : 0L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16368a));
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f10029k, this.f10030l));
        return valueAnimatorOfFloat;
    }

    private Animator w(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(v(z10), y(z10), x(z10));
        return animatorSet;
    }

    private Animator x(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.95f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.scaleListener(this.f10030l));
        return valueAnimatorOfFloat;
    }

    private Animator y(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f10030l.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.of(z10, x3.a.f16369b));
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.translationYListener(this.f10029k));
        return valueAnimatorOfFloat;
    }

    private Animator z(boolean z10) {
        return K(z10, false, this.f10025g);
    }

    AnimatorSet M() {
        return this.f10033o != null ? b0() : c0();
    }

    public androidx.activity.b S() {
        return this.f10031m.c();
    }

    void X(SearchBar searchBar) {
        this.f10033o = searchBar;
    }

    void Z() {
        if (this.f10033o != null) {
            d0();
        } else {
            e0();
        }
    }

    void a0(androidx.activity.b bVar) {
        this.f10031m.t(bVar, this.f10033o);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void f0(androidx.activity.b bVar) {
        if (bVar.a() <= 0.0f) {
            return;
        }
        g4.g gVar = this.f10031m;
        SearchBar searchBar = this.f10033o;
        gVar.v(bVar, searchBar, searchBar.getCornerSize());
        AnimatorSet animatorSet = this.f10032n;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (bVar.a() * this.f10032n.getDuration()));
            return;
        }
        if (this.f10019a.o()) {
            this.f10019a.l();
        }
        if (this.f10019a.p()) {
            AnimatorSet animatorSetS = s(false);
            this.f10032n = animatorSetS;
            animatorSetS.start();
            this.f10032n.pause();
        }
    }

    public void o() {
        this.f10031m.g(this.f10033o);
        AnimatorSet animatorSet = this.f10032n;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        this.f10032n = null;
    }

    public void p() {
        this.f10031m.j(M().getTotalDuration(), this.f10033o);
        if (this.f10032n != null) {
            t(false).start();
            this.f10032n.resume();
        }
        this.f10032n = null;
    }

    g4.g r() {
        return this.f10031m;
    }
}
