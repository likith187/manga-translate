package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.a1;
import com.coui.appcompat.tooltips.COUIToolTips;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements s, androidx.core.view.x, androidx.core.view.y {
    static final int[] J = {R$attr.actionBarSize, R.attr.windowContentOverlay};
    private static final a1 K = new a1.a().c(u.e.c(0, 1, 0, 1)).a();
    private static final Rect L = new Rect();
    private a1 A;
    private d B;
    private OverScroller C;
    ViewPropertyAnimator D;
    final AnimatorListenerAdapter E;
    private final Runnable F;
    private final Runnable G;
    private final androidx.core.view.z H;
    private final f I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ContentFrameLayout f570c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ActionBarContainer f571f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t f572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Drawable f573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f574j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f575k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f576l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f577m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f578n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f580p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Rect f581q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Rect f582r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Rect f583s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Rect f584t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Rect f585u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Rect f586v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Rect f587w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private a1 f588x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private a1 f589y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private a1 f590z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = null;
            actionBarOverlayLayout.f577m = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = null;
            actionBarOverlayLayout.f577m = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.p();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = actionBarOverlayLayout.f571f.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.E);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.p();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = actionBarOverlayLayout.f571f.animate().translationY(-ActionBarOverlayLayout.this.f571f.getHeight()).setListener(ActionBarOverlayLayout.this.E);
        }
    }

    public interface d {
        void a();

        void b();

        void c(int i10);

        void d();

        void e(boolean z10);

        void f();
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i10, int i11) {
            super(i10, i11);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private static final class f extends View {
        f(Context context) {
            super(context);
            setWillNotDraw(true);
        }

        @Override // android.view.View
        public int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    private void j() {
        p();
        this.G.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean k(android.view.View r2, android.graphics.Rect r3, boolean r4, boolean r5, boolean r6, boolean r7) {
        /*
            r1 = this;
            android.view.ViewGroup$LayoutParams r1 = r2.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r1 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r1
            r2 = 1
            if (r4 == 0) goto L13
            int r4 = r1.leftMargin
            int r0 = r3.left
            if (r4 == r0) goto L13
            r1.leftMargin = r0
            r4 = r2
            goto L14
        L13:
            r4 = 0
        L14:
            if (r5 == 0) goto L1f
            int r5 = r1.topMargin
            int r0 = r3.top
            if (r5 == r0) goto L1f
            r1.topMargin = r0
            r4 = r2
        L1f:
            if (r7 == 0) goto L2a
            int r5 = r1.rightMargin
            int r7 = r3.right
            if (r5 == r7) goto L2a
            r1.rightMargin = r7
            r4 = r2
        L2a:
            if (r6 == 0) goto L35
            int r5 = r1.bottomMargin
            int r3 = r3.bottom
            if (r5 == r3) goto L35
            r1.bottomMargin = r3
            goto L36
        L35:
            r2 = r4
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.k(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    private boolean l() {
        androidx.core.view.m0.e(this.I, K, this.f583s);
        return !this.f583s.equals(L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private t o(View view) {
        if (view instanceof t) {
            return (t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void q(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(J);
        this.f568a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f573i = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.C = new OverScroller(context);
    }

    private void s() {
        p();
        postDelayed(this.G, 600L);
    }

    private void t() {
        p();
        postDelayed(this.F, 600L);
    }

    private void v() {
        p();
        this.F.run();
    }

    private boolean w(float f10) {
        this.C.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.C.getFinalY() > this.f571f.getHeight();
    }

    @Override // androidx.appcompat.widget.s
    public void a(Menu menu, MenuPresenter.Callback callback) {
        u();
        this.f572h.a(menu, callback);
    }

    @Override // androidx.appcompat.widget.s
    public boolean b() {
        u();
        return this.f572h.b();
    }

    @Override // androidx.appcompat.widget.s
    public void c() {
        u();
        this.f572h.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.s
    public boolean d() {
        u();
        return this.f572h.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f573i != null) {
            int bottom = this.f571f.getVisibility() == 0 ? (int) (this.f571f.getBottom() + this.f571f.getTranslationY() + 0.5f) : 0;
            this.f573i.setBounds(0, bottom, getWidth(), this.f573i.getIntrinsicHeight() + bottom);
            this.f573i.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.s
    public boolean e() {
        u();
        return this.f572h.e();
    }

    @Override // androidx.appcompat.widget.s
    public boolean f() {
        u();
        return this.f572h.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.s
    public boolean g() {
        u();
        return this.f572h.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f571f;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.H.a();
    }

    public CharSequence getTitle() {
        u();
        return this.f572h.getTitle();
    }

    @Override // androidx.appcompat.widget.s
    public void h(int i10) {
        u();
        if (i10 == 2) {
            this.f572h.u();
        } else if (i10 == 5) {
            this.f572h.v();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.s
    public void i() {
        u();
        this.f572h.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        u();
        a1 a1VarZ = a1.z(windowInsets, this);
        boolean zK = k(this.f571f, new Rect(a1VarZ.k(), a1VarZ.m(), a1VarZ.l(), a1VarZ.j()), true, true, false, true);
        androidx.core.view.m0.e(this, a1VarZ, this.f580p);
        Rect rect = this.f580p;
        a1 a1VarO = a1VarZ.o(rect.left, rect.top, rect.right, rect.bottom);
        this.f588x = a1VarO;
        boolean z10 = true;
        if (!this.f589y.equals(a1VarO)) {
            this.f589y = this.f588x;
            zK = true;
        }
        if (this.f581q.equals(this.f580p)) {
            z10 = zK;
        } else {
            this.f581q.set(this.f580p);
        }
        if (z10) {
            requestLayout();
        }
        return a1VarZ.a().c().b().x();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        q(getContext());
        androidx.core.view.m0.f0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        p();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredHeight;
        u();
        measureChildWithMargins(this.f571f, i10, 0, i11, 0);
        e eVar = (e) this.f571f.getLayoutParams();
        int iMax = Math.max(0, this.f571f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f571f.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f571f.getMeasuredState());
        boolean z10 = (androidx.core.view.m0.H(this) & COUIToolTips.ALIGN_TOP) != 0;
        if (z10) {
            measuredHeight = this.f568a;
            if (this.f575k && this.f571f.getTabContainer() != null) {
                measuredHeight += this.f568a;
            }
        } else {
            measuredHeight = this.f571f.getVisibility() != 8 ? this.f571f.getMeasuredHeight() : 0;
        }
        this.f582r.set(this.f580p);
        this.f590z = this.f588x;
        if (this.f574j || z10 || !l()) {
            this.f590z = new a1.a(this.f590z).c(u.e.c(this.f590z.k(), this.f590z.m() + measuredHeight, this.f590z.l(), this.f590z.j())).a();
        } else {
            Rect rect = this.f582r;
            rect.top += measuredHeight;
            rect.bottom = rect.bottom;
            this.f590z = this.f590z.o(0, measuredHeight, 0, 0);
        }
        k(this.f570c, this.f582r, true, true, true, true);
        if (!this.A.equals(this.f590z)) {
            a1 a1Var = this.f590z;
            this.A = a1Var;
            androidx.core.view.m0.f(this.f570c, a1Var);
        }
        measureChildWithMargins(this.f570c, i10, 0, i11, 0);
        e eVar2 = (e) this.f570c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f570c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f570c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f570c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!this.f576l || !z10) {
            return false;
        }
        if (w(f11)) {
            j();
        } else {
            v();
        }
        this.f577m = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // androidx.core.view.y
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        onNestedScroll(view, i10, i11, i12, i13, i14);
    }

    @Override // androidx.core.view.x
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // androidx.core.view.x
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // androidx.core.view.x
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i10) {
        super.onWindowSystemUiVisibilityChanged(i10);
        u();
        int i11 = this.f579o ^ i10;
        this.f579o = i10;
        boolean z10 = (i10 & 4) == 0;
        boolean z11 = (i10 & COUIToolTips.ALIGN_TOP) != 0;
        d dVar = this.B;
        if (dVar != null) {
            dVar.e(!z11);
            if (z10 || !z11) {
                this.B.a();
            } else {
                this.B.f();
            }
        }
        if ((i11 & COUIToolTips.ALIGN_TOP) == 0 || this.B == null) {
            return;
        }
        androidx.core.view.m0.f0(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f569b = i10;
        d dVar = this.B;
        if (dVar != null) {
            dVar.c(i10);
        }
    }

    void p() {
        removeCallbacks(this.F);
        removeCallbacks(this.G);
        ViewPropertyAnimator viewPropertyAnimator = this.D;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean r() {
        return this.f574j;
    }

    public void setActionBarHideOffset(int i10) {
        p();
        this.f571f.setTranslationY(-Math.max(0, Math.min(i10, this.f571f.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.B = dVar;
        if (getWindowToken() != null) {
            this.B.c(this.f569b);
            int i10 = this.f579o;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                androidx.core.view.m0.f0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f575k = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f576l) {
            this.f576l = z10;
            if (z10) {
                return;
            }
            p();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        u();
        this.f572h.setIcon(i10);
    }

    public void setLogo(int i10) {
        u();
        this.f572h.r(i10);
    }

    public void setOverlayMode(boolean z10) {
        this.f574j = z10;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // androidx.appcompat.widget.s
    public void setWindowCallback(Window.Callback callback) {
        u();
        this.f572h.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.s
    public void setWindowTitle(CharSequence charSequence) {
        u();
        this.f572h.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    void u() {
        if (this.f570c == null) {
            this.f570c = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.f571f = (ActionBarContainer) findViewById(R$id.action_bar_container);
            this.f572h = o(findViewById(R$id.action_bar));
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f569b = 0;
        this.f580p = new Rect();
        this.f581q = new Rect();
        this.f582r = new Rect();
        this.f583s = new Rect();
        this.f584t = new Rect();
        this.f585u = new Rect();
        this.f586v = new Rect();
        this.f587w = new Rect();
        a1 a1Var = a1.f2009b;
        this.f588x = a1Var;
        this.f589y = a1Var;
        this.f590z = a1Var;
        this.A = a1Var;
        this.E = new a();
        this.F = new b();
        this.G = new c();
        q(context);
        this.H = new androidx.core.view.z(this);
        f fVar = new f(context);
        this.I = fVar;
        addView(fVar);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    @Override // androidx.core.view.x
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // androidx.core.view.x
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.H.b(view, view2, i10);
        this.f578n = getActionBarHideOffset();
        p();
        d dVar = this.B;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f571f.getVisibility() != 0) {
            return false;
        }
        return this.f576l;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.f576l && !this.f577m) {
            if (this.f578n <= this.f571f.getHeight()) {
                t();
            } else {
                s();
            }
        }
        d dVar = this.B;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f578n + i11;
        this.f578n = i14;
        setActionBarHideOffset(i14);
    }

    public void setIcon(Drawable drawable) {
        u();
        this.f572h.setIcon(drawable);
    }
}
